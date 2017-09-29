.class public Lmtopsdk/mtop/intf/MtopBuilder;
.super Ljava/lang/Object;
.source "MtopBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopBuilder"


# instance fields
.field private fullBaseUrl:Ljava/lang/String;

.field private handler:Landroid/os/Handler;

.field public listener:Lmtopsdk/mtop/common/MtopListener;

.field public mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

.field public request:Lmtopsdk/mtop/domain/MtopRequest;

.field public requestContext:Ljava/lang/Object;

.field private stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 56
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 61
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 66
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 109
    invoke-static {p1}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Ljava/lang/Object;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 110
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 56
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 61
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 66
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 85
    invoke-static {p1}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 86
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 56
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 61
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 66
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 76
    new-instance v0, Lmtopsdk/mtop/util/MtopStatistics;

    invoke-direct {v0}, Lmtopsdk/mtop/util/MtopStatistics;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 96
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    .line 97
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 98
    return-void
.end method

.method private createListenerProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;
    .locals 2

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 464
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    new-instance v1, Lmtopsdk/mtop/common/DefaultMtopCallback;

    invoke-direct {v1}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    invoke-direct {v0, v1}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    .line 473
    :goto_0
    return-object v0

    .line 465
    :cond_0
    instance-of v0, p1, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-eqz v0, :cond_1

    .line 466
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopCacheSplitListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    goto :goto_0

    .line 467
    :cond_1
    instance-of v0, p1, Lmtopsdk/mtop/common/MtopCallback$MtopCacheListener;

    if-eqz v0, :cond_2

    .line 468
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopCacheListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopCacheListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    goto :goto_0

    .line 470
    :cond_2
    new-instance v0, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;-><init>(Lmtopsdk/mtop/common/MtopListener;)V

    goto :goto_0
.end method

.method private createMtopProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/MtopProxy;
    .locals 4

    .prologue
    .line 446
    new-instance v0, Lmtopsdk/mtop/MtopProxy;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v3, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3, p1}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 447
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmtopsdk/mtop/global/SwitchConfig;->getApiConfigByApiKey(Ljava/lang/String;)Lmtopsdk/mtop/config/ApiConfig;

    move-result-object v2

    iput-object v2, v1, Lmtopsdk/mtop/common/MtopNetworkProp;->apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    .line 450
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-object v1, v0, Lmtopsdk/mtop/MtopProxy;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 451
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 452
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/MtopProxy;->setFullBaseUrl(Ljava/lang/String;)V

    .line 454
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addCacheKeyParamBlackList(Ljava/util/List;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/intf/MtopBuilder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->cacheKeyBlackList:Ljava/util/List;

    .line 294
    :cond_0
    return-object p0
.end method

.method public addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 3

    .prologue
    .line 232
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 233
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    const-string/jumbo v0, "mtopsdk.MtopBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "add HttpQueryParameter error,key="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_1
    :goto_0
    return-object p0

    .line 239
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 240
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    .line 242
    :cond_3
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iget-object v0, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    .line 212
    return-object p0
.end method

.method public addMteeUa(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 221
    const-string/jumbo v0, "ua"

    invoke-virtual {p0, v0, p1}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 222
    return-object p0
.end method

.method public addOpenApiParams(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    .line 314
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p2, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public asyncRequest()Lmtopsdk/mtop/common/ApiID;
    .locals 6

    .prologue
    .line 419
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 420
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->createMtopProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/MtopProxy;

    move-result-object v1

    .line 422
    invoke-static {v1}, Lmtopsdk/mtop/offline/OfflineHelper;->isNeedOffline(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 424
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestManager;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/offline/OfflineRequestManager;->addOfflineRequest(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 425
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SUCCESS"

    const-string/jumbo v5, "\u79bb\u7ebf\u8c03\u7528\u6210\u529f"

    invoke-direct {v0, v2, v3, v4, v5}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    instance-of v2, v2, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-eqz v2, :cond_0

    .line 429
    new-instance v2, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v2, v0}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 430
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    iget-object v3, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 433
    :cond_0
    new-instance v0, Lmtopsdk/mtop/common/ApiID;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lmtopsdk/mtop/common/ApiID;-><init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V

    .line 438
    :goto_0
    return-object v0

    .line 437
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    goto :goto_0
.end method

.method public fullBaseUrl(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 199
    if-eqz p1, :cond_0

    .line 200
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->fullBaseUrl:Ljava/lang/String;

    .line 202
    :cond_0
    return-object p0
.end method

.method public get()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 364
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method

.method public getReqContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    return-object v0
.end method

.method public handler(Landroid/os/Handler;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    .line 253
    return-object p0
.end method

.method public headers(Ljava/util/Map;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lmtopsdk/mtop/intf/MtopBuilder;"
        }
    .end annotation

    .prologue
    .line 160
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 167
    :cond_0
    :goto_0
    return-object p0

    .line 164
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRequestHeaders(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected mtopCommitStatData(Z)V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    iput-boolean p1, v0, Lmtopsdk/mtop/util/MtopStatistics;->commitStat:Z

    .line 481
    return-void
.end method

.method public post()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 353
    invoke-virtual {p0}, Lmtopsdk/mtop/intf/MtopBuilder;->syncRequest()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method

.method public protocol(Lmtopsdk/mtop/domain/ProtocolEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setProtocol(Lmtopsdk/mtop/domain/ProtocolEnum;)V

    .line 191
    :cond_0
    return-object p0
.end method

.method public reqContext(Ljava/lang/Object;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 130
    return-object p0
.end method

.method public reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 282
    :cond_0
    return-object p0
.end method

.method public retryTime(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRetryTime(I)V

    .line 153
    return-object p0
.end method

.method public setCacheControlNoCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->getRequestHeaders()Ljava/util/Map;

    move-result-object v0

    .line 176
    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    :cond_0
    const-string/jumbo v1, "cache-control"

    const-string/jumbo v2, "no-cache"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/common/MtopNetworkProp;->setRequestHeaders(Ljava/util/Map;)V

    .line 181
    return-object p0
.end method

.method public setConnectionTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 325
    if-lez p1, :cond_0

    .line 326
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->connTimeout:I

    .line 329
    :cond_0
    return-object p0
.end method

.method public setJsonType(Lmtopsdk/mtop/domain/JsonTypeEnum;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .prologue
    .line 298
    if-eqz p1, :cond_0

    .line 300
    const-string/jumbo v0, "type"

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/JsonTypeEnum;->getJsonType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->addHttpQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;

    .line 302
    :cond_0
    return-object p0
.end method

.method public setSocketTimeoutMilliSecond(I)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 338
    if-lez p1, :cond_0

    .line 339
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->socketTimeout:I

    .line 341
    :cond_0
    return-object p0
.end method

.method public syncRequest()Lmtopsdk/mtop/domain/MtopResponse;
    .locals 5

    .prologue
    .line 375
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->stat:Lmtopsdk/mtop/util/MtopStatistics;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/MtopStatistics;->onStart()V

    .line 376
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->listener:Lmtopsdk/mtop/common/MtopListener;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/intf/MtopBuilder;->createListenerProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;

    move-result-object v1

    .line 377
    invoke-direct {p0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->createMtopProxy(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/MtopProxy;

    move-result-object v0

    .line 379
    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineHelper;->isNeedOffline(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestManager;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->addOfflineRequest(Lmtopsdk/mtop/MtopProxy;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 382
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "SUCCESS"

    const-string/jumbo v4, "\u79bb\u7ebf\u8c03\u7528\u6210\u529f"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_0
    :goto_0
    return-object v0

    .line 388
    :cond_1
    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    .line 391
    monitor-enter v1

    .line 393
    :try_start_0
    iget-object v0, v1, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    if-nez v0, :cond_2

    .line 394
    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 399
    :cond_2
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    iget-object v0, v1, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->response:Lmtopsdk/mtop/domain/MtopResponse;

    .line 402
    iget-object v2, v1, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->context:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 403
    iget-object v1, v1, Lmtopsdk/mtop/common/listener/MtopBaseListenerProxy;->context:Ljava/lang/Object;

    iput-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->requestContext:Ljava/lang/Object;

    .line 405
    :cond_3
    if-nez v0, :cond_0

    .line 406
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    iget-object v1, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ANDROID_SYS_MTOP_APICALL_ASYNC_TIMEOUT"

    const-string/jumbo v4, "MTOP\u5f02\u6b65\u8c03\u7528\u8d85\u65f6"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    :try_start_2
    const-string/jumbo v2, "mtopsdk.MtopBuilder"

    const-string/jumbo v3, "[apiCall] error"

    invoke-static {v2, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public ttid(Ljava/lang/String;)Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    iput-object p1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    .line 122
    return-object p0
.end method

.method public unredirect()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setAutoRedirect(Z)V

    .line 145
    return-object p0
.end method

.method public useCache()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useCache:Z

    .line 262
    return-object p0
.end method

.method public useWua()Lmtopsdk/mtop/intf/MtopBuilder;
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmtopsdk/mtop/common/MtopNetworkProp;->useWua:Z

    .line 272
    return-object p0
.end method
