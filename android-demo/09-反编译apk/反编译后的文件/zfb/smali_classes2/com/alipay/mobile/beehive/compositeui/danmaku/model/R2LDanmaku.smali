.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
.source "R2LDanmaku.java"


# static fields
.field protected static final CORDON_RENDERING_TIME:J = 0x28L

.field protected static final MAX_RENDERING_TIME:J = 0x64L


# instance fields
.field protected RECT:[F

.field protected mDistance:I

.field protected mLastTime:J

.field protected mStepX:F

.field protected x:F

.field protected y:F


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->x:F

    .line 28
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->y:F

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    .line 45
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 46
    return-void
.end method


# virtual methods
.method protected getAccurateLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)F
    .locals 4

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->time:J

    sub-long v0, p2, v0

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 72
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->paintWidth:F

    neg-float v0, v0

    .line 74
    :goto_0
    return v0

    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v2

    int-to-float v2, v2

    long-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mStepX:F

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method

.method public getBottom()F
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->y:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->paintHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->x:F

    return v0
.end method

.method public getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F
    .locals 4

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 89
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->getAccurateLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)F

    move-result v0

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    if-nez v1, :cond_1

    .line 83
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    .line 85
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 86
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->y:F

    aput v3, v1, v2

    .line 87
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    const/4 v2, 0x2

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->paintWidth:F

    add-float/2addr v0, v3

    aput v0, v1, v2

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->y:F

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->paintHeight:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->RECT:[F

    goto :goto_0
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 104
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->x:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->y:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V
    .locals 6

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 52
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->time:J

    sub-long v2, v0, v2

    .line 54
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 55
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->getAccurateLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)F

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->x:F

    .line 56
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->y:F

    .line 58
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->setVisibility(Z)V

    .line 60
    :cond_0
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mLastTime:J

    .line 66
    :goto_0
    return-void

    .line 63
    :cond_1
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mLastTime:J

    .line 65
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->setVisibility(Z)V

    goto :goto_0
.end method

.method public measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V
    .locals 3

    .prologue
    .line 119
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->measure(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)V

    .line 121
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mDistance:I

    .line 122
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mDistance:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v1, v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    long-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;->mStepX:F

    .line 123
    return-void
.end method
