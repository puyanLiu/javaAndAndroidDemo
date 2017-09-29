.class public Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;
.super Landroid/view/animation/Animation;
.source "ArcTranslateAnimation.java"


# instance fields
.field private mControl:Landroid/graphics/PointF;

.field private mEnd:Landroid/graphics/PointF;

.field private mFromXDelta:F

.field private mFromXType:I

.field private mFromXValue:F

.field private mFromYDelta:F

.field private mFromYType:I

.field private mFromYValue:F

.field private mStart:Landroid/graphics/PointF;

.field private mToXDelta:F

.field private mToXType:I

.field private mToXValue:F

.field private mToYDelta:F

.field private mToYType:I

.field private mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 14
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXType:I

    .line 16
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXType:I

    .line 18
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYType:I

    .line 20
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYType:I

    .line 22
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXValue:F

    .line 24
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXValue:F

    .line 26
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYValue:F

    .line 28
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYValue:F

    .line 54
    iput p1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXValue:F

    .line 55
    iput p2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXValue:F

    .line 56
    iput p3, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYValue:F

    .line 57
    iput p4, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYValue:F

    .line 59
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXType:I

    .line 60
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXType:I

    .line 61
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYType:I

    .line 62
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYType:I

    .line 63
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 14
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXType:I

    .line 16
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXType:I

    .line 18
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYType:I

    .line 20
    iput v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYType:I

    .line 22
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXValue:F

    .line 24
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXValue:F

    .line 26
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYValue:F

    .line 28
    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYValue:F

    .line 93
    iput p2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXValue:F

    .line 94
    iput p4, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXValue:F

    .line 95
    iput p6, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYValue:F

    .line 96
    iput p8, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYValue:F

    .line 98
    iput p1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXType:I

    .line 99
    iput p3, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXType:I

    .line 100
    iput p5, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYType:I

    .line 101
    iput p7, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYType:I

    .line 102
    return-void
.end method

.method private calcBezier(FFFF)J
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 142
    sub-float v0, v6, p1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    .line 143
    const/high16 v2, 0x40000000    # 2.0f

    sub-float v3, v6, p1

    mul-float/2addr v2, v3

    mul-float/2addr v2, p1

    mul-float/2addr v2, p3

    float-to-double v2, v2

    .line 142
    add-double/2addr v0, v2

    .line 144
    float-to-double v2, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, p4

    mul-double/2addr v2, v4

    .line 142
    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mStart:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mControl:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mEnd:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->calcBezier(FFFF)J

    move-result-wide v0

    long-to-float v0, v0

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mStart:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mControl:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mEnd:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->calcBezier(FFFF)J

    move-result-wide v1

    long-to-float v1, v1

    .line 109
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 110
    return-void
.end method

.method public initialize(IIII)V
    .locals 3

    .prologue
    .line 115
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 116
    iget v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXType:I

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXDelta:F

    .line 117
    iget v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXType:I

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXDelta:F

    .line 118
    iget v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYType:I

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYDelta:F

    .line 119
    iget v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYType:I

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYDelta:F

    .line 121
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXDelta:F

    iget v2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromYDelta:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mStart:Landroid/graphics/PointF;

    .line 122
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToXDelta:F

    iget v2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYDelta:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mEnd:Landroid/graphics/PointF;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mFromXDelta:F

    iget v2, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mToYDelta:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/alipay/mobile/egg/displayer/ArcTranslateAnimation;->mControl:Landroid/graphics/PointF;

    .line 128
    return-void
.end method
