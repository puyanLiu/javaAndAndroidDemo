.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected final danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

.field protected mLastSkipped:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

.field protected mMaximumSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    .line 96
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    .line 92
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->reset()V

    .line 149
    return-void
.end method

.method public declared-synchronized filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->last()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v2

    .line 104
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 106
    :cond_0
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->getType()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v2, v0, :cond_3

    :cond_1
    move v0, v1

    .line 128
    :cond_2
    :goto_0
    monitor-exit p0

    return v0

    .line 113
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->contains(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-lt p3, v2, :cond_4

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isShown()Z

    move-result v2

    if-nez v2, :cond_4

    .line 118
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    if-eqz v2, :cond_5

    iget-wide v2, p1, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    iget-object v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    iget-wide v4, v4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->time:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 119
    :cond_4
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move v0, v1

    .line 120
    goto :goto_0

    .line 123
    :cond_5
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-le p2, v2, :cond_6

    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-nez v2, :cond_6

    .line 124
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 127
    :cond_6
    :try_start_2
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mLastSkipped:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v1

    .line 128
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setData(Ljava/lang/Integer;)V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->reset()V

    .line 134
    if-nez p1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    if-eq v0, v1, :cond_0

    .line 137
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->mMaximumSize:I

    goto :goto_0
.end method

.method public bridge synthetic setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$QuantityDanmakuFilter;->setData(Ljava/lang/Integer;)V

    return-void
.end method
