.class public Lmtopsdk/mtop/offline/OfflineHelper;
.super Ljava/lang/Object;
.source "OfflineHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isApiSupportOffline(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v1

    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v1

    .line 41
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->offlineOp:Z

    if-eqz v1, :cond_0

    .line 42
    const/4 v0, 0x1

    .line 44
    :cond_0
    return v0
.end method

.method public static isNeedOffline(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lmtopsdk/mtop/offline/OfflineHelper;->isApiSupportOffline(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    :cond_0
    :goto_0
    return v0

    .line 23
    :cond_1
    invoke-virtual {v1}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->onTotalOpCount()V

    .line 25
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineHelper;->isNetworkOffline()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v1}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->onOfflineOpCount()V

    .line 30
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNetworkOffline()Z
    .locals 2

    .prologue
    .line 35
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNetworkRecover(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)Z
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v1}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->NO:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v1}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
