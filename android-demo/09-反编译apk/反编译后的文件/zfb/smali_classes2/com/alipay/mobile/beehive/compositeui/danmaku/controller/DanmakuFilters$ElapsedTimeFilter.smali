.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;
.source "DanmakuFilters.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

.field mMaxTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$BaseDanmakuFilter;-><init>()V

    .line 159
    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->mMaxTime:J

    .line 161
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    .line 157
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->reset()V

    .line 200
    return-void
.end method

.method public declared-synchronized filter(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;IILcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;Z)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 167
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->last()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->last()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isTimeOut()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 168
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V

    .line 171
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->contains(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 184
    :goto_0
    monitor-exit p0

    return v0

    .line 175
    :cond_1
    if-eqz p4, :cond_2

    :try_start_1
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;->isOutside()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    .line 176
    goto :goto_0

    .line 179
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p4, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;->currMillisecond:J

    sub-long/2addr v2, v4

    .line 180
    iget-wide v4, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->mMaxTime:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 181
    iget-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v1, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->addItem(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/BaseDanmaku;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move v0, v1

    .line 184
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->danmakus:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    .line 194
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/controller/DanmakuFilters$ElapsedTimeFilter;->reset()V

    .line 190
    return-void
.end method
