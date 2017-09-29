.class public abstract Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
.super Ljava/lang/Object;
.source "BaseDanmakuParser.java"


# instance fields
.field private mDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

.field protected mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource",
            "<*>;"
        }
    .end annotation
.end field

.field protected mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

.field protected mDispDensity:F

.field protected mDispHeight:I

.field protected mDispWidth:I

.field protected mScaledDensity:F

.field protected mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDanmakus()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 83
    :goto_0
    return-object v0

    .line 79
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->resetDurationsData()V

    .line 80
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->releaseDataSource()V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDanmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    goto :goto_0
.end method

.method public getDisplayer()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    return-object v0
.end method

.method public getTimer()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method protected getViewportSizeFactor()F
    .locals 3

    .prologue
    .line 55
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDispDensity:F

    const v2, 0x3f19999a    # 0.6f

    sub-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public load(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource",
            "<*>;)",
            "Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;"
        }
    .end annotation

    .prologue
    .line 63
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    .line 64
    return-object p0
.end method

.method protected abstract parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
.end method

.method public release()V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->releaseDataSource()V

    .line 96
    return-void
.end method

.method protected releaseDataSource()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;->release()V

    .line 89
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    .line 90
    return-void
.end method

.method public setDisplayer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
    .locals 3

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    .line 41
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDispWidth:I

    .line 42
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDispHeight:I

    .line 43
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getDensity()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDispDensity:F

    .line 44
    invoke-interface {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;->getScaledDensity()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mScaledDensity:F

    .line 45
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDispWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mDispHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->getViewportSizeFactor()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateViewportState(FFF)Z

    .line 46
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/DanmakuFactory;->updateMaxDanmakuDuration()V

    .line 47
    return-object p0
.end method

.method public setTimer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    .line 69
    return-object p0
.end method
