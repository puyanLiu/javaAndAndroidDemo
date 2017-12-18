package com.example.liupuyan.a07_uidemo;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

/**
 * Created by liupuyan on 2017/12/18.
 *
 * LayoutInflater(布局服务)
 * 一个用于加载布局的系统服务，就是实例化与Layout XML文件对应的View对象，不能直接使用，
 * 需要通过getLayoutInflater( )方法或getSystemService( )方法来获得与当前Context绑定的 LayoutInflater实例
 */
public class LayoutInflatorActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        // 底层LayoutInflater，用的Android内置的Pull解析器来解析布局
        setContentView(R.layout.activity_layout_inflater);

//        layoutDemo1();

//        layoutDemo2();

//        layoutDemo3();

//        layoutDemo4();

        layoutDemo5();
    }

    /**
     * 动态加载xml布局
     */
    private void layoutDemo5() {
        // 获得布局对象
        final LayoutInflater inflater = LayoutInflater.from(this);
        // 获得外部容器对象
        final RelativeLayout rl = (RelativeLayout) findViewById(R.id.rl_container);
        Button btn_reload = (Button)findViewById(R.id.btn_reload);
        btn_reload.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                // 加载要添加的布局对象
                LinearLayout ly = inflater.inflate(R.layout.activity_inflate, null, false).findViewById(R.id.ly_inflate);
                // 设置加载布局的大小与位置
                RelativeLayout.LayoutParams rlp = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
                rlp.addRule(RelativeLayout.CENTER_IN_PARENT);
                rl.addView(ly, rlp);
            }
        });
    }


    /**
     * 动态添加控件
     *
     * 先加载setContentView()布局文件
     */
    private void layoutDemo4() {
        Button btnOne = new Button(this);
        btnOne.setText("我是动态添加的按钮");
        RelativeLayout.LayoutParams rlp1 = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp1.addRule(RelativeLayout.CENTER_IN_PARENT);
        RelativeLayout rl = (RelativeLayout) findViewById(R.id.rl_container);
        rl.addView(btnOne, rlp1);
    }

    /**
     * 动态添加控件
     *
     * 不先加载setContentView()布局文件
     */
    private void layoutDemo3() {
        Button btnOne = new Button(this);
        btnOne.setText("我是动态添加的按钮");
        RelativeLayout.LayoutParams rlp1 = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp1.addRule(RelativeLayout.CENTER_IN_PARENT);
        LayoutInflater inflater = LayoutInflater.from(this);
        RelativeLayout rl = (RelativeLayout) inflater.inflate(R.layout.activity_layout_inflater, null);
        rl.addView(btnOne, rlp1);
        setContentView(rl);
    }

    private void layoutDemo2() {

        RelativeLayout rl = new RelativeLayout(this);
        Button btnOne = new Button(this);
        btnOne.setText("按钮1");
        Button btnTwo = new Button(this);
        btnTwo.setText("按钮2");
        // 参考其他组件就，要手动设置id
        // 为按钮1设置一个id值
        btnOne.setId(123);
        // 设置按钮1的位置，在父容器居中
        RelativeLayout.LayoutParams rlp1 = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp1.addRule(RelativeLayout.CENTER_IN_PARENT);
        // 设置按钮2的位置，在按钮1的下方，并且对齐父容易右面
        RelativeLayout.LayoutParams rlp2 = new RelativeLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        rlp2.addRule(RelativeLayout.ALIGN_PARENT_RIGHT);
        rlp2.addRule(RelativeLayout.BELOW, 123);

        // 将组件添加到外部容易中
        rl.addView(btnOne, rlp1);
        rl.addView(btnTwo, rlp2);

        // 加载布局对象
        setContentView(rl);
    }

    /**
     * 纯Java代码加载布局
     */
    private void layoutDemo1() {
        // 1、创建容器
        LinearLayout ll = new LinearLayout(this);
        // 创建组件
        Button btnOne = new Button(this);

        // 2、为容器或者组件设置相关属性
        ll.setOrientation(LinearLayout.VERTICAL);
        btnOne.setText("按钮啦啦啦啦");

        // 3、将组件或容器添加到容器中
        // 设置组件的添加位置、大小 LayoutParams 布局容器的一个信息包，封装位置与大小 等信息的一个类
        LinearLayout.LayoutParams lp1 = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.WRAP_CONTENT);
        // 设置位置通常用于RelativeLayout容器

        ll.addView(btnOne, lp1);

        setContentView(ll);
    }

    /**
     * 布局服务
     */
    private void inflaterDemo() {

        // LayoutInflater用法

        // 1、获取LayoutInflater实例的三种方法
        LayoutInflater inflater1 = LayoutInflater.from(this);
        LayoutInflater inflater2 = getLayoutInflater();
        LayoutInflater inflater3 = (LayoutInflater)getSystemService(LAYOUT_INFLATER_SERVICE);

        // 2、加载布局的方法
        // public View inflate (int resource, ViewGroup root, boolean attachToRoot)
        // 参数1----要加载的布局对应的资源id
        // 参数2----为该布局的外部再嵌套一层父布局，如果不需要的话，写null就可以了
        // 参数3----是否为加载的布局文件的最外层套一层root布局，不设置该参数的话， 如果root不为null的话，则默认为true 如果root为null的话，attachToRoot就没有作用了!
        // root不为null，attachToRoot为true的话，会在加载的布局文件最外层嵌套一层root布局; 为false的话，则root失去作用! 简单理解就是：是否为加载的布局添加一个root的外层容器

        // 3、通过LayoutInflater.LayoutParams来设置相关的属性
    }
}