.class public Lmtopsdk/mtop/config/SwitchConfigManager;
.super Ljava/lang/Object;
.source "SwitchConfigManager.java"


# static fields
.field private static volatile instance:Lmtopsdk/mtop/config/SwitchConfigManager;

.field private static switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    sput-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->instance:Lmtopsdk/mtop/config/SwitchConfigManager;

    .line 30
    sput-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    iput-object v0, p0, Lmtopsdk/mtop/config/SwitchConfigManager;->TAG:Ljava/lang/String;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/config/SwitchConfigManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lmtopsdk/mtop/config/SwitchConfigManager;->getApiConfigStoreName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getApiConfigStoreName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 229
    const-string/jumbo v0, "ApiConfigStore"

    .line 230
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 233
    :cond_0
    return-object v0
.end method

.method public static getInstance()Lmtopsdk/mtop/config/SwitchConfigManager;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->instance:Lmtopsdk/mtop/config/SwitchConfigManager;

    if-nez v0, :cond_1

    .line 37
    const-class v1, Lmtopsdk/mtop/config/SwitchConfigManager;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->instance:Lmtopsdk/mtop/config/SwitchConfigManager;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lmtopsdk/mtop/config/SwitchConfigManager;

    invoke-direct {v0}, Lmtopsdk/mtop/config/SwitchConfigManager;-><init>()V

    sput-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->instance:Lmtopsdk/mtop/config/SwitchConfigManager;

    .line 41
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    :cond_1
    sget-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->instance:Lmtopsdk/mtop/config/SwitchConfigManager;

    return-object v0

    .line 41
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initLoaclSwitchSetting()V
    .locals 2

    .prologue
    .line 113
    invoke-virtual {p0}, Lmtopsdk/mtop/config/SwitchConfigManager;->updataSecurityAppKeyApiList()V

    .line 114
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "initLoaclSwitchSetting succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private initLocalApiConfigSetting()V
    .locals 5

    .prologue
    .line 241
    invoke-static {}, Lmtopsdk/common/util/ConfigStoreManager;->getInstance()Lmtopsdk/common/util/ConfigStoreManager;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lmtopsdk/mtop/config/SwitchConfigManager;->getApiConfigStoreName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmtopsdk/common/util/ConfigStoreManager;->getAllConfigItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 243
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 245
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-class v3, Lmtopsdk/mtop/config/ApiConfig;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmtopsdk/mtop/config/ApiConfig;

    .line 246
    if-eqz v1, :cond_0

    .line 248
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lmtopsdk/mtop/global/SwitchConfig;->setApiConfig(Ljava/lang/String;Lmtopsdk/mtop/config/ApiConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 250
    :catch_0
    move-exception v0

    .line 251
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[initLocalApiConfigSetting] parse apiConfigStr from localStore error.---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :cond_1
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "[initLocalApiConfigSetting]load  apiconfigs from localStore succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :cond_2
    return-void
.end method

.method private initSwitchConfigReceiverRegister()V
    .locals 4

    .prologue
    .line 100
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "mtopsdk_android_switch"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->addIntentActionNameMapping([Ljava/lang/String;)V

    .line 101
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    const-string/jumbo v1, "mtopsdk_android_switch"

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->getIntentActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lmtopsdk/mtop/config/SwitchConfigManager;->registerSwitchConfigReceiver(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    :cond_0
    return-void
.end method


# virtual methods
.method public initConfigReceiverAndLoadLocalConfig()V
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->initCacheConfigReceiverRegister()V

    .line 125
    invoke-direct {p0}, Lmtopsdk/mtop/config/SwitchConfigManager;->initSwitchConfigReceiverRegister()V

    .line 127
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->initLoaclCacheSetting()V

    .line 128
    invoke-direct {p0}, Lmtopsdk/mtop/config/SwitchConfigManager;->initLoaclSwitchSetting()V

    .line 130
    invoke-direct {p0}, Lmtopsdk/mtop/config/SwitchConfigManager;->initLocalApiConfigSetting()V

    .line 132
    return-void
.end method

.method public registerSwitchConfigReceiver(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "[registerSwitchConfigReceiver] Context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lmtopsdk/mtop/config/SwitchConfigReceiver;

    invoke-direct {v0}, Lmtopsdk/mtop/config/SwitchConfigReceiver;-><init>()V

    sput-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;

    .line 61
    :try_start_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "[registerSwitchConfigReceiver] actionName is blank"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v2, "registerSwitchConfigReceiver failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 66
    sget-object v1, Lmtopsdk/mtop/config/SwitchConfigManager;->switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 67
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerSwitchConfigReceiver succeed.actionName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public unRegisterSwitchConfigReceiver(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 80
    if-nez p1, :cond_1

    .line 81
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "[unRegisterSwitchConfigReceiver] Context is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/config/SwitchConfigManager;->switchConfigReceiver:Lmtopsdk/mtop/config/SwitchConfigReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v2, "unRegisterCacheConfigReceiver failed"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updataAndStoreApiConfig(Lmtopsdk/mtop/config/ApiConfig;)V
    .locals 4

    .prologue
    .line 184
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmtopsdk/mtop/config/ApiConfig;->configVersion:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p1, Lmtopsdk/mtop/config/ApiConfig;->apiName:Ljava/lang/String;

    iget-object v1, p1, Lmtopsdk/mtop/config/ApiConfig;->apiVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 193
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lmtopsdk/mtop/global/SwitchConfig;->setApiConfig(Ljava/lang/String;Lmtopsdk/mtop/config/ApiConfig;)V

    .line 194
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updataAndStoreApiConfig]updata runtime apiconfig,apiKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",apiconfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lmtopsdk/mtop/config/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_2
    new-instance v1, Lmtopsdk/mtop/config/SwitchConfigManager$1;

    invoke-direct {v1, p0, p1, v0}, Lmtopsdk/mtop/config/SwitchConfigManager$1;-><init>(Lmtopsdk/mtop/config/SwitchConfigManager;Lmtopsdk/mtop/config/ApiConfig;Ljava/lang/String;)V

    .line 219
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submit storeApiConfigTask to ThreadPool error ---"

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

.method public updataSecurityAppKeyApiList()V
    .locals 5

    .prologue
    .line 140
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mtopsdk_android_switch"

    const-string/jumbo v3, "includeApiList"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    :try_start_0
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SwitchConfig;->getSecurityApiSets()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updataSecurityAppKeyApiList]parse and include security appkey apiList error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_1
    :goto_1
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mtopsdk_android_switch"

    const-string/jumbo v3, "excludeApiList"

    const-string/jumbo v4, ""

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 160
    :try_start_1
    const-class v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 162
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 163
    if-eqz v0, :cond_2

    .line 164
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SwitchConfig;->getSecurityApiSets()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 170
    :catch_1
    move-exception v0

    .line 171
    const-string/jumbo v1, "mtopsdk.SwitchConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[updataSecurityAppKeyApiList]parse and exclude security appkey apiList error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_3
    :goto_3
    return-void

    .line 151
    :cond_4
    :try_start_2
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "parse and include security appkey apiList succeed"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 167
    :cond_5
    :try_start_3
    const-string/jumbo v0, "mtopsdk.SwitchConfigManager"

    const-string/jumbo v1, "parse and exclude security appkey apiList succeed"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
