.class public Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;
.super Ljava/lang/Object;
.source "AmnetHelper.java"


# static fields
.field private static AMNET_MANAGER:Lcom/alipay/mobile/common/amnet/api/AmnetManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->AMNET_MANAGER:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->AMNET_MANAGER:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    .line 28
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetBeanFactory;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    .line 28
    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->AMNET_MANAGER:Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    goto :goto_0
.end method

.method public static final getConnState()I
    .locals 2

    .prologue
    .line 52
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->waitToBinded()V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    .line 56
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;->getConnState()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v1, "AmnetHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final isAmnetActivite()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->getInstance()Lcom/alipay/mobile/common/amnet/ipcapi/mainproc/MainProcGeneralListenService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->isAmnetActived()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 81
    :goto_0
    return v0

    .line 71
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v1

    const-class v4, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    invoke-interface {v1, v4}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    .line 72
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->isBinded()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;->isAmnetActiveted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/foreign/GeneralEventListenServiceImpl;->setAmnetLifeState(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 75
    goto :goto_0

    :cond_1
    move v0, v3

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    const-string/jumbo v1, "AmnetHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v3

    .line 81
    goto :goto_0
.end method

.method public static final post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPException;

    const-string/jumbo v1, "isCanUseAmnet == false!"

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/mmtp/MMTPException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->getInstance()Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/mmtp/BindEventListenerManger;->waitToBinded()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;->secret:Z

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->getIpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;

    .line 44
    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/amnet/ipcapi/pushproc/AmnetClientService;->post(Lcom/alipay/mobile/common/amnet/api/model/AmnetPost;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string/jumbo v1, "AmnetHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
