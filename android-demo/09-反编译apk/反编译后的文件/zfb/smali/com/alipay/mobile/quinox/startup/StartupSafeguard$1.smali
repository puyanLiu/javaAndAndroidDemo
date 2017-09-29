.class Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;
.super Ljava/lang/Object;
.source "StartupSafeguard.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:I

.field final synthetic this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;II)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    iput p2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->a:I

    iput p3, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->b:I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->access$0(Lcom/alipay/mobile/quinox/startup/StartupSafeguard;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->this$0:Lcom/alipay/mobile/quinox/startup/StartupSafeguard;

    iget v1, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->a:I

    iget v2, p0, Lcom/alipay/mobile/quinox/startup/StartupSafeguard$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/quinox/startup/StartupSafeguard;->handlePendingOnStartup(II)V

    .line 154
    :cond_0
    return-void
.end method
