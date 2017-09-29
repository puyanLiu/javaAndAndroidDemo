.class Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;
.super Ljava/lang/Object;
.source "BindPushServiceManagerImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 190
    const-string/jumbo v0, "IPC_BindPushServiceManager"

    const-string/jumbo v1, "IPCManagerDeathRecipient#binderDied"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->setBindedService(Z)V

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->access$400(Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;)V

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl$IPCManagerDeathRecipient;->this$0:Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/ipc/push/BindPushServiceManagerImpl;->bindService()V

    .line 194
    return-void
.end method
