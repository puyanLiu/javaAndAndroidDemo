.class public Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;
.super Landroid/view/View;
.source "NumberProgressBar.java"


# static fields
.field private static final CORNER_SIZE:I = 0x8

.field private static final FONT_SIZE_DP:I = 0xe

.field private static FONT_SIZE_PX:I = 0x0

.field private static final MAX_PROGRESS:F = 100.0f

.field private static final PROGRESS_COLOR:I

.field private static final TEXT_COLOR:I


# instance fields
.field private baseline:F

.field private mDispString:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:I

.field private mProgressRect:Landroid/graphics/RectF;

.field private mRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "#8000AAEE"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->PROGRESS_COLOR:I

    .line 31
    const-string/jumbo v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->TEXT_COLOR:I

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mDispString:Ljava/lang/String;

    .line 25
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->baseline:F

    .line 40
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 42
    const/high16 v0, 0x41600000    # 14.0f

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->FONT_SIZE_PX:I

    .line 43
    return-void
.end method

.method private paintProgress(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    const/high16 v2, 0x41000000    # 8.0f

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->PROGRESS_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mProgressRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mProgressRect:Landroid/graphics/RectF;

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 49
    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 52
    :cond_0
    return-void
.end method

.method private paintProgressText(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->FONT_SIZE_PX:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 58
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->baseline:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 60
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 61
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    .line 59
    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->baseline:F

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->TEXT_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mDispString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->baseline:F

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 71
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mRect:Landroid/graphics/RectF;

    .line 75
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->paintProgress(Landroid/graphics/Canvas;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->paintProgressText(Landroid/graphics/Canvas;)V

    .line 77
    return-void
.end method

.method public setProgress(I)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;
    .locals 4

    .prologue
    const/high16 v3, 0x42c80000    # 100.0f

    const/4 v2, 0x0

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-object p0

    .line 91
    :cond_1
    int-to-float v0, p1

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 92
    const/16 p1, 0x64

    .line 94
    :cond_2
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mProgress:I

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mProgressRect:Landroid/graphics/RectF;

    if-nez v0, :cond_3

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v2, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mProgressRect:Landroid/graphics/RectF;

    .line 98
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mProgressRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 99
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->invalidate()V

    goto :goto_0
.end method

.method public setText(Ljava/lang/String;)Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->mDispString:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/NumberProgressBar;->invalidate()V

    .line 106
    return-object p0
.end method
