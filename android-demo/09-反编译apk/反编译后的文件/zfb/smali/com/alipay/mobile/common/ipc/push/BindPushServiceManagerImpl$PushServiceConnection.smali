.class Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;
.super Ljava/lang/Object;
.source "BindPushServiceManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

.field final synthetic this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V
    .locals 1

    .prologue
    .line 149
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 155
    invoke-static {p2}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$100(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/ipc/api/IPCApiFactory;->getSingletonIPCContextManager()Lcom/alipay/mobile/common/ipc/api/IPCContextManager;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$200(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/ipc/api/IPCContextManager;->init(Landroid/content/Context;Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->setBindedService(Z)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$300(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    .line 171
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "onServiceConnected finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string/jumbo v1, "IPC_BindPushServiceManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 165
    :catch_1
    move-exception v0

    .line 166
    const-string/jumbo v1, "IPC_BindPushServiceManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->ipcManager:Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$400(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    .line 178
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "onServiceDisconnected ipcManager != null"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$PushServiceConnection;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->setBindedService(Z)V

    .line 181
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "onServiceDisconnected finish"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method
