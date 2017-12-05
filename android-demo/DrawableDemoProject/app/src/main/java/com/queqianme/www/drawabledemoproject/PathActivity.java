package com.queqianme.www.drawabledemoproject;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

/**
 * Created by liupuyan on 2017/12/1.
 *
 * Path(路径)
 * 描点，连线创建好我们的Path路径后，可以调用Canvas的drawPath(path,paint) 将图形绘制出来
 *

     addArc(RectF oval, float startAngle, float sweepAngle)：为路径添加一个多边形
     addCircle(float x, float y, float radius, Path.Direction dir)：给path添加圆圈
     addOval(RectF oval, Path.Direction dir)：添加椭圆形
     addRect(RectF rect, Path.Direction dir)：添加一个区域
     addRoundRect(RectF rect, float[] radii, Path.Direction dir)：添加一个圆角区域
     isEmpty()：判断路径是否为空
     transform(Matrix matrix)：应用矩阵变换
     transform(Matrix matrix, Path dst)：应用矩阵变换并将结果放到新的路径中，即第二个参数

 更高级的效果可以使用PathEffect类
     moveTo(float x, float y)：不会进行绘制，只用于移动移动画笔
     lineTo(float x, float y)：用于直线绘制，默认从(0，0)开始绘制，用moveTo移动！
        比如 mPath.lineTo(300, 300); canvas.drawPath(mPath, mPaint);
     quadTo(float x1, float y1, float x2, float y2)： 用于绘制圆滑曲线，即贝塞尔曲线，同样可以结合moveTo使用！
     rCubicTo(float x1, float y1, float x2, float y2, float x3, float y3)
        同样是用来实现贝塞尔曲线的。
         (x1,y1) 为控制点，
         (x2,y2)为控制点，
         (x3,y3) 为结束点。
         Same as cubicTo, but the coordinates are considered relative to the current point on this contour.
         就是多一个控制点而已~ 绘制上述的曲线：
         mPath.moveTo(100, 500);
         mPath.cubicTo(100, 500, 300, 100, 600, 500);
         如果不加上面的那个moveTo的话：则以(0,0)为起点，(100,500)和(300,100)为控制点绘制贝塞尔曲线
     arcTo(RectF oval, float startAngle, float sweepAngle)：
        绘制弧线（实际是截取圆或椭圆的一部分）ovalRectF为椭圆的矩形，startAngle 为开始角度， sweepAngle 为结束角度
 */
public class PathActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }
}