.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
.source "FTDanmaku.java"


# instance fields
.field private RECT:[F

.field private mLastDispWidth:I

.field private mLastLeft:F

.field private mLastPaintWidth:F

.field private x:F

.field protected y:F


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->x:F

    .line 26
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    .line 38
    return-void
.end method


# virtual methods
.method public getBottom()F
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintHeight:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getLeft()F
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->x:F

    return v0
.end method

.method protected getLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)F
    .locals 2

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mLastDispWidth:I

    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mLastPaintWidth:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintWidth:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 62
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mLastLeft:F

    .line 68
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintWidth:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 65
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mLastDispWidth:I

    .line 66
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintWidth:F

    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mLastPaintWidth:F

    .line 67
    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mLastLeft:F

    goto :goto_0
.end method

.method public getRectAtTime(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;J)[F
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->isMeasured()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->getLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)F

    move-result v0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    if-nez v1, :cond_1

    .line 77
    const/4 v1, 0x4

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 80
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x1

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    aput v3, v1, v2

    .line 81
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v2, 0x2

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintWidth:F

    add-float/2addr v0, v3

    aput v0, v1, v2

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintHeight:F

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->RECT:[F

    goto :goto_0
.end method

.method public getRight()F
    .locals 2

    .prologue
    .line 98
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->x:F

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->paintWidth:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getTop()F
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x5

    return v0
.end method

.method public layout(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;FF)V
    .locals 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    iget-wide v0, v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->time:J

    sub-long/2addr v0, v2

    .line 44
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->duration:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;

    iget-wide v2, v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/Duration;->value:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 45
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->getLeft(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->x:F

    .line 47
    iput p3, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    .line 48
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->setVisibility(Z)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->setVisibility(Z)V

    .line 54
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->y:F

    .line 55
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/FTDanmaku;->x:F

    goto :goto_0
.end method
