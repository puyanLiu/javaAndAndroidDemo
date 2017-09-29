.class public Lcom/alipay/mobile/emotion/view/EmotionViewPager;
.super Landroid/support/v4/view/ViewPager;
.source "EmotionViewPager.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/Interceptable;


# instance fields
.field private intercept_able:Z

.field preX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->intercept_able:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->intercept_able:Z

    .line 23
    :try_start_0
    const-class v0, Landroid/support/v4/view/ViewPager;

    const-string/jumbo v1, "mScroller"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 25
    new-instance v1, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 26
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 25
    invoke-direct {v1, v2, v3}, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 27
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    const/16 v0, 0x96

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/FixedSpeedScroller;->setmDuration(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-class v1, Lcom/alipay/mobile/emotion/view/EmotionViewPager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public isIntercept()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->intercept_able:Z

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->isIntercept()Z

    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->preX:F

    .line 51
    :cond_1
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->preX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 49
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIntercept(Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/alipay/mobile/emotion/view/EmotionViewPager;->intercept_able:Z

    .line 62
    return-void
.end method
