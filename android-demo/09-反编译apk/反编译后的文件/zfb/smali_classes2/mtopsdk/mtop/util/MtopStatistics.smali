.class public Lmtopsdk/mtop/util/MtopStatistics;
.super Ljava/lang/Object;
.source "MtopStatistics.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopStatistics"


# instance fields
.field public cacheCostTime:J

.field public cacheHitType:I

.field protected cacheResponseParseEndTime:J

.field protected cacheResponseParseStartTime:J

.field public cacheResponseParseTime:J

.field protected cacheReturnTime:J

.field public cacheSwitch:I

.field public commitStat:Z

.field protected endTime:J

.field public isAsync:Z

.field protected mtopResponseParseEndTime:J

.field protected mtopResponseParseStartTime:J

.field public mtopResponseParseTime:J

.field protected netSendEndTime:J

.field protected netSendStartTime:J

.field protected netStat:Lanetwork/channel/statist/StatisticData;

.field public netTotalTime:J

.field private rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

.field protected startTime:J

.field protected statSum:Ljava/lang/String;

.field public totalTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 27
    iput-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->isAsync:Z

    .line 114
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    .line 353
    return-void
.end method

.method private commitStatData()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 248
    iget-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    if-nez v0, :cond_0

    .line 315
    :goto_0
    return-void

    .line 251
    :cond_0
    const-string/jumbo v2, ""

    const-string/jumbo v4, ""

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->getTotalTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 255
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 257
    const-string/jumbo v0, "networkExeTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string/jumbo v1, "isSynchronous"

    iget-boolean v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->isAsync:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    :goto_1
    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string/jumbo v0, "cacheSwitch"

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string/jumbo v0, "cacheHitType"

    iget v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string/jumbo v0, "cacheCostTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string/jumbo v0, "cacheResponseParseTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string/jumbo v0, "mtopResponseParseTime"

    iget-wide v6, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->getNetStat()Lanetwork/channel/statist/StatisticData;

    move-result-object v1

    .line 271
    if-eqz v1, :cond_3

    .line 273
    iget-boolean v0, v1, Lanetwork/channel/statist/StatisticData;->b:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 314
    iput-boolean v8, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    goto :goto_0

    .line 259
    :cond_1
    :try_start_1
    const-string/jumbo v0, "1"

    goto :goto_1

    .line 277
    :cond_2
    const-string/jumbo v0, "oneWayTime_ANet"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->k:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    const-string/jumbo v0, "mtopOperationQueueWait"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->o:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string/jumbo v0, "tcpLinkDate"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->i:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    const-string/jumbo v0, "firstDataTime"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->p:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string/jumbo v0, "serverRT"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->s:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string/jumbo v0, "rtt"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->t:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string/jumbo v0, "recDataTime"

    iget-wide v6, v1, Lanetwork/channel/statist/StatisticData;->q:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v6, "isSpdy"

    iget-boolean v0, v1, Lanetwork/channel/statist/StatisticData;->e:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "1"

    :goto_2
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string/jumbo v6, "isSSL"

    iget-boolean v0, v1, Lanetwork/channel/statist/StatisticData;->f:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "1"

    :goto_3
    invoke-interface {v5, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string/jumbo v0, "retryTime"

    iget v6, v1, Lanetwork/channel/statist/StatisticData;->z:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string/jumbo v0, "timeoutType"

    iget-object v1, v1, Lanetwork/channel/statist/StatisticData;->y:Ljava/lang/String;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_3
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v0, :cond_4

    .line 301
    const-string/jumbo v0, "rbReqTime"

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v1, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->rbReqTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string/jumbo v0, "mtopJsonParseTime"

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v1, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->jsonParseTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string/jumbo v0, "toMainThTime"

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v1, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->toMainThTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string/jumbo v0, "mtopReqTime"

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    iget-wide v6, v1, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->mtopReqTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    :cond_4
    const-string/jumbo v0, "Page_MtopAPI"

    const v1, 0xfe5b

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    iput-boolean v8, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    goto/16 :goto_0

    .line 291
    :cond_5
    :try_start_2
    const-string/jumbo v0, "0"

    goto :goto_2

    .line 293
    :cond_6
    const-string/jumbo v0, "0"
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 311
    :catch_0
    move-exception v0

    .line 312
    :try_start_3
    const-string/jumbo v1, "mtopsdk.MtopStatistics"

    const-string/jumbo v2, "commitStatData failed."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    iput-boolean v8, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v8, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    throw v0
.end method

.method private currentTimeMillis()J
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public commitStatData(Z)V
    .locals 0

    .prologue
    .line 243
    iput-boolean p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 244
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData()V

    .line 245
    return-void
.end method

.method public getNetStat()Lanetwork/channel/statist/StatisticData;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    return-object v0
.end method

.method public declared-synchronized getRbStatData()Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    .locals 2

    .prologue
    .line 340
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-nez v0, :cond_0

    .line 341
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;-><init>(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/util/MtopStatistics$1;)V

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    .line 343
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 340
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStatSum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v0, :cond_1

    .line 229
    const-string/jumbo v0, ""

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->getStatSum()Ljava/lang/String;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v1}, Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;->getStatSum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTotalTime()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    return-wide v0
.end method

.method public onCacheHitType(I)V
    .locals 0

    .prologue
    .line 142
    iput p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    .line 143
    return-void
.end method

.method public onCacheReturn()V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    .line 148
    return-void
.end method

.method public onCacheSwitchStatus(Z)V
    .locals 1

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    const/4 v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    .line 181
    :cond_0
    return-void
.end method

.method public onEnd()V
    .locals 2

    .prologue
    .line 138
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    .line 139
    return-void
.end method

.method public onNetSendEnd()V
    .locals 2

    .prologue
    .line 171
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    .line 172
    return-void
.end method

.method public onNetSendStart()V
    .locals 2

    .prologue
    .line 167
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendStartTime:J

    .line 168
    return-void
.end method

.method public onNetStat(Lanetwork/channel/statist/StatisticData;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    .line 185
    return-void
.end method

.method public onParseCacheDataEnd()V
    .locals 2

    .prologue
    .line 155
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    .line 156
    return-void
.end method

.method public onParseCacheDataStart()V
    .locals 2

    .prologue
    .line 151
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    .line 152
    return-void
.end method

.method public onParseResponseDataEnd()V
    .locals 2

    .prologue
    .line 163
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseEndTime:J

    .line 164
    return-void
.end method

.method public onParseResponseDataStart()V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseStartTime:J

    .line 160
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    .line 135
    return-void
.end method

.method public onStatSum()V
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 190
    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    iget-wide v4, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    .line 191
    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    sub-long/2addr v0, v2

    :cond_0
    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    .line 192
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    .line 193
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendEndTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netSendStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    .line 194
    iget-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseEndTime:J

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseTime:J

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v1, "mtopOneWayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->totalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    const-string/jumbo v1, ",oneWayTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->netTotalTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 199
    const-string/jumbo v1, ",cacheSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    const-string/jumbo v1, ",cacheHitType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheHitType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string/jumbo v1, ",cacheCostTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheCostTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 202
    const-string/jumbo v1, ",cacheResponseParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v1, ",mtopResponseParseTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 204
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    if-eqz v1, :cond_1

    .line 205
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    iget-object v1, v1, Lanetwork/channel/statist/StatisticData;->A:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    invoke-virtual {v1}, Lanetwork/channel/statist/StatisticData;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Lmtopsdk/mtop/util/MtopStatistics;->commitStatData()V

    .line 216
    return-void

    .line 209
    :cond_2
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->netStat:Lanetwork/channel/statist/StatisticData;

    iget-object v1, v1, Lanetwork/channel/statist/StatisticData;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 320
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MtopStatistics [Detail]:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->startTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",cacheResponseParseStartTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",cacheResponseParseEndTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheResponseParseEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",cacheReturnTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->cacheReturnTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",mtopResponseParseStartTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",mtopResponseParseEndTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->mtopResponseParseEndTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ",endTime="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->endTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nMtopStatistics[sumstat(ms)]:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->statSum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object v1, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    if-eqz v1, :cond_0

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\nrbStatData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/mtop/util/MtopStatistics;->rbStatData:Lmtopsdk/mtop/util/MtopStatistics$RbStatisticData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
