package com.queqianme.www.drawabledemoproject;

import android.Manifest;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;

import pub.devrel.easypermissions.AppSettingsDialog;
import pub.devrel.easypermissions.EasyPermissions;

/**
 * Created by liupuyan on 2017/12/1.
 *
 * Drawable：通用的图形对象，用于装载常用格式的图像，既可以是PNG，JPG这样的图像， 也是前面学的那13种Drawable类型的可视化对象！我们可以理解成一个用来放画的——画框！
 * Bitmap(位图)：我们可以把他看作一个画架，我们先把画放到上面，然后我们可以 进行一些处理，比如获取图像文件信息，做旋转切割，放大缩小等操作！
 * Canvas(画布)：如其名，画布，我们可以在上面作画(绘制)，你既可以用Paint(画笔)， 来画各种形状或者写字，又可以用Path(路径)来绘制多个点，然后连接成各种图形！
 * Matrix(矩阵)：用于图形特效处理的，颜色矩阵(ColorMatrix)，还有使用Matrix进行图像的 平移，缩放，旋转，倾斜等！
 *
 *
 * Bitmap常用方法
    普通方法
         public boolean compress (Bitmap.CompressFormat format, int quality, OutputStream stream) 将位图的压缩到指定的OutputStream，可以理解成将Bitmap保存到文件中！
         format：格式，PNG，JPG等； quality：压缩质量，0-100，0表示最低画质压缩，100最大质量(PNG无损，会忽略品质设定) stream：输出流 返回值代表是否成功压缩到指定流！
         void recycle()：回收位图占用的内存空间，把位图标记为Dead
         boolean isRecycled()：判断位图内存是否已释放
         int getWidth()：获取位图的宽度
         int getHeight()：获取位图的高度
         boolean isMutable()：图片是否可修改
         int getScaledWidth(Canvas canvas)：获取指定密度转换后的图像的宽度
         int getScaledHeight(Canvas canvas)：获取指定密度转换后的图像的高度
    静态方法：
         Bitmap createBitmap(Bitmap src)：以src为原图生成不可变得新图像
         Bitmap createScaledBitmap(Bitmap src, int dstWidth,int dstHeight, boolean filter)：以src为原图，创建新的图像，指定新图像的高宽以及是否变。
         Bitmap createBitmap(int width, int height, Config config)：创建指定格式、大小的位图
         Bitmap createBitmap(Bitmap source, int x, int y, int width, int height)以source为原图，创建新的图片，指定起始坐标以及新图像的高宽。
         public static Bitmap createBitmap(Bitmap source, int x, int y, int width, int height, Matrix m, boolean filter)

 BitmapFactory.Option可设置参数
     boolean inJustDecodeBounds——如果设置为true，不获取图片，不分配内存，但会返回图片的高宽度信息。
     int inSampleSize——图片缩放的倍数。如果设为4，则宽和高都为原来的1/4，则图是原来的1/16。
     int outWidth——获取图片的宽度值
     int outHeight——获取图片的高度值
     int inDensity——用于位图的像素压缩比
     int inTargetDensity——用于目标位图的像素压缩比（要生成的位图）
     boolean inScaled——设置为true时进行图片压缩，从inDensity到inTargetDensity
 */
public class BitmapActivity extends AppCompatActivity implements EasyPermissions.PermissionCallbacks {

    private static final String TAG = "BitmapActivity";
    private static final int REQUEST_CODE_SAVE_IMG = 10;
    private Context mContext;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        setContentView(R.layout.activity_bitmap);
        mContext = this;
        bitmapDrawable();
        bitmapFactory();
        bitmapClip();
        bitmapScale();
        bitmapcut();
    }

    // 从资源中获取位图的两种方式 方式一BitmapDrawable
    public void bitmapDrawable() {
        ImageView img_bitmap_drawable = (ImageView) findViewById(R.id.img_bitmap_drawable);
        Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.mipmap.launch_1);
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        img_bitmap_drawable.setImageDrawable(bitmapDrawable);
    }

    // 从资源中获取位图的两种方式 方式二BitmapFactory
    public void bitmapFactory() {
        ImageView img_bitmap_factory = (ImageView) findViewById(R.id.img_bitmap_factory);
        // 通过资源ID
        Bitmap bitmap = BitmapFactory.decodeResource(getResources(), R.mipmap.launch_1);
        img_bitmap_factory.setImageBitmap(bitmap);
    }

    // 抠图片上的某一角下来
    public void bitmapClip() {
        ImageView img_bitmap_factory = (ImageView) findViewById(R.id.img_bitmap_factory);
        // 通过资源ID
        Bitmap bitmap1 = BitmapFactory.decodeResource(getResources(), R.mipmap.launch_1);
        // 图片截取
        Bitmap bitmap2 = Bitmap.createBitmap(bitmap1, 100, 100, 100, 100);
        img_bitmap_factory.setImageBitmap(bitmap2);
    }

    // Bitmap缩放
    public void bitmapScale() {
        ImageView img_bitmap_scale = (ImageView) findViewById(R.id.img_bitmap_scale);
        // 通过资源ID
        Bitmap bitmap1 = BitmapFactory.decodeResource(getResources(), R.mipmap.launch_1);
        Bitmap bitmap2 = Bitmap.createScaledBitmap(bitmap1, 100, 100, false);
        img_bitmap_scale.setImageBitmap(bitmap2);
    }

    // ---------------------------------------------------------------------------------------------------------------------------
    // 截屏
    public void bitmapcut() {
        Button btn_cut = (Button) findViewById(R.id.btn_cut);
        btn_cut.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                requestPermission();
            }
        });
    }

    /**
     * 请求读取sd卡的权限
     */
    private void requestPermission() {
        if (Build.VERSION.SDK_INT >= 23) {
            //读取sd卡的权限
            String[] mPermissionList = new String[]{Manifest.permission.READ_EXTERNAL_STORAGE, Manifest.permission.WRITE_EXTERNAL_STORAGE};
            if (EasyPermissions.hasPermissions(mContext, mPermissionList)) {
                //已经同意过
                captureScreen();
            } else {
                //未同意过,或者说是拒绝了，再次申请权限
                EasyPermissions.requestPermissions(
                        this,  //上下文
                        "保存图片需要读取sd卡的权限", //提示文言
                        REQUEST_CODE_SAVE_IMG, //请求码
                        mPermissionList //权限列表
                );
            }
        } else {
            captureScreen();
        }
    }

    private void captureScreen() {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                // 获取当前XML根节点的View
                View contentView = getWindow().getDecorView();
                // 设置截屏的大小
                Bitmap bitmap = Bitmap.createBitmap(contentView.getWidth(), contentView.getHeight(), Bitmap.Config.ARGB_4444);
                contentView.draw(new Canvas(bitmap));
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.JPEG, 100, byteArrayOutputStream);
                saveImage(bitmap);
                try {
                    if (null != byteArrayOutputStream)
                        byteArrayOutputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
                if (null != bitmap && !bitmap.isRecycled()) {
                    bitmap.recycle();
                    bitmap = null;
                }
            }
        };

        runnable.run();
    }

    //保存图片
    private void saveImage(Bitmap bitmap) {
        boolean isSaveSuccess = ImgUtils.saveImageToGallery(mContext, bitmap);
        if (isSaveSuccess) {
            Toast.makeText(mContext, "保存图片成功", Toast.LENGTH_SHORT).show();
        } else {
            Toast.makeText(mContext, "保存图片失败，请稍后重试", Toast.LENGTH_SHORT).show();
        }
    }

    //授权结果，分发下去
    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        // Forward results to EasyPermissions
        //跳转到onPermissionsGranted或者onPermissionsDenied去回调授权结果
        EasyPermissions.onRequestPermissionsResult(requestCode, permissions, grantResults, this);
    }

    //同意授权
    @Override
    public void onPermissionsGranted(int requestCode, List<String> list) {
        Log.i(TAG, "onPermissionsGranted:" + requestCode + ":" + list.size());
        captureScreen();
    }

    //拒绝授权
    @Override
    public void onPermissionsDenied(int requestCode, List<String> perms) {
        Log.i(TAG, "onPermissionsDenied:" + requestCode + ":" + perms.size());
        if (EasyPermissions.somePermissionPermanentlyDenied(this, perms)) {
            //打开系统设置，手动授权
            new AppSettingsDialog.Builder(this).build().show();
        }
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == AppSettingsDialog.DEFAULT_SETTINGS_REQ_CODE) {
            //拒绝授权后，从系统设置了授权后，返回APP进行相应的操作
            Log.i(TAG, "onPermissionsDenied:------>自定义设置授权后返回APP");
            captureScreen();
        }
    }
    // ---------------------------------------------------------------------------------------------------------------------------
}