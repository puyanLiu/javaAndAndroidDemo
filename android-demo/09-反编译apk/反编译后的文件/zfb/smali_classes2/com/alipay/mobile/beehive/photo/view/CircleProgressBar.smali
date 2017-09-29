.class public Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;
.super Landroid/view/View;
.source "CircleProgressBar.java"


# instance fields
.field private max:I

.field private outRadius:I

.field private paint:Landroid/graphics/Paint;

.field private progress:I

.field private progressBackground:I

.field private progressColor:I

.field private radius:I

.field private stockWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 22
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressBackground:I

    .line 32
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressColor:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->max:I

    .line 42
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progress:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    .line 27
    iput v3, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressBackground:I

    .line 32
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressColor:I

    .line 37
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->max:I

    .line 42
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progress:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$dimen;->video_pregress_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->outRadius:I

    .line 56
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->outRadius:I

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {p1, v1}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    .line 57
    iput v3, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressBackground:I

    .line 58
    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressColor:I

    .line 59
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->stockWidth:I

    .line 63
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 77
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 83
    const/4 v3, 0x0

    .line 84
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->max:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progress:I

    if-ltz v0, :cond_0

    .line 85
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progress:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->max:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v3, v0, v1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    new-instance v1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    div-float/2addr v0, v8

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    div-float/2addr v2, v8

    .line 90
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getWidth()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    mul-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    div-float/2addr v5, v8

    sub-float/2addr v4, v5

    .line 91
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    int-to-float v7, v7

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    div-float/2addr v6, v8

    sub-float/2addr v5, v6

    .line 88
    invoke-direct {v1, v0, v2, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 92
    const/high16 v2, 0x43870000    # 270.0f

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->stockWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->outRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 99
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .prologue
    .line 72
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 73
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 68
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 104
    if-nez p2, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->invalidate()V

    .line 107
    :cond_0
    return-void
.end method

.method public safeSetProgress(I)V
    .locals 2

    .prologue
    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 159
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar$1;-><init>(Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;I)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->post(Ljava/lang/Runnable;)Z

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 0

    .prologue
    .line 141
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->max:I

    .line 142
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .prologue
    .line 149
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progress:I

    .line 150
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->invalidate()V

    .line 151
    return-void
.end method

.method public setProgressBackground(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressBackground:I

    .line 125
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    .prologue
    .line 133
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->progressColor:I

    .line 134
    return-void
.end method

.method public setRadius(I)V
    .locals 0

    .prologue
    .line 115
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/CircleProgressBar;->radius:I

    .line 116
    return-void
.end method
