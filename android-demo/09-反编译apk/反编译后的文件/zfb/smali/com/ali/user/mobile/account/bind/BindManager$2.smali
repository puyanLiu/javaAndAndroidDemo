.class Lcom/ali/user/mobile/account/bind/BindManager$2;
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
    iput-object p1, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    iput-object p2, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    iput-object p4, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->c:Landroid/content/Context;

    .line 297
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/account/bind/BindManager$2;)Lcom/ali/user/mobile/account/bind/BindManager;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    return-object v0
.end method


# virtual methods
.method protected onCancel()V
    .locals 4

    .prologue
    .line 326
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "bind phone cancel"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    const-string/jumbo v3, "2001"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager;->access$1(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method protected onFail()V
    .locals 4

    .prologue
    .line 332
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "bind phone fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->this$0:Lcom/ali/user/mobile/account/bind/BindManager;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->a:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    const-string/jumbo v3, "2002"

    invoke-static {v0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager;->access$1(Lcom/ali/user/mobile/account/bind/BindManager;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 301
    const-string/jumbo v1, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 303
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->onSuccess()V

    .line 310
    :goto_0
    return v0

    .line 305
    :cond_0
    const-string/jumbo v1, "false"

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "isSuc"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 307
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/BindManager$2;->onFail()V

    goto :goto_0

    .line 310
    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSuccess()V
    .locals 4

    .prologue
    .line 315
    const-string/jumbo v0, "BindManager"

    const-string/jumbo v1, "bind phone success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance v0, Lcom/ali/user/mobile/account/bind/BindManager$2$1;

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->a:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/ali/user/mobile/account/bind/BindManager$2;->b:Lcom/ali/user/mobile/account/bind/OnBindCaller;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/ali/user/mobile/account/bind/BindManager$2$1;-><init>(Lcom/ali/user/mobile/account/bind/BindManager$2;Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 322
    return-void
.end method
