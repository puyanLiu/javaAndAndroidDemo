# Android

## 基础

### Dalvik VM和JVM的比较
* jvm
    编码后文件格式
    .java->.class->.jar
* dalvik vm
    编码后文件格式
    .java->.class->.dex->.apk

### Android的新虚拟机ART
* Dalvik：应用每次运行的时候，字节码都需要通过即时编译器转换为机器码，这会拖慢应用的运行效率
* ART：应用在第一次安装的时候，字节码就会预先编译成机器码，使其成为真正的本地应用，应用的启动和执行速度都会显著提升

### ADB
* ADB(android debug bridge)安卓调试桥
* ADB指令
    * adb install：安装指定apk
    * adb uninstall com.yingyonghui.market： 删除指定应用
    * adb start-server：开启adb进程
    * adb kill-server：杀死adb进程
    * adb devices：列出与开发环境建立连接的Android设备的列表
    * adb shell：进入Linux命令行
        * ls：列出当前目录结构
        * ps：列出当前设备的所有进程
    * netstat -ano：查看端口占用情况

### sdk
* 路径/Users/liupuyan/Library/Android/sdk 
* extras 
    * 支持类库 让低版本系统可以运行高版本的新特性
* platform-tools 
    * 平台工具集
* platforms
    * 支持的平台
* system-images
    * CPU系统镜像，下载该镜像才能创建该平台的模拟器
* emulator
    * 模拟器
* tools
    * SDK工具集
    
### 清单文件
* package：应用的包名，唯一标识
    * data/data/package(上面代码指定的包名)
    * 应用生成的文件都会存放在此路径下
* versionCode：版本号，系统看的
* versionName：版本名字，给人看的
* application：
    * icon：应用图标
    * label：应用标题
* activity：Activity的使用必须要在清单文件中配置
    * icon：Activity也可以配置icon，不配置默认使用application的

    * 以下标签用于配置入口Activity
    ```
    <intent-filter>
        <action android:name="android.intent.action.MAIN" />

        <category android:name="android.intent.category.LAUNCHER" />
    </intent-filter>
    ```

### 安装出现的问题
- unable to access Android SDK add-on list
    在 Android Studio 安装目录 bin/idea.properties 文件最后追加一句
    disable.android.first.run=true

## 数据存储

### SQLite数据库

* 轻量级关系型数据库
* 创建数据库需要使用的api：SQLiteOpenHelper
    * 必须定义一个构造方法：
```
//arg1:数据库文件的名字
//arg2:游标工厂
//arg3:数据库版本
public MyOpenHelper(Context context, String name, CursorFactory factory, int version){
}
```
    * 数据库被创建时会调用：onCreate方法
    * 数据库升级时会调用：onUpgrade方法
* getWritableDatabase()：打开可读写的数据库
* getReadableDatabase()：在磁盘空间不足时打开只读数据库，否则打开可读写数据库
* 在创建数据库时创建表
```
public void onCreate(SQLiteDatabase db) {
    // TODO Auto-generated method stub
    db.execSQL("create table person (_id integer primary key autoincrement, name char(10), phone char(20), money integer(20))");
}
```
* 执行SQL语句实现增删改查
```
//插入
db.execSQL("insert into person (name, phone, money) values (?, ?, ?);", new Object[]{"张三", 15987461, 75000});
//查找
Cursor cs = db.rawQuery("select _id, name, money from person where name = ?;", new String[]{"张三"});
```
* 使用api实现增删改查
```
* 插入
        //以键值对的形式保存要存入数据库的数据
        ContentValues cv = new ContentValues();
        cv.put("name", "刘能");
        cv.put("phone", 1651646);
        cv.put("money", 3500);
        //返回值是改行的主键，如果出错返回-1
        long i = db.insert("person", null, cv);
* 删除
        //返回值是删除的行数
        int i = db.delete("person", "_id = ? and name = ?", new String[]{"1", "张三"});
* 修改
        ContentValues cv = new ContentValues();
        cv.put("money", 25000);
        int i = db.update("person", cv, "name = ?", new String[]{"赵四"});
* 查询
        //arg1:要查询的字段
        //arg2：查询条件
        //arg3:填充查询条件的占位符
        Cursor cs = db.query("person", new String[]{"name", "money"}, "name = ?", new String[]{"张三"}, null, null, null);
        while(cs.moveToNext()){
            //                          获取指定列的索引值
            String name = cs.getString(cs.getColumnIndex("name"));
            String money = cs.getString(cs.getColumnIndex("money"));
            System.out.println(name + ";" + money);
        }
```
* 事务
```
try {
    //开启事务
    db.beginTransaction();
    ...........
    //设置事务执行成功
    db.setTransactionSuccessful();
} finally{
    //关闭事务
    //如果此时已经设置事务执行成功，则sql语句生效，否则不生效
    db.endTransaction();
}
```

### SharedPreferences
* 往SharedPreference里写数据

```
//拿到一个SharedPreference对象
SharedPreferences sp = getSharedPreferences("config", MODE_PRIVATE);
//拿到编辑器
Editor ed = sp.edit();
//写数据
ed.putBoolean("name", name);
ed.commit();
```

* 从SharedPreference里取数据

```
SharedPreferences sp = getSharedPreferences("config", MODE_PRIVATE);
//从SharedPreference里取数据
String name = sp.getBoolean("name", "");
```

### XML

* 生成XML文件

```
* 把整个xml文件所有节点append到sb对象里
        sb.append("<?xml version='1.0' encoding='utf-8' standalone='yes' ?>");
        //添加smss的开始节点
        sb.append("<smss>");
        .......
* 把sb写到输出流中
        fos.write(sb.toString().getBytes());
```

* 使用XML序列化器生成xml文件（Pull解析xml文件）

```
* 得到xml序列化器对象
        XmlSerializer xs = Xml.newSerializer();
* 给序列化器设置输出流
        File file = new File(Environment.getExternalStorageDirectory(), "backupsms.xml");
        FileOutputStream fos = new FileOutputStream(file);
        //给序列化器指定好输出流
        xs.setOutput(fos, "utf-8");
* 开始生成xml文件
        xs.startDocument("utf-8", true);
        xs.startTag(null, "smss");
        ......
```

##### 开始解析

* 拿到指针所在当前节点的事件类型
    int type = xp.getEventType();
* 事件类型主要有五种
    * START_DOCUMENT：xml头的事件类型
    * END_DOCUMENT：xml尾的事件类型
    * START_TAG：开始节点的事件类型
    * END_TAG：结束节点的事件类型
    * TEXT：文本节点的事件类型
* 如果获取到的事件类型不是END_DOCUMENT，就说明解析还没有完成，如果是，解析完成，while循环结束
    while(type != XmlPullParser.END_DOCUMENT)
* 当我们解析到不同节点时，需要进行不同的操作，所以判断一下当前节点的name
```
case XmlPullParser.START_TAG:
//获取当前节点的名字
if("weather".equals(xp.getName())){
   // 开始解析 创建集合
}
else if("city".equals(xp.getName())){
    // 创建对象
}
else if("name".equals(xp.getName())){
    //获取当前节点的下一个节点的文本
}
break;
```

* 当解析到city的结束节点时，说明city的三个子节点已经全部解析完了，把city对象添加至list
```
case XmlPullParser.END_TAG:
if("city".equals(xp.getName())){
    // 节点解析结束
}
```

## 点击事件的四种写法
### 第一种
* 定义一个MyListener实现onClickListener接口

```
Button bt1 = (Button) findViewById(R.id.bt1);
bt1.setOnClickListener(new MyListener());
```

### 第二种
* 定义一个匿名内部类实现onClickListener接口

```
Button bt2 = (Button) findViewById(R.id.bt2);
bt2.setOnClickListener(new OnClickListener() {
    
    @Override
    public void onClick(View v) {
        System.out.println("第二种");
        
    }
});
```

### 第三种
* 让当前activity实现onClickListener接口

```
Button bt3 = (Button) findViewById(R.id.bt3);
bt3.setOnClickListener(this);
```

### 第四种
* 给Button节点设置onClick属性，android:onClick="click"
* 然后在activity中定义跟该属性值同名的方法

```
public void click(View v){
    System.out.println("第四种");
}
```

## 布局
### 相对布局RelativeLayout
* 组件默认左对齐、顶部对齐
* 设置组件在指定组件的右边
         android:layout_toRightOf="@id/tv1"
* 设置在指定组件的下边
        android:layout_below="@id/tv1"
* 设置右对齐父元素
        android:layout_alignParentRight="true"
* 设置与指定组件右对齐
         android:layout_alignRight="@id/tv1"

### 线性布局LinearLayout
* 指定各个节点的排列方向
        android:orientation="horizontal"
* 设置右对齐
        android:layout_gravity="right"
* 当竖直布局时，只能左右对齐和水平居中，顶部底部对齐竖直居中无效
* 当水平布局时，只能顶部底部对齐和竖直居中
* 使用match_parent时注意不要把其他组件顶出去
* 线性布局非常重要的一个属性：权重
        android:layout_weight="1"
* 权重：按比例分配屏幕的剩余宽度或者高度

### 帧布局FrameLayout
* 默认组件都是左对齐和顶部对齐，每个组件相当于一个div
* 可以设置上下左右对齐，水平竖直居中，设置方式与线性布局一样
        android:layout_gravity="bottom"
* 不能相对于其他组件布局

### 表格布局TableLayout
* 每个<TableRow/>节点是一行，它的每个子节点是一列
* 表格布局中的节点可以不设置宽高，因为设置了也无效
    * 根节点<TableLayout/>的子节点宽为匹配父元素，高为包裹内容
    * <TableRow/>节点的子节点宽为包裹内容，高为包裹内容
    * 以上默认属性无法修改
* 根节点中可以设置以下属性，表示让第1列拉伸填满屏幕宽度的剩余空间
        android:stretchColumns="1"

### 绝对布局AbsoluteLayout
* 直接指定组件的x、y坐标
        android:layout_x="144dp"
        android:layout_y="154dp"

## logcat
* 日志信息总共分为5个等级
    * verbose
    * debug
    * info
    * warn
    * error
* 定义过滤器方便查看
* System.out.print输出的日志级别是info，tag是System.out
* Android提供的日志输出api
    Log.v(TAG, "嘿哈");
    Log.d(TAG, "嘿哈");
    Log.i(TAG, "嘿哈");
    Log.w(TAG, "嘿哈");
    Log.e(TAG, "嘿哈");

## 测试
* 黑盒测试
    * 测试逻辑业务
* 白盒测试
    * 测试逻辑方法

* 根据测试粒度
    * 方法测试：function test
    * 单元测试：unit test
    * 集成测试：integration test
    * 系统测试：system test

* 根据测试暴力程度
    * 冒烟测试：smoke test
    * 压力测试：pressure test

## listview
* 用于显示列表

### BaseAdapter
* 必须实现的两个方法
    * 第一个
```
//系统调用此方法，用来获知模型层有多少条数据
@Override
public int getCount() {
    return people.size();
}
```
    * 第二个
```
//系统调用此方法，获取要显示至ListView的View对象
//position:是return的View对象所对应的数据在集合中的位置
@Override
public View getView(int position, View convertView, ViewGroup parent) {
    System.out.println("getView方法调用" + position);
    TextView tv = new TextView(MainActivity.this);
    //拿到集合中的元素
    Person p = people.get(position);
    tv.setText(p.toString());
    
    //把TextView的对象返回出去，它会变成ListView的条目
    return tv;
}
```
* 屏幕上能显示多少个条目，getView方法就会被调用多少次，屏幕向下滑动时，getView会继续被调用，创建更多的View对象显示至屏幕

### 条目的缓存
* 当条目划出屏幕时，系统会把该条目缓存至内存，当该条目再次进入屏幕，系统在重新调用getView时会把缓存的条目作为convertView参数传入，但是传入的条目不一定是之前被缓存的该条目，即系统有可能在调用getView方法获取第一个条目时，传入任意一个条目的缓存

### ArrayAdapter
* 在条目中显示一个字符串
```
String[] objects = new String[]{
        "张三",
        "李四",
        "王五"
};

ListView lv = (ListView) findViewById(R.id.lv);
//arg1：指定要填充的布局文件
//arg2：指定文本显示至哪一个文本框内
lv.setAdapter(new ArrayAdapter<String>(this, R.layout.item_array, R.id.tv_name, objects));
```

### SimpleAdapter
* 可在条目中显示多种数据
* 要显示的数据封装在List中，集合的每一个元素存放的是一个条目会显示的数据，因为可能会有多种数据，而集合的泛型只能指定一种数据，所以把数据先存放在Map中，在把Map放入List中
```
List<Map<String, Object>> data = new ArrayList<Map<String,Object>>();
         
//张三的头像和名字是两种类型的数据，先封装至Map
Map<String, Object> map1 = new HashMap<String, Object>();
map1.put("name", "张三");
map1.put("image", R.drawable.photo1);
//把Map封装至List
data.add(map1);
...
```

* 通过两个数组的下标对应指定数据存放入对应的控件中
```
lv.setAdapter(new SimpleAdapter(this, data, R.layout.item_array, 
                new String[]{"name", "image"}, new int[]{R.id.tv_name, R.id.iv_photo}));
```