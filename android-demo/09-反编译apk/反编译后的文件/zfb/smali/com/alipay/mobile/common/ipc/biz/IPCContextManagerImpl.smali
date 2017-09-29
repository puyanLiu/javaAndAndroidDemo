.class public Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;
.super Ljava/lang/Object;
.source "IPCContextManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/IPCContextManager;


# instance fields
.field private context:Landroid/content/Context;

.field private iIpcCallBack:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

.field private iIpcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

.field private ipcCallManager:Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

.field private localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

.field private serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public getIIPCCallBack()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcCallBack:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/alipay/mobile/common/ipc/biz/IPCCallBackService;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/biz/IPCCallBackService;-><init>()V

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->getLocalCallManager()Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ipc/biz/IPCCallBackService;->setLocalCallManager(Lcom/alipay/mobile/common/ipc/api/LocalCallManager;)V

    .line 80
    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcCallBack:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcCallBack:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    return-object v0
.end method

.method public getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->ipcCallManager:Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->ipcCallManager:Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->ipcCallManager:Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    return-object v0
.end method

.method public getLocalCallManager()Lcom/alipay/mobile/common/ipc/api/LocalCallManager;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->getServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;-><init>(Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    return-object v0
.end method

.method public getServiceBeanManager()Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/biz/ServiceBeanManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
    .locals 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 39
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->getIpcCallManager()Lcom/alipay/mobile/common/ipc/api/IPCCallManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/IPCCallManager;->setIIPCManager(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    instance-of v0, v0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    check-cast v0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->getLocalCallManager()Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->setLocalCallManager(Lcom/alipay/mobile/common/ipc/api/LocalCallManager;)V

    .line 49
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->iIpcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/biz/IPCContextManagerImpl;->getIIPCCallBack()Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;->registerCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
