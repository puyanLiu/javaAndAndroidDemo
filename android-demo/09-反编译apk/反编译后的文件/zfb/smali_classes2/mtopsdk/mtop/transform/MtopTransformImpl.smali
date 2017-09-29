.class public Lmtopsdk/mtop/transform/MtopTransformImpl;
.super Ljava/lang/Object;
.source "MtopTransformImpl.java"

# interfaces
.implements Lmtopsdk/mtop/transform/MtopTransform;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopTransformImpl"


# instance fields
.field private cacheMgr:Lmtopsdk/mtop/cache/CacheManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lmtopsdk/mtop/cache/CacheManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;-><init>(Lanetwork/network/cache/Cache;)V

    iput-object v0, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    .line 55
    return-void
.end method

.method private getApiCacheSwitch(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 3

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v1

    .line 235
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->cache:Z

    if-eqz v1, :cond_0

    .line 236
    const/4 v0, 0x1

    .line 238
    :cond_0
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-eqz v1, :cond_1

    .line 239
    iget-object v1, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/util/MtopStatistics;->onCacheSwitchStatus(Z)V

    .line 241
    :cond_1
    return v0
.end method

.method private getNetworkInstance(Lmtopsdk/mtop/MtopProxy;)Lanetwork/channel/Network;
    .locals 4

    .prologue
    .line 252
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    .line 253
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalSpdySwitchOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v0, v1}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 257
    const-string/jumbo v1, "mtopsdk.MtopTransformImpl"

    const-string/jumbo v2, "[getNetworkInstance]HttpNetwork"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    :goto_0
    return-object v0

    .line 261
    :cond_0
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 262
    if-eqz v0, :cond_1

    iget-object v2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    iget-object v2, v2, Lmtopsdk/mtop/config/ApiConfig;->configVersion:Ljava/lang/String;

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 263
    const-string/jumbo v2, "false"

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    const-string/jumbo v3, "spdy"

    invoke-virtual {v0, v3}, Lmtopsdk/mtop/config/ApiConfig;->getConfigItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    new-instance v0, Lanetwork/channel/http/HttpNetwork;

    invoke-direct {v0, v1}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 265
    const-string/jumbo v1, "mtopsdk.MtopTransformImpl"

    const-string/jumbo v2, "[getNetworkInstance]HttpNetwork"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_1
    new-instance v0, Lanetwork/channel/degrade/DegradableNetwork;

    invoke-direct {v0, v1}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 270
    const-string/jumbo v1, "mtopsdk.MtopTransformImpl"

    const-string/jumbo v2, "[getNetworkInstance]DegradableNetwork"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initResponseSource(Lmtopsdk/mtop/MtopProxy;Lanetwork/channel/Request;Z)Lmtopsdk/mtop/domain/ResponseSource;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 200
    new-instance v0, Lmtopsdk/mtop/domain/ResponseSource;

    iget-object v1, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-direct {v0, p1, p2, v1}, Lmtopsdk/mtop/domain/ResponseSource;-><init>(Lmtopsdk/mtop/MtopProxy;Lanetwork/channel/Request;Lmtopsdk/mtop/cache/CacheManager;)V

    .line 201
    iput-boolean v7, v0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 202
    iput-boolean p3, v0, Lmtopsdk/mtop/domain/ResponseSource;->isAsync:Z

    .line 204
    iget-object v1, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lmtopsdk/mtop/cache/CacheManager;->isNeedReadCache(Lanetwork/channel/Request;Lmtopsdk/mtop/common/MtopListener;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v2

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 210
    iget-object v5, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-interface {v5, v1, v2}, Lmtopsdk/mtop/cache/CacheManager;->getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v1

    iput-object v1, v0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 211
    new-instance v1, Lanetwork/network/cache/CacheStat;

    invoke-direct {v1}, Lanetwork/network/cache/CacheStat;-><init>()V

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v3

    iput-wide v2, v1, Lanetwork/network/cache/CacheStat;->d:J

    .line 213
    iput-boolean v7, v1, Lanetwork/network/cache/CacheStat;->a:Z

    .line 215
    iput-object v1, v0, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    .line 216
    invoke-static {v0}, Lmtopsdk/mtop/cache/handler/CacheStatusHandler;->handleCacheStatus(Lmtopsdk/mtop/domain/ResponseSource;)V

    .line 218
    :cond_0
    return-object v0
.end method


# virtual methods
.method public asyncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Lmtopsdk/mtop/common/ApiID;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 124
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmtopsdk/mtop/transform/MtopTransformImpl;->convertNetworktRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lanetwork/channel/Request;

    move-result-object v3

    .line 126
    invoke-direct {p0, p1}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getApiCacheSwitch(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v4

    .line 127
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    const-string/jumbo v0, "mtopsdk.MtopTransformImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[asyncTransform]apiCacheSwitchOpen="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    if-eqz v4, :cond_6

    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, p1, v3, v0}, Lmtopsdk/mtop/transform/MtopTransformImpl;->initResponseSource(Lmtopsdk/mtop/MtopProxy;Lanetwork/channel/Request;Z)Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v0

    .line 133
    iget-boolean v1, v0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    if-nez v1, :cond_2

    .line 134
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v2, p1}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    .line 168
    :goto_0
    return-object v0

    :cond_2
    move-object v1, v0

    .line 139
    :goto_1
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 141
    invoke-static {}, Lmtopsdk/mtop/util/MtopProxyUtils;->getApiWhiteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lmtopsdk/mtop/common/ApiLockHelper;->iSApiLocked(Ljava/lang/String;J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 142
    new-instance v1, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v4, "ANDROID_SYS_API_LOCKED_IN_10_SECONDS"

    const-string/jumbo v5, "API\u88ab\u9501\u5b9a10\u79d2"

    invoke-direct {v1, v3, v0, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, v1}, Lmtopsdk/mtop/MtopProxy;->handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 144
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v2, p1}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    goto :goto_0

    .line 148
    :cond_3
    invoke-static {p1}, Lmtopsdk/mtop/util/MtopProxyUtils;->convertCallbackListener(Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/common/NetworkListenerAdapter;

    move-result-object v5

    .line 149
    if-eqz v5, :cond_5

    .line 150
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object v0, v5, Lmtopsdk/mtop/common/NetworkListenerAdapter;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 151
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_4

    instance-of v6, v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v6, :cond_4

    .line 153
    iget-object v6, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    check-cast v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    invoke-interface {v6, v0}, Lmtopsdk/mtop/cache/CacheManager;->addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V

    .line 155
    :cond_4
    new-instance v0, Lmtopsdk/mtop/cache/CacheEntity;

    invoke-direct {v0, v4, v1}, Lmtopsdk/mtop/cache/CacheEntity;-><init>(ZLmtopsdk/mtop/domain/ResponseSource;)V

    iput-object v0, v5, Lmtopsdk/mtop/common/NetworkListenerAdapter;->cacheEntity:Lmtopsdk/mtop/cache/CacheEntity;

    .line 161
    :cond_5
    :try_start_0
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendStart()V

    .line 162
    invoke-direct {p0, p1}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getNetworkInstance(Lmtopsdk/mtop/MtopProxy;)Lanetwork/channel/Network;

    move-result-object v0

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v3, v1, p3, v5}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;Ljava/lang/Object;Landroid/os/Handler;Lanetwork/channel/NetworkListener;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 168
    :goto_2
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    invoke-direct {v0, v2, p1}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string/jumbo v1, "[asyncTransform] invoke network.asyncSend error :"

    .line 165
    const-string/jumbo v3, "mtopsdk.MtopTransformImpl"

    invoke-static {v3, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    const-string/jumbo v3, "mtop.mtopProxy.async"

    const v4, 0xfb86

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_6
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public convertNetworktRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lanetwork/channel/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;)",
            "Lanetwork/channel/Request;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 173
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    sget-object v1, Lmtopsdk/mtop/transform/MtopTransformImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getEntrance()Lmtopsdk/mtop/domain/EntranceEnum;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EntranceEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 182
    :pswitch_0
    new-instance v0, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;

    invoke-direct {v0}, Lmtopsdk/mtop/transform/converter/Api4NetworkConverter;-><init>()V

    .line 183
    invoke-virtual {v0, p1, p2}, Lmtopsdk/mtop/transform/converter/NetworkConverter;->convert(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lanetwork/channel/Request;

    move-result-object v0

    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public syncTransform(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;)",
            "Lmtopsdk/mtop/domain/MtopResponse;"
        }
    .end annotation

    .prologue
    const v8, 0xfb86

    const/4 v2, 0x0

    .line 59
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 62
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmtopsdk/mtop/transform/MtopTransformImpl;->convertNetworktRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lanetwork/channel/Request;

    move-result-object v3

    .line 64
    invoke-direct {p0, p1}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getApiCacheSwitch(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v4

    .line 65
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string/jumbo v0, "mtopsdk.MtopTransformImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[syncTransform]apiCacheSwitchOpen="

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_1
    if-eqz v4, :cond_7

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, Lmtopsdk/mtop/transform/MtopTransformImpl;->initResponseSource(Lmtopsdk/mtop/MtopProxy;Lanetwork/channel/Request;Z)Lmtopsdk/mtop/domain/ResponseSource;

    move-result-object v0

    .line 72
    iget-boolean v1, v0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    if-nez v1, :cond_2

    .line 73
    iget-object v0, v0, Lmtopsdk/mtop/domain/ResponseSource;->cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

    .line 116
    :goto_0
    return-object v0

    :cond_2
    move-object v1, v0

    .line 79
    :goto_1
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v5

    .line 80
    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-static {}, Lmtopsdk/mtop/util/MtopProxyUtils;->getApiWhiteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lmtopsdk/mtop/common/ApiLockHelper;->iSApiLocked(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 82
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_SYS_API_LOCKED_IN_10_SECONDS"

    const-string/jumbo v4, "API\u88ab\u9501\u5b9a10\u79d2"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "mtop.mtopProxy.sync"

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v8, v2}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_3
    :try_start_0
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendStart()V

    .line 91
    invoke-direct {p0, p1}, Lmtopsdk/mtop/transform/MtopTransformImpl;->getNetworkInstance(Lmtopsdk/mtop/MtopProxy;)Lanetwork/channel/Network;

    move-result-object v0

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getContext()Ljava/lang/Object;

    invoke-interface {v0, v3}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    :try_start_1
    iget-object v3, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/MtopStatistics;->onNetSendEnd()V

    .line 93
    if-eqz v0, :cond_4

    .line 94
    iget-object v3, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-interface {v0}, Lanetwork/channel/Response;->e()Lanetwork/channel/statist/StatisticData;

    move-result-object v5

    invoke-virtual {v3, v5}, Lmtopsdk/mtop/util/MtopStatistics;->onNetStat(Lanetwork/channel/statist/StatisticData;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    :cond_4
    :goto_2
    iget-object v3, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v3}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataStart()V

    .line 103
    invoke-static {v0, v2, p1}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Lanetwork/channel/Response;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v2

    .line 104
    iget-object v0, p1, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onParseResponseDataEnd()V

    .line 106
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 107
    if-eqz v4, :cond_6

    iget-object v0, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Lmtopsdk/mtop/cache/CacheManager;->isNeedWriteCache(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 108
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getCallback()Lmtopsdk/mtop/common/MtopListener;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_5

    instance-of v3, v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v3, :cond_5

    .line 110
    iget-object v3, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    check-cast v0, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    invoke-interface {v3, v0}, Lmtopsdk/mtop/cache/CacheManager;->addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V

    .line 112
    :cond_5
    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->cloneOriginMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 113
    iget-object v0, p0, Lmtopsdk/mtop/transform/MtopTransformImpl;->cacheMgr:Lmtopsdk/mtop/cache/CacheManager;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/ResponseSource;->getCacheBlock()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1, v2}, Lmtopsdk/mtop/cache/CacheManager;->putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z

    :cond_6
    move-object v0, v2

    .line 116
    goto/16 :goto_0

    .line 96
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v2

    .line 97
    :goto_3
    const-string/jumbo v5, "[syncTransform] invoke network.syncSend error :"

    .line 98
    const-string/jumbo v6, "mtopsdk.MtopTransformImpl"

    invoke-static {v6, v5, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    const-string/jumbo v6, "mtop.mtopProxy.sync"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v8, v3}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    .line 96
    :catch_1
    move-exception v3

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto/16 :goto_1
.end method
