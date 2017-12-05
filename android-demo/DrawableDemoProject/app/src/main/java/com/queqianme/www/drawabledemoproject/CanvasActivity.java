package com.queqianme.www.drawabledemoproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by liupuyan on 2017/12/1.
 *
 * Canvas(画布)
     构造方法，Canvas的构造方法有两种：
     Canvas(): 创建一个空的画布，可以使用setBitmap()方法来设置绘制具体的画布。
     Canvas(Bitmap bitmap): 以bitmap对象创建一个画布，将内容都绘制在bitmap上，因此bitmap不得为null

 1.drawXXX()方法族：以一定的坐标值在当前画图区域画图，另外图层会叠加， 即后面绘画的图层会覆盖前面绘画的图层。 比如：
     drawRect(RectF rect, Paint paint) ：绘制区域，参数一为RectF一个区域
     drawPath(Path path, Paint paint) ：绘制一个路径，参数一为Path路径对象
     drawBitmap(Bitmap bitmap, Rect src, Rect dst, Paint paint) ： 贴图，
        参数一就是我们常规的Bitmap对象，
        参数二是源区域(这里是bitmap)，
        参数三是目标区域(应该在canvas的位置和大小)，
        参数四是Paint画刷对象， 因为用到了缩放和拉伸的可能，当原始Rect不等于目标Rect时性能将会有大幅损失。
     drawLine(float startX, float startY, float stopX, float stopY, Paintpaint) ： 画线，
         参数一起始点的x轴位置，
         参数二起始点的y轴位置，
         参数三终点的x轴水平位置， 参
         数四y轴垂直位置，
         最后一个参数为Paint 画刷对象。
     drawPoint(float x, float y, Paint paint)： 画点，参数一水平x轴，参数二垂直y轴，第三个参数为Paint对象。
     drawText(String text, float x, floaty, Paint paint) ： 渲染文本，Canvas类除了上面的还可以描绘文字，参数一是String类型的文本， 参数二x轴，参数三y轴，参数四是Paint对象。
     drawOval(RectF oval, Paint paint)：画椭圆，参数一是扫描区域，参数二为paint对象；
     drawCircle(float cx, float cy, float radius,Paint paint)： 绘制圆，参数一是中心点的x轴，参数二是中心点的y轴，参数三是半径，参数四是paint对象；
     drawArc(RectF oval, float startAngle, float sweepAngle, boolean useCenter, Paint paint)： 画弧，
         参数一是RectF对象，一个矩形区域椭圆形的界限用于定义在形状、大小、电弧，
         参数二是起始角 (度)在电弧的开始，
         参数三扫描角(度)开始顺时针测量的，
         参数四是如果这是真的话,包括椭圆中心的电 弧,并关闭它,如果它是假这将是一个弧线,参数五是Paint对象；

 2.clipXXX()方法族:在当前的画图区域裁剪(clip)出一个新的画图区域，这个画图区域就是canvas 对象的当前画图区域了。
    比如：clipRect(new Rect())，那么该矩形区域就是canvas的当前画图区域

 3.save()和restore()方法：
     save( )：用来保存Canvas的状态。save之后，可以调用Canvas的平移、放缩、旋转、错切、裁剪等操作！
     restore（）：用来恢复Canvas之前保存的状态。防止save后对Canvas执行的操作对后续的绘制有影响。
     save()和restore()要配对使用(restore可以比save少,但不能多)，若restore调用次数比save多,会报错！

 4.translate(float dx, float dy)： 平移，将画布的坐标原点向左右方向移动x，向上下方向移动y.canvas的默认位置是在（0,0）

 5.scale(float sx, float sy)：扩大，x为水平方向的放大倍数，y为竖直方向的放大倍数

 6.rotate(float degrees)：旋转，angle指旋转的角度，顺时针旋转

 */
public class CanvasActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }
}