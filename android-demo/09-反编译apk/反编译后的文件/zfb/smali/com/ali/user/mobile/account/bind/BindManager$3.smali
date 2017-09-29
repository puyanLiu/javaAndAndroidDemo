.class Lcom/ali/user/mobile/account/bind/BindManager$3;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "BindManager.java"


# instance fields
.field private final synthetic a:Landroid/os/Bundle;

.field private final synthetic b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

.field private final synthetic c:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/account/bind/BindManager;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    iput-object p2, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    iput-object p4, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->c:Landroid/content/Context;

    .line 352
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/account/bind/BindManager$3;)Lcom/ali/user/mobile/account/bind/BindManager;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    return-object v0
.end method


# virtual methods
.method protected onCancel()V
    .locals 4

    .prologue
    .line 374
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "active taobao cancel"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    const-string/jumbo v3, "2001"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager;->access$1(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method protected onFail()V
    .locals 2

    .prologue
    .line 380
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "active taobao fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 356
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$3;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 357
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$3;->onSuccess()V

    .line 358
    const/4 v0, 0x1

    return v0
.end method

.method protected onSuccess()V
    .locals 4

    .prologue
    .line 363
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "active taobao success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    new-instance v0, Lcom/ali/user/mobile/account/bind/BindManager$3$1;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/ali/user/mobile/account/bind/BindManager$3;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager$3$1;-><init>(Lcom/ali/user/mobile/account/bind/BindManager$3;Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 370
    return-void
.end method
