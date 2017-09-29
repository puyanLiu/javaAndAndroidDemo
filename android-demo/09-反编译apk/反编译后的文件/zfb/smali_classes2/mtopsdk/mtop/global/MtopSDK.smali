.class public Lmtopsdk/mtop/global/MtopSDK;
.super Ljava/lang/Object;
.source "MtopSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopSDK"

.field private static initLock:Ljava/lang/Object;

.field private static volatile isInit:Z

.field private static sdkConfig:Lmtopsdk/mtop/global/SDKConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    return v0
.end method

.method static synthetic access$200(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0, p1, p2}, Lmtopsdk/mtop/global/MtopSDK;->executeInitCoreTask(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lmtopsdk/mtop/global/MtopSDK;->executeInitExtraTask(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400()Lmtopsdk/mtop/global/SDKConfig;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    return-object v0
.end method

.method static synthetic access$500(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lmtopsdk/mtop/global/MtopSDK;->reInitISign(Lmtopsdk/mtop/domain/EnvModeEnum;)V

    return-void
.end method

.method static synthetic access$600(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lmtopsdk/mtop/global/MtopSDK;->initTaoConfigCenter(Landroid/content/Context;)V

    return-void
.end method

.method public static checkMtopSDKInit()V
    .locals 5

    .prologue
    .line 335
    sget-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-eqz v0, :cond_0

    .line 351
    :goto_0
    return-void

    .line 338
    :cond_0
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    sget-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-nez v0, :cond_1

    .line 341
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 342
    sget-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-nez v0, :cond_1

    .line 343
    const-string/jumbo v0, "[init]Didn\'t call MtopSDK.init(...),please execute global init."

    .line 344
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const v2, 0xfb86

    const-string/jumbo v3, "MTOPSDK_GLOBAL_INIT_ERROR"

    const-string/jumbo v4, "MTOPSDK\u5168\u5c40\u521d\u59cb\u5316\u672a\u9519\u8bef"

    invoke-static {v2, v3, v4, v0}, Lmtopsdk/common/util/UTAdapter;->commit(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_1
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    :try_start_2
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[init] wait MtopSDK initLock failed---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private static executeInitCoreTask(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 107
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[init]MtopSDK initcore start"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :try_start_0
    invoke-static {p0, p2}, Lmtopsdk/mtop/global/MtopSDK;->initBaseInfoBeforeISign(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p1}, Lmtopsdk/mtop/global/MtopSDK;->initISign(Landroid/content/Context;Lmtopsdk/security/ISign;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    sput-boolean v4, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 115
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 117
    :goto_0
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[init]MtopSDK initcore end"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :try_start_1
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lmtopsdk/mtop/global/MtopSDK$2;

    invoke-direct {v1, p0}, Lmtopsdk/mtop/global/MtopSDK$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :goto_1
    return-void

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[init] MtopSDK initcore error---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 114
    sput-boolean v4, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 115
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    sput-boolean v4, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 115
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->initLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    throw v0

    .line 127
    :catch_1
    move-exception v0

    .line 128
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[init]submit initExtraTask to ThreadPool error ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static executeInitExtraTask(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 138
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[init]MtopSDK initextra start"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getInstance()Lmtopsdk/mtop/deviceid/DeviceIDManager;

    move-result-object v0

    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lmtopsdk/mtop/deviceid/DeviceIDManager;->getDeviceID(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 142
    invoke-static {p0}, Lmtopsdk/mtop/global/MtopSDK;->initTaoConfigCenter(Landroid/content/Context;)V

    .line 144
    invoke-static {}, Lmtopsdk/mtop/config/SwitchConfigManager;->getInstance()Lmtopsdk/mtop/config/SwitchConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/config/SwitchConfigManager;->initConfigReceiverAndLoadLocalConfig()V

    .line 146
    invoke-static {p0}, Lanetwork/channel/monitor/Monitor;->a(Landroid/content/Context;)V

    .line 148
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestManager;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestManager;

    .line 149
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, "[init]MtopSDK initextra end"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v2}, Lmtopsdk/mtop/global/MtopSDK;->init(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit v0

    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    const-class v0, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1, p1}, Lmtopsdk/mtop/global/MtopSDK;->init(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized init(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 75
    const-class v1, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lmtopsdk/mtop/global/MtopSDK$1;

    invoke-direct {v0, p0, p1, p2}, Lmtopsdk/mtop/global/MtopSDK$1;-><init>(Landroid/content/Context;Lmtopsdk/security/ISign;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :try_start_1
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    :try_start_2
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[init]submit initTask to ThreadPool error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static initBaseInfoBeforeISign(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalContext(Landroid/content/Context;)Lmtopsdk/mtop/global/SDKConfig;

    .line 164
    invoke-static {p0}, Lmtopsdk/xstate/XState;->a(Landroid/content/Context;)V

    .line 167
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalTtid(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 170
    :cond_0
    return-void
.end method

.method private static initISign(Landroid/content/Context;Lmtopsdk/security/ISign;)V
    .locals 3

    .prologue
    .line 179
    if-nez p1, :cond_0

    .line 181
    new-instance p1, Lmtopsdk/security/SecuritySignImpl;

    invoke-direct {p1}, Lmtopsdk/security/SecuritySignImpl;-><init>()V

    .line 183
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalOnlineAppKeyIndex()I

    move-result v0

    invoke-interface {p1, p0, v0}, Lmtopsdk/security/ISign;->a(Landroid/content/Context;I)V

    .line 184
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalSign(Lmtopsdk/security/ISign;)Lmtopsdk/mtop/global/SDKConfig;

    .line 185
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    new-instance v1, Lmtopsdk/security/ISign$SignCtx;

    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalOnlineAppKeyIndex()I

    move-result v2

    invoke-direct {v1, v2}, Lmtopsdk/security/ISign$SignCtx;-><init>(I)V

    invoke-interface {p1, v1}, Lmtopsdk/security/ISign;->a(Lmtopsdk/security/ISign$SignCtx;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 186
    return-void
.end method

.method private static initTaoConfigCenter(Landroid/content/Context;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 296
    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "mtopsdk_android_switch"

    aput-object v1, v6, v5

    const-string/jumbo v1, "mtopsdk_apicache_blockinfo"

    aput-object v1, v6, v0

    .line 297
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v7

    .line 298
    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eq v1, v2, :cond_0

    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-ne v1, v2, :cond_1

    :cond_0
    move v5, v0

    .line 299
    :cond_1
    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v2, "defaultDeviceId"

    .line 300
    :goto_0
    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v3, "1.0.0"

    .line 303
    :goto_1
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v1

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/taobao/wswitch/business/ConfigContainer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z[Ljava/lang/String;)V

    .line 304
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "appKey="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ";deviceId="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";appVersion="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";isPrd="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ";groupNames="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    const-string/jumbo v1, "mtopsdk.MtopSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initconfigcenter  parameter:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_2
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v1, " [initTaoConfigCenter] init configcenter."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    return-void

    .line 299
    :cond_3
    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 300
    :cond_4
    invoke-virtual {v7}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppVersion()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private static reInitISign(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 4

    .prologue
    .line 279
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lmtopsdk/security/ISign;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 281
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalOnlineAppKeyIndex()I

    move-result v0

    .line 282
    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 283
    :cond_0
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDailyAppKeyIndex()I

    move-result v0

    .line 285
    :cond_1
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lmtopsdk/security/ISign;

    move-result-object v1

    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lmtopsdk/security/ISign;->a(Landroid/content/Context;I)V

    .line 286
    sget-object v1, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    sget-object v2, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lmtopsdk/security/ISign;

    move-result-object v2

    new-instance v3, Lmtopsdk/security/ISign$SignCtx;

    invoke-direct {v3, v0}, Lmtopsdk/security/ISign$SignCtx;-><init>(I)V

    invoke-interface {v2, v3}, Lmtopsdk/security/ISign;->a(Lmtopsdk/security/ISign$SignCtx;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/global/SDKConfig;->setGlobalAppKey(Ljava/lang/String;)Lmtopsdk/mtop/global/SDKConfig;

    .line 289
    :cond_2
    return-void
.end method

.method public static setLogSwitch(Z)V
    .locals 0

    .prologue
    .line 324
    invoke-static {p0}, Lmtopsdk/common/util/TBSdkLog;->setPrintLog(Z)V

    .line 325
    return-void
.end method

.method public static declared-synchronized switchEnvMode(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    .locals 5

    .prologue
    .line 209
    const-class v1, Lmtopsdk/mtop/global/MtopSDK;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 273
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 212
    :cond_1
    :try_start_1
    const-string/jumbo v0, "mtopsdk.MtopSDK"

    const-string/jumbo v2, "[switchEnvMode]MtopSDK switchEnvMode Called"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v0, Lmtopsdk/mtop/global/MtopSDK$3;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/global/MtopSDK$3;-><init>(Lmtopsdk/mtop/domain/EnvModeEnum;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 267
    :try_start_2
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    :try_start_3
    const-string/jumbo v2, "mtopsdk.MtopSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[switchEnvMode]submit switchEnvTask to ThreadPool error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static unInit()V
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lmtopsdk/xstate/XState;->a()V

    .line 196
    sget-object v0, Lmtopsdk/mtop/global/MtopSDK;->sdkConfig:Lmtopsdk/mtop/global/SDKConfig;

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalProperties()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 197
    invoke-static {}, Lmtopsdk/common/util/UTAdapter;->unInit()V

    .line 199
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/global/MtopSDK;->isInit:Z

    .line 200
    return-void
.end method
