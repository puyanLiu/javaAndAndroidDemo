.class public Lmtopsdk/mtop/cache/config/CacheConfigManager;
.super Ljava/lang/Object;
.source "CacheConfigManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheConfigManager"

.field private static cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

.field private static volatile instance:Lmtopsdk/mtop/cache/config/CacheConfigManager;


# instance fields
.field private apiCache:Lanetwork/network/cache/ApiCache;

.field private apiCacheBlockConfigGroup:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;",
            ">;"
        }
    .end annotation
.end field

.field private apiCacheGroup:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/cache/domain/ApiCacheDo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->instance:Lmtopsdk/mtop/cache/config/CacheConfigManager;

    .line 36
    sput-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCacheGroup:Ljava/util/Hashtable;

    .line 43
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCacheBlockConfigGroup:Ljava/util/Hashtable;

    .line 46
    return-void
.end method

.method public static getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->instance:Lmtopsdk/mtop/cache/config/CacheConfigManager;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Lmtopsdk/mtop/cache/config/CacheConfigManager;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->instance:Lmtopsdk/mtop/cache/config/CacheConfigManager;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;-><init>()V

    sput-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->instance:Lmtopsdk/mtop/cache/config/CacheConfigManager;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->instance:Lmtopsdk/mtop/cache/config/CacheConfigManager;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addApiCacheBlockConfigToGroup(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;)V
    .locals 1

    .prologue
    .line 113
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCacheBlockConfigGroup:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public addApiCacheDoToGroup(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheDo;)V
    .locals 1

    .prologue
    .line 124
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCacheGroup:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getApiCacheBlockConfigByBlockName(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;
    .locals 1

    .prologue
    .line 321
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCacheBlockConfigGroup:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    goto :goto_0
.end method

.method public getApiCacheDoByApiInfo(Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .locals 1

    .prologue
    .line 310
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    const/4 v0, 0x0

    .line 314
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v0

    goto :goto_0
.end method

.method public getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;
    .locals 1

    .prologue
    .line 302
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCacheGroup:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    goto :goto_0
.end method

.method public initCacheConfigReceiverRegister()V
    .locals 4

    .prologue
    .line 162
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "mtopsdk_apicache_blockinfo"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->addIntentActionNameMapping([Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    const-string/jumbo v1, "mtopsdk_apicache_blockinfo"

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->getIntentActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->registerCacheConfigReceiver(Landroid/content/Context;Ljava/lang/String;)V

    .line 167
    :cond_0
    return-void
.end method

.method public initLoaclCacheSetting()V
    .locals 4

    .prologue
    .line 135
    invoke-virtual {p0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->queryCacheBlockConfigFromConfigCenter()Ljava/util/Map;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "[initLoaclCacheSetting]apiCacheBlockConfigMap queryed from ConfigCenter is blank"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 143
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 144
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    .line 146
    invoke-virtual {p0, v1}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->queryApiCacheDetail(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;

    move-result-object v3

    .line 147
    if-eqz v3, :cond_2

    .line 148
    invoke-virtual {p0, v1, v3, v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->updateRuntimeApiCache(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;)V

    goto :goto_1

    .line 153
    :cond_3
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "initLoaclCacheSetting succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public queryApiCacheDetail(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-object v1

    .line 213
    :cond_1
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "CacheConfigStore"

    const-string/jumbo v4, "CACHE_BLOCK_PERFIX."

    invoke-virtual {v0, v2, v3, v4, p1}, Lmtopsdk/common/util/ConfigStoreManager;->getConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 221
    :try_start_0
    const-class v2, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_1
    const-string/jumbo v1, "mtopsdk.CacheConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[queryApiCacheDetail]query ApiCacheDetail with cacheBlockName="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 226
    goto :goto_0

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string/jumbo v2, "mtopsdk.CacheConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[queryApiCacheDetail] query and deserialize ApiCacheDetail error."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public queryCacheBlockConfigFromConfigCenter()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 234
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mtopsdk_apicache_blockinfo"

    invoke-virtual {v1, v2, v3}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfigByGroupName(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v1

    .line 236
    if-nez v1, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-object v0

    .line 239
    :cond_1
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/Config;->getData()Ljava/util/Map;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 246
    :cond_3
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 247
    const-string/jumbo v2, "mtopsdk.CacheConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[queryCacheBlockConfigFromConfigCenter] invalid apiblock config.  key="

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ",value="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 253
    :cond_4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v2, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    invoke-static {v1, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;

    .line 254
    if-eqz v1, :cond_2

    .line 255
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;->blockName:Ljava/lang/String;

    .line 256
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v1

    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    const-string/jumbo v2, "mtopsdk.CacheConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[queryCacheBlockConfigFromConfigCenter] parse apiblock config error. key="

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, ",value="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 265
    :cond_5
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "[queryCacheBlockConfigFromConfigCenter]  "

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 266
    goto/16 :goto_0
.end method

.method public registerCacheConfigReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "[registerCacheConfigReceiver] Context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v0, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    invoke-direct {v0}, Lmtopsdk/mtop/cache/config/CacheConfigReceiver;-><init>()V

    sput-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    .line 73
    :try_start_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "[registerCacheConfigReceiver] actionName is blank"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v1, "mtopsdk.CacheConfigManager"

    const-string/jumbo v2, "registerCacheConfigReceiver failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 77
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    sget-object v1, Lmtopsdk/mtop/cache/config/CacheConfigManager;->cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerCacheConfigReceiver succeed.actionName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveApiCacheDetail(Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;)V
    .locals 6

    .prologue
    .line 175
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;->cacheBlock:Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 181
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CacheConfigStore"

    const-string/jumbo v3, "CACHE_BLOCK_PERFIX."

    iget-object v4, p1, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;->cacheBlock:Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;

    iget-object v4, v4, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockName:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lmtopsdk/common/util/ConfigStoreManager;->saveConfigItem(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "[saveApiCacheDetail]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string/jumbo v1, "mtopsdk.CacheConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[saveApiCacheDetail]serialize and save ApiCacheDetailDo  error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCacheBlockConfig(Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;)V
    .locals 7

    .prologue
    .line 192
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockName:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCache:Lanetwork/network/cache/ApiCache;

    if-nez v0, :cond_2

    .line 196
    new-instance v0, Lanetwork/network/cache/ApiCache;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/cache/ApiCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCache:Lanetwork/network/cache/ApiCache;

    .line 198
    :cond_2
    new-instance v0, Lanetwork/network/cache/CacheBlockConfig;

    iget-object v1, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockName:Ljava/lang/String;

    iget-wide v2, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->blockSize:J

    iget-boolean v4, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->isCompress:Z

    iget-boolean v5, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->isEncrypt:Z

    iget-boolean v6, p1, Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;->isRemovable:Z

    invoke-direct/range {v0 .. v6}, Lanetwork/network/cache/CacheBlockConfig;-><init>(Ljava/lang/String;JZZZ)V

    .line 199
    iget-object v1, p0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->apiCache:Lanetwork/network/cache/ApiCache;

    invoke-static {v0}, Lanetwork/network/cache/ApiCache;->a(Lanetwork/network/cache/CacheBlockConfig;)Z

    goto :goto_0
.end method

.method public unRegisterCacheConfigReceiver(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 92
    if-nez p1, :cond_1

    .line 93
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    const-string/jumbo v1, "[unRegisterCacheConfigReceiver] Context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/cache/config/CacheConfigManager;->cacheConfigReceiver:Lmtopsdk/mtop/cache/config/CacheConfigReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    const-string/jumbo v1, "mtopsdk.CacheConfigManager"

    const-string/jumbo v2, "unRegisterCacheConfigReceiver failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateRuntimeApiCache(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;)V
    .locals 5

    .prologue
    .line 277
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    iget-object v0, p2, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;->cacheBlock:Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;

    iput-object v0, p3, Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;->cacheBlock:Lmtopsdk/mtop/cache/domain/ApiCacheBlockDo;

    .line 282
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->addApiCacheBlockConfigToGroup(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheBlockConfig;)V

    .line 284
    iget-object v0, p2, Lmtopsdk/mtop/cache/domain/ApiCacheDetailDo;->apiInfo:Ljava/util/Map;

    .line 285
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 286
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    iput-object p1, v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    .line 291
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    invoke-virtual {v3, v4, v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->addApiCacheDoToGroup(Ljava/lang/String;Lmtopsdk/mtop/cache/domain/ApiCacheDo;)V

    goto :goto_1

    .line 294
    :cond_3
    const-string/jumbo v0, "mtopsdk.CacheConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[updateRuntimeApiCache] update RuntimeApiCache with blockName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
