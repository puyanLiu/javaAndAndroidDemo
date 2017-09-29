.class public Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;
.super Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;
.source "ExtTransportManagerImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtTransportManagerImpl"


# instance fields
.field private inited:Z

.field private mAppVisibleReceiver:Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;

.field private mContext:Landroid/content/Context;

.field private mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->inited:Z

    return-void
.end method

.method private getExtRpcManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;
    .locals 1

    .prologue
    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->getMMTPTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    .line 112
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    return-object v0

    .line 109
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->getSpdyTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    goto :goto_0
.end method

.method private initToastNetworkType()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mAppVisibleReceiver:Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mAppVisibleReceiver:Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mAppVisibleReceiver:Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransAppVisibleReceiver;->regiester()V

    goto :goto_0
.end method

.method private regCommonServiceBeans()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v0

    .line 161
    const-class v1, Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/config/MainProcConfigListenServiceImpl;->getInstance()Lcom/alipay/mobile/common/transport/ext/MainProcConfigListenService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 162
    const-class v1, Lcom/alipay/mobile/common/transport/httpdns/ipc/MainProcReloadDnsService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/httpdns/MainProcReloadDnsServiceImpl;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/biz/httpdns/MainProcReloadDnsServiceImpl;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method private regTunnelChgEvents()V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v1

    const-class v0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTunnelChgListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->addNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v1

    const-class v0, Lcom/alipay/mobile/common/transportext/biz/sync/SyncTunnelChgListener;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/BeanFactory;->getBean(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->addNetworkTunnelChangedListener(Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelChangedListener;)V

    .line 157
    return-void
.end method

.method private setIPCRetryHandler()V
    .locals 2

    .prologue
    .line 147
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    .line 148
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransIPCRetryHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransIPCRetryHandler;-><init>()V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->setIPCCallRetryHandler(Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private triggerTestCases()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;-><init>(Landroid/content/Context;)V

    .line 117
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->tryTriggerTest()V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-static {p1, p2}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->configInit(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 71
    iget-object v1, p2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    if-nez v1, :cond_1

    .line 72
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v1, "ExtTransportManagerImpl"

    const-string/jumbo v2, "getExtTransportClient.   transportContext.currentReqInfo.use == false. return null."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :cond_0
    :goto_0
    return-object v0

    .line 79
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->isAmnetActivite()Z

    move-result v1

    if-nez v1, :cond_2

    .line 81
    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "============Amnet hasn\'t actived, return null=========="

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->getExtRpcManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;->getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;

    move-result-object v0

    goto :goto_0
.end method

.method public getMMTPTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPTransportManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    return-object v0
.end method

.method public getSpdyTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mExtRpcManager:Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->inited:Z

    if-eqz v0, :cond_0

    .line 66
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->inited:Z

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->setAppContext(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->getExtRpcManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;->init(Landroid/content/Context;)V

    .line 60
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->regTunnelChgEvents()V

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->setIPCRetryHandler()V

    .line 62
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->regCommonServiceBeans()V

    .line 63
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/config/SharedSwitchChangedListener;-><init>()V

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/SharedSwitchUtil;->addSwitchChangedListener(Ljava/util/Observer;)V

    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->triggerTestCases()V

    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->initToastNetworkType()V

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerImpl;->inited:Z

    return v0
.end method
