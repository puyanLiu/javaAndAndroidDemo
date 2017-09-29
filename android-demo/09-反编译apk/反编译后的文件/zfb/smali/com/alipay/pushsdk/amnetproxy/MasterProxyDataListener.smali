.class public Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;
.super Ljava/lang/Object;
.source "MasterProxyDataListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;


# static fields
.field private static MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener; = null

.field private static final TAG:Ljava/lang/String; = "amnet_MasterProxyDataListener"


# instance fields
.field private mainProcDataListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static final getInstance()Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;
    .locals 2

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    .line 42
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-class v1, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    if-eqz v0, :cond_1

    .line 37
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 39
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    invoke-direct {v0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;-><init>()V

    sput-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    .line 35
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    sget-object v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->MASTER_PROXY_DATA_LISTENER:Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;

    goto :goto_0
.end method


# virtual methods
.method public getMainProcDataListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->mainProcDataListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    if-nez v0, :cond_0

    .line 89
    const-class v0, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    invoke-static {v0}, Lcom/alipay/pushsdk/b;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    iput-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->mainProcDataListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->mainProcDataListenService:Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    return-object v0
.end method

.method public onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V
    .locals 3

    .prologue
    .line 51
    const-string/jumbo v0, "amnet_MasterProxyDataListener"

    const-string/jumbo v1, "start onAcceptedDataEvent"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const-string/jumbo v0, "amnet_MasterProxyDataListener"

    const-string/jumbo v1, "notifyAcceptedDataEvent to main proc!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getMainProcDataListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;->onAcceptedDataEvent(Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-byte v0, p1, Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;->channel:B

    invoke-static {v0}, Lcom/alipay/mobile/common/amnet/api/model/ChannelType;->isSync(B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alipay.mobile.rome.pushservice.integration.RecvMsgIntentService"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 64
    const-string/jumbo v0, "amnet_MasterProxyDataListener"

    const-string/jumbo v1, "Start power main proc!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    new-instance v0, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;

    invoke-direct {v0, p0, p1}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener$AyncDataEventTask;-><init>(Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;Lcom/alipay/mobile/common/amnet/api/model/AcceptedData;)V

    invoke-static {}, Lcom/alipay/pushsdk/util/b;->a()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    const-string/jumbo v1, "amnet_MasterProxyDataListener"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public recycle(BLjava/util/Map;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)V"
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getMainProcDataListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;->recycle(BLjava/util/Map;[B)V

    .line 78
    :cond_0
    return-void
.end method

.method public tell(BJII)V
    .locals 6

    .prologue
    .line 82
    invoke-static {}, Lcom/alipay/pushsdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/alipay/pushsdk/amnetproxy/MasterProxyDataListener;->getMainProcDataListenService()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;->tell(BJII)V

    .line 85
    :cond_0
    return-void
.end method
