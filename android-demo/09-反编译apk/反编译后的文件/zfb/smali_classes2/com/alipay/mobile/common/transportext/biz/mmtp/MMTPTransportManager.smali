.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;
.super Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;
.source "MMTPTransportManager.java"


# static fields
.field private static final SHARED_INIT_KEY:Ljava/lang/String; = "amnet_init_info"


# instance fields
.field private volatile initd:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->initd:Z

    .line 49
    return-void
.end method

.method private regAmnetServiceBean()V
    .locals 3

    .prologue
    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v0

    .line 108
    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/AcceptDataListenServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcDataListenService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method private regProcBindedEvent()V
    .locals 2

    .prologue
    .line 102
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager$BindPushServiceFactory;->getInstance()Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;

    move-result-object v0

    .line 103
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/push/BindPushServiceManager;->addBindEventListener(Lcom/alipay/mobile/common/ipc/api/push/BindEventListener;)V

    .line 104
    return-void
.end method


# virtual methods
.method public getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->initd:Z

    if-nez v0, :cond_1

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->initd:Z

    if-nez v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->init(Landroid/content/Context;)V

    .line 120
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/MRpcClient;

    move-result-object v0

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 53
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->mContext:Landroid/content/Context;

    .line 55
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->initd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    monitor-exit p0

    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->initd:Z

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->setAppContext(Landroid/content/Context;)V

    .line 65
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetAppEventListener;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->register(Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;)V

    .line 69
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPGeneralListenerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPGeneralListenerImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncManager;->onInitialize()V

    .line 78
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addSyncAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 82
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;->getInstance()Lcom/alipay/mobile/common/transportext/biz/sync/SyncDataListanerImplDirect;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addSyncDirectAcceptDataListener(Lcom/alipay/mobile/common/amnet/api/AcceptDataListener;)V

    .line 85
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/sync/SyncGeneralListenerImpl;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->addGeneraEventListener(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V

    .line 90
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/mrpc/internal/MRpcConnection;

    .line 93
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->regAmnetServiceBean()V

    .line 95
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->regProcBindedEvent()V

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->preWriteInitInfo()V

    .line 98
    const-string/jumbo v0, "MMTPTransportManager"

    const-string/jumbo v1, "Main Process init finish!!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;->initd:Z

    return v0
.end method

.method public preWriteInitInfo()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v1

    .line 134
    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;->collect(Ljava/util/Map;)Ljava/util/Map;

    .line 135
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    const-string/jumbo v1, "MMTPTransportManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " preWriteInitInfo jsonInit = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "amnet_init_info"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/transport/utils/SharedPreUtils;->putData(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 140
    :cond_0
    const-string/jumbo v1, "MMTPTransportManager"

    const-string/jumbo v2, " preWriteInitInfo jsonInit "

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
