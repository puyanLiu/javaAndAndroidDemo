.class public Lmtopsdk/mtop/cache/handler/ExpiredCacheParser;
.super Ljava/lang/Object;
.source "ExpiredCacheParser.java"

# interfaces
.implements Lmtopsdk/mtop/cache/handler/ICacheParser;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ExpiredCacheParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lmtopsdk/mtop/domain/ResponseSource;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 21
    const-string/jumbo v0, "mtopsdk.ExpiredCacheParser"

    const-string/jumbo v1, "[parse]ExpiredCacheParser parse called"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    iput-boolean v4, v0, Lanetwork/network/cache/CacheStat;->b:Z

    .line 23
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/ResponseSource;->getMtopProxy()Lmtopsdk/mtop/MtopProxy;

    move-result-object v1

    .line 24
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheHitType(I)V

    .line 25
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataStart()V

    .line 26
    iget-object v2, p1, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 27
    invoke-static {v2, v1}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v3

    .line 28
    invoke-virtual {v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;->setFromCache(Z)V

    .line 29
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onParseCacheDataEnd()V

    .line 30
    iget-object v0, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 31
    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    instance-of v4, v0, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v4, :cond_0

    .line 33
    new-instance v4, Lmtopsdk/mtop/common/MtopCacheEvent;

    invoke-direct {v4, v3}, Lmtopsdk/mtop/common/MtopCacheEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 34
    iget-object v5, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v5}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheReturn()V

    .line 35
    iget-object v5, v1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-static {v5, v3}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 36
    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;->onCached(Lmtopsdk/mtop/common/MtopCacheEvent;Ljava/lang/Object;)V

    .line 39
    :cond_0
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/ResponseSource;->getRequest()Lanetwork/channel/Request;

    move-result-object v0

    .line 40
    iget-object v1, v2, Lanetwork/network/cache/RpcCache;->d:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string/jumbo v1, "if-modified-since"

    iget-object v4, v2, Lanetwork/network/cache/RpcCache;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Lanetwork/channel/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object v1, v2, Lanetwork/network/cache/RpcCache;->g:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 44
    const-string/jumbo v1, "if-none-match"

    iget-object v2, v2, Lanetwork/network/cache/RpcCache;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lanetwork/channel/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_2
    iput-object v3, p1, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 48
    return-void
.end method
