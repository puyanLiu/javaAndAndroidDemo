.class public Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;
.super Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;
.source "IPCManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "IPC_IPCManagerService"


# instance fields
.field private ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList",
            "<",
            "Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;-><init>()V

    .line 21
    new-instance v0, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    return-void
.end method


# virtual methods
.method public call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "IPCParameter=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/ipc/api/LocalCallManager;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    return-object v0
.end method

.method public callback(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 66
    const-string/jumbo v0, "IPC_IPCManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callback, ipcParameter="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->hashRegister()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "IPC_IPCManagerService"

    const-string/jumbo v2, "No registrant, return null!"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 86
    :goto_0
    return-object v0

    .line 73
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 76
    if-lez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 80
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->finishBroadcast()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 82
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 84
    const-string/jumbo v2, "IPC_IPCManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ipcParameter="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    .line 86
    goto :goto_0

    .line 80
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->finishBroadcast()V

    .line 82
    monitor-exit p0

    goto :goto_1

    .line 80
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->finishBroadcast()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public hashRegister()Z
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 54
    :goto_0
    const-string/jumbo v1, "IPC_IPCManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hashRegister="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return v0

    .line 53
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V
    .locals 3

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 39
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ipcCallBack register finish, result=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setLocalCallManager(Lcom/alipay/mobile/common/ipc/api/LocalCallManager;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->localCallManager:Lcom/alipay/mobile/common/ipc/api/LocalCallManager;

    .line 91
    return-void
.end method

.method public unregisterCallBack(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCCallBack;)V
    .locals 3

    .prologue
    .line 43
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCManagerService;->ipcCallbackContainer:Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/ipc/biz/EnhanceRemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ipcCallBack unregister finish, result=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
