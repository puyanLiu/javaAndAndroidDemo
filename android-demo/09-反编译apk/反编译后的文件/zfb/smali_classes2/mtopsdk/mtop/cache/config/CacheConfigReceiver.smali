.class public Lmtopsdk/mtop/cache/config/CacheConfigReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CacheConfigReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheConfigReceiver"

.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->updateApiCacheDetail(Ljava/util/Map;)V

    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "CacheConfigReceiver.java"

    const-class v2, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-execution"

    const-string/jumbo v1, "1"

    const-string/jumbo v2, "onReceive"

    const-string/jumbo v3, "mtopsdk.mtop.cache.config.CacheConfigReceiver"

    const-string/jumbo v4, "android.content.Context:android.content.Intent"

    const-string/jumbo v5, "context:intent"

    const-string/jumbo v6, ""

    const-string/jumbo v7, "void"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x26

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private getApiCacheDetailFromCDN(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string/jumbo v0, "mtopsdk.CacheConfigReceiver"

    const-string/jumbo v2, "[getApiCacheDetailDoFromCDN] invalid cdn url"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-object v1

    .line 129
    :cond_0
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 132
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    new-instance v2, Lanetwork/channel/http/HttpNetwork;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    .line 142
    new-instance v3, Lanetwork/channel/entity/RequestImpl;

    invoke-direct {v3, v0}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V

    .line 143
    invoke-interface {v2, v3}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_2

    invoke-interface {v0}, Lanetwork/channel/Response;->c()[B

    move-result-object v2

    if-eqz v2, :cond_2

    .line 147
    :try_start_1
    new-instance v2, Ljava/lang/String;

    invoke-interface {v0}, Lanetwork/channel/Response;->c()[B

    move-result-object v0

    const-string/jumbo v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 148
    const-class v0, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;

    invoke-static {v2, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    move-object v1, v0

    .line 155
    goto :goto_0

    .line 134
    :cond_1
    :try_start_2
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string/jumbo v2, "mtopsdk.CacheConfigReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getApiCacheDetailDoFromCDN] generate URL address error.---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string/jumbo v2, "mtopsdk.CacheConfigReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getApiCacheDetailDoFromCDN]parse apiCacheDetailDo json from cdn error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 151
    goto :goto_2

    .line 153
    :cond_2
    const-string/jumbo v0, "mtopsdk.CacheConfigReceiver"

    const-string/jumbo v2, "[getApiCacheDetailDoFromCDN] get apiCacheDetailDo  from cdn failed."

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2
.end method

.method private static final synthetic onReceive_aroundBody0(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V
    .locals 4

    .prologue
    .line 38
    if-nez p2, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    const-string/jumbo v2, "mtopsdk_apicache_blockinfo"

    invoke-virtual {v1, v2}, Lcom/taobao/wswitch/business/ConfigContainer;->getIntentActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const-string/jumbo v1, "mtopsdk.CacheConfigReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[onReceive]  received cacheconfig broadcast. actionName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->parseCacheConfigBroadcast()V

    goto :goto_0
.end method

.method private static final synthetic onReceive_aroundBody1$advice(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 10

    .prologue
    .line 86
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 87
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 88
    invoke-interface/range {p6 .. p6}, Lorg/aspectj/lang/JoinPoint;->getThis()Ljava/lang/Object;

    move-result-object v2

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 91
    invoke-static {p0, p1, p2, p3}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->onReceive_aroundBody0(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;)V

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 93
    const-string/jumbo v7, "Monitor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onReceive at: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, ", Intent: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v8, 0x1

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v2, v5, v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseCacheConfigBroadcast()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lmtopsdk/mtop/cache/config/CacheConfigReceiver$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver$1;-><init>(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;)V

    .line 71
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 72
    const-string/jumbo v0, "mtopsdk.CacheConfigReceiver"

    const-string/jumbo v1, "submit parse CacheConfig task to ThreadPool"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "mtopsdk.CacheConfigReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updateApiCacheBlockSetting]submit updateTask to ThreadPool error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateApiCacheDetail(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    if-nez p1, :cond_1

    .line 114
    :cond_0
    return-void

    .line 87
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v3

    .line 88
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 89
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    .line 93
    invoke-virtual {v3, v1}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheBlockConfigByBlockName(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    move-result-object v5

    .line 96
    if-eqz v5, :cond_3

    iget-wide v5, v5, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;->v:J

    iget-wide v7, v2, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;->v:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 98
    :cond_3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    iget-object v0, v0, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;->url:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->getApiCacheDetailFromCDN(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 105
    iget-object v5, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;->cacheBlock:Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;

    invoke-virtual {v3, v5}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->setCacheBlockConfig(Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;)V

    .line 107
    invoke-virtual {v3, v1, v0, v2}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->updateRuntimeApiCache(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;)V

    .line 109
    invoke-virtual {v3, v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->saveApiCacheDetail(Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 1
    sget-object v0, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, p0, p1, p2}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v3

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;->onReceive_aroundBody1$advice(Lmtopsdk/mtop/cache/config/CacheConfigReceiver;Landroid/content/Context;Landroid/content/Intent;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    return-void
.end method
