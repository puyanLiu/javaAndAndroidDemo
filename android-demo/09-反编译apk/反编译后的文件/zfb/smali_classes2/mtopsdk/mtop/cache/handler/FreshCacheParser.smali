.class public Lmtopsdk/mtop/cache/handler/FreshCacheParser;
.super Ljava/lang/Object;
.source "FreshCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.FreshCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 17
    const-string/jumbo v0, "mtopsdk.FreshCacheParser"

    const-string/jumbo v1, "[parse]FreshCacheParser parse called"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 19
    iget-object v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    iput-boolean v3, v0, Lanetwork/network/cache/CacheStat;->b:Z

    .line 21
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/ResponseSource;->getMtopProxy()Lmtopsdk/mtop/MtopProxy;

    move-result-object v1

    .line 22
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0, v3}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheHitType(I)V

    .line 23
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataStart()V

    .line 24
    iget-object v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    invoke-static {v0, v1}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 25
    invoke-virtual {v2, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setFromCache(Z)V

    .line 26
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataEnd()V

    .line 27
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 29
    iget-boolean v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->isAsync:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    instance-of v3, v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v3, :cond_0

    .line 32
    new-instance v3, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v3, v2}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 33
    iget-object v4, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v4}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheReturn()V

    .line 34
    iget-object v4, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 35
    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 39
    :cond_0
    iput-object v2, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 41
    return-void
.end method
