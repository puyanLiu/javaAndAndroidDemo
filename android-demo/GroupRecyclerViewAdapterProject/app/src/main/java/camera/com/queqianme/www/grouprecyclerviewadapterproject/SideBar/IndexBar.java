package camera.com.queqianme.www.grouprecyclerviewadapterproject.SideBar;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;

import java.util.Arrays;
import java.util.List;

import camera.com.queqianme.www.grouprecyclerviewadapterproject.R;

/**
 * Created by liupuyan on 2018/3/8.
 */

public class IndexBar extends View {

    private int mPressedBackground;
    private Paint mPaint;
    public static String[] INDEX_STRING = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K"};
    private List<String> mIndexDatas; // 索引数据源
    private int mGapHeight; // 每个index区域的高度
    private int mWidth;
    private int mHeight;
    private OnIndexPressedListener mOnIndexPressedListener;

    public IndexBar(Context context) {
        this(context, null);
    }

    public IndexBar(Context context, @Nullable AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IndexBar(Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    @TargetApi(Build.VERSION_CODES.LOLLIPOP)
    public IndexBar(Context context, @Nullable AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        initView(context, attrs, defStyleAttr);
    }

    private void initView(Context context, AttributeSet attrs, int defStyleAttr) {
        int textSize = (int) TypedValue.applyDimension(TypedValue.COMPLEX_UNIT_SP, 16, getResources().getDisplayMetrics());
        mPressedBackground = Color.BLACK; // 默认按下时纯黑色
        TypedArray typedArray = context.getTheme().obtainStyledAttributes(attrs, R.styleable.IndexBar, defStyleAttr, 0);
        int n = typedArray.getIndexCount();
        for (int i = 0; i < n; i++) {
            int attr = typedArray.getIndex(i);
            switch (attr) {
                case R.styleable.IndexBar_textSize:
                        textSize = typedArray.getDimensionPixelSize(attr, textSize);
                    break;
                case R.styleable.IndexBar_pressBackground:
                    mPressedBackground = typedArray.getColor(attr, mPressedBackground);
                    break;
            }
        }
        typedArray.recycle();

        mIndexDatas = Arrays.asList(INDEX_STRING); // 数据源

        mPaint = new Paint();
        mPaint.setDither(true);
        mPaint.setAntiAlias(true);
        mPaint.setColor(Color.GRAY);
        mPaint.setTextSize(35);
    }

    /**
     * 遍历mIndexDatas，获得最大宽度和高度
     * @param widthMeasureSpec
     * @param heightMeasureSpec
     */
    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        // 取出宽高的MeasureSpec Mode 和 Size
        int wMode = MeasureSpec.getMode(widthMeasureSpec);
        int wSize = MeasureSpec.getSize(widthMeasureSpec);
        int hMode = MeasureSpec.getMode(heightMeasureSpec);
        int hSize = MeasureSpec.getSize(heightMeasureSpec);
        int measureWidth = 0, measureHeight = 0; // 最终测量出来的宽高

        // 得到合适宽度
        Rect indexBounds = new Rect(); // 存放每个绘制的index的Rect区域
        String index; // 每个要绘制的index内容
        for (int i = 0; i < mIndexDatas.size(); i++) {
            index = mIndexDatas.get(i);
            // 测量计算文字所在矩形，可以得到宽高
            mPaint.getTextBounds(index, 0, index.length(), indexBounds);
            // 循环结束后，得到index的最大宽度
            measureWidth = Math.max(indexBounds.width(), measureWidth);
            // 循环结束后，得到index的最大高度，然后*size
            measureHeight = Math.max(indexBounds.width(), measureHeight);
        }
        measureHeight *= mIndexDatas.size();
        // 根据三种测量模式，分配不同的值给View
        switch (wMode) {
            case MeasureSpec.EXACTLY: // 就分配具体的测量值（match_parent,确定数值）
                measureWidth = wSize;
                break;
            case MeasureSpec.AT_MOST: // 就分配父控件能给的最大值和自己需要的值之间的最小值（保证不超过父控件限定的值）
                // wSize此时是父控件能给子View分配的最大控件
                measureWidth = Math.min(measureWidth, wSize);
                break;
            case MeasureSpec.UNSPECIFIED: // 就分配自己需要的值
                break;
        }
        // 得到合适的高度
        switch (hMode) {
            case MeasureSpec.EXACTLY:
                measureHeight = hSize;
                break;
            case MeasureSpec.AT_MOST:
                // hSize此时是父控件能给子View分配的最大控件
                measureHeight = Math.min(measureHeight, hSize);
                break;
            case MeasureSpec.UNSPECIFIED:
                break;
        }
        setMeasuredDimension(measureWidth, measureHeight);
    }

    /**
     * 获取控件的宽高，并计算mGapHeight
     * @param w
     * @param h
     * @param oldw
     * @param oldh
     */
    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        mWidth = w;
        mHeight = h;
        mGapHeight = (mHeight - getPaddingTop() - getPaddingBottom()) / mIndexDatas.size();
    }

    /**
     * 每个 index 在绘制时，都是处于水平居中，竖直方向上在mGapHeight区域高度内居中
     * @param canvas
     */
    @Override
    protected void onDraw(Canvas canvas) {
        int t = getPaddingTop(); // top的基准点
        Rect indexBounds = new Rect(); // 存放每个绘制的index的Rect区域
        String index; // 每个要绘制的index内容
        for (int i = 0; i < mIndexDatas.size(); i++) {
            index = mIndexDatas.get(i);
            // 测量计算文字所在矩形，可以得到宽高
            mPaint.getTextBounds(index, 0, index.length(), indexBounds); // Paint 默认的 TextAlign 是 Left
            // 获得画笔的FontMetrics，用来计算baseLine
            // 因为drawText的y坐标，代表的是绘制的文字的baseLine位置
            Paint.FontMetrics fontMetrics = mPaint.getFontMetrics();
            // 计算出在每格index区域，竖直居中的baseLine值
            int baseline = (int)((mGapHeight - fontMetrics.bottom - fontMetrics.top) / 2);
            // 调用drawText，居中显示绘制index
            canvas.drawText(index, mWidth / 2 - indexBounds.width() / 2, t + mGapHeight * i + baseline, mPaint);
        }
    }

    /**
     * 响应操作
     * 按下时View背景色变色，抬起时恢复原来颜色，并根据手指触摸的落点坐标，判断当前处于哪个index区域，回调给相应的监听器处理
     * @param event
     * @return
     */
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN:
                setBackgroundColor(mPressedBackground);
                // 注意没有break，因为down时，也要计算落点，回调监听器
            case MotionEvent.ACTION_MOVE:
                float y = event.getY();
                // 通过计算判断落点在哪个区域
                int pressI = (int)((y - getPaddingTop()) / mGapHeight);
                // 边界处理(在手指move时，有可能已经移出边界，防止越界)
                if (pressI < 0) {
                    pressI = 0;
                } else if (pressI >= mIndexDatas.size()) {
                    pressI = mIndexDatas.size() - 1;
                }
                Log.i("-------", pressI + mIndexDatas.get(pressI));
                // 回调监听器
                if (null != mOnIndexPressedListener) {
                    mOnIndexPressedListener.onIndexPressed(pressI, mIndexDatas.get(pressI));
                }
                break;
            case MotionEvent.ACTION_UP:
            case MotionEvent.ACTION_CANCEL:
                // 手指抬起时背景恢复透明
                setBackgroundColor(Color.TRANSPARENT);
                // 回调监听器
                if (null != mOnIndexPressedListener) {
                    mOnIndexPressedListener.onMotionEventEnd();
                }
                break;
        }
        return true;
    }

    public void setmOnIndexPressedListener(OnIndexPressedListener mOnIndexPressedListener) {
        this.mOnIndexPressedListener = mOnIndexPressedListener;
    }

    public interface OnIndexPressedListener {
        // 当某个index被按下
        void onIndexPressed(int index, String text);
        // 当触摸事件结束
        void onMotionEventEnd();
    }
}
