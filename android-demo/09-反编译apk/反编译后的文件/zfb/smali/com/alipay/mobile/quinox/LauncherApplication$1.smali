.class Lcom/alipay/mobile/quinox/LauncherApplication$1;
.super Ljava/lang/Object;
.source "LauncherApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

.field final synthetic val$handlerThread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/quinox/LauncherApplication;Landroid/os/HandlerThread;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/alipay/mobile/quinox/LauncherApplication$1;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    iput-object p2, p0, Lcom/alipay/mobile/quinox/LauncherApplication$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$1;->this$0:Lcom/alipay/mobile/quinox/LauncherApplication;

    invoke-static {v0}, Lcom/alipay/mobile/quinox/LauncherApplication;->access$100(Lcom/alipay/mobile/quinox/LauncherApplication;)V

    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/quinox/LauncherApplication$1;->val$handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 382
    return-void
.end method
