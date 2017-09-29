.class public Lmtopsdk/mtop/cache/handler/CacheStatusHandler;
.super Ljava/lang/Object;
.source "CacheStatusHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheStatusHandler"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static finishMtopStatisticsOnCache(Lmtopsdk/mtop/util/MtopStatistics;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 5

    .prologue
    .line 61
    if-nez p0, :cond_1

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->onEnd()V

    .line 66
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->onStatSum()V

    .line 67
    if-eqz p1, :cond_2

    .line 68
    const/4 v1, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/util/MtopStatistics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_1
    if-eqz v0, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V

    .line 80
    :cond_2
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "mtopsdk.MtopStatistics"

    invoke-virtual {p0}, Lmtopsdk/mtop/util/MtopStatistics;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 73
    const-string/jumbo v2, "mtopsdk.CacheStatusHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[finishMtopStatisticsOnCache] clone MtopStatistics error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public static handleCacheStatus(Lmtopsdk/mtop/domain/ResponseSource;)V
    .locals 2

    .prologue
    .line 21
    if-nez p0, :cond_1

    .line 33
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    iget-object v0, v0, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-static {v0}, Lmtopsdk/mtop/cache/handler/CacheParserFactory;->createCacheParser(Lanetwork/network/cache/RpcCache$CacheStatus;)Lmtopsdk/mtop/cache/handler/ICacheParser;

    move-result-object v0

    invoke-interface {v0, p0}, Lmtopsdk/mtop/cache/handler/ICacheParser;->parse(Lmtopsdk/mtop/domain/ResponseSource;)V

    .line 29
    :goto_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    iget-boolean v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    iput-boolean v1, v0, Lanetwork/network/cache/CacheStat;->c:Z

    .line 31
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    invoke-static {v0}, Lanetwork/network/cache/ApiCacheStatistics;->a(Lanetwork/network/cache/CacheStat;)V

    goto :goto_0

    .line 27
    :cond_2
    const-string/jumbo v0, "mtopsdk.CacheStatusHandler"

    const-string/jumbo v1, "[handleCacheStatus]Didn\'t  hit local cache "

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static initResponseFromCache(Lanetwork/network/cache/RpcCache;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2

    .prologue
    .line 44
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 45
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lanetwork/network/cache/RpcCache;->a:[B

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V

    .line 48
    iget-object v1, p0, Lanetwork/network/cache/RpcCache;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 49
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 50
    invoke-static {v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseRetCodeFromResponseHeader(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 52
    return-object v0
.end method
