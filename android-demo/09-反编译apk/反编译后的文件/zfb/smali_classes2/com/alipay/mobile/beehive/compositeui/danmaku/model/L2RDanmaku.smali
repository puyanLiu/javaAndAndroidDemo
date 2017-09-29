.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;
.source "L2RDanmaku.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/R2LDanmaku;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getAccurateLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)F
    .locals 4

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->time:J

    sub-long v0, p2, v0

    .line 62
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 63
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 65
    :goto_0
    return v0

    :cond_0
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->mStepX:F

    long-to-float v0, v0

    mul-float/2addr v0, v2

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->paintWidth:F

    sub-float/2addr v0, v1

    goto :goto_0
.end method

.method public getBottom()F
    .locals 2

    .prologue
    .line 85
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->y:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->paintHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->x:F

    return v0
.end method

.method public getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 49
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->getAccurateLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)F

    move-result v0

    .line 50
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    if-nez v1, :cond_1

    .line 51
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    .line 53
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 54
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->y:F

    aput v3, v1, v2

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    const/4 v2, 0x2

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->paintWidth:F

    add-float/2addr v0, v3

    aput v0, v1, v2

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->y:F

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->paintHeight:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->RECT:[F

    goto :goto_0
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->x:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->y:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x6

    return v0
.end method

.method public layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V
    .locals 6

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    .line 30
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->time:J

    sub-long v2, v0, v2

    .line 31
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 32
    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->getAccurateLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)F

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->x:F

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->y:F

    .line 35
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->setVisibility(Z)V

    .line 37
    :cond_0
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->mLastTime:J

    .line 43
    :goto_0
    return-void

    .line 40
    :cond_1
    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->mLastTime:J

    .line 42
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/L2RDanmaku;->setVisibility(Z)V

    goto :goto_0
.end method
