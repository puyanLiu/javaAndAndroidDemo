.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 987
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 1015
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1017
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 990
    const-string/jumbo v0, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 991
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 994
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->onSuccess()V

    .line 999
    :goto_0
    const/4 v0, 0x1

    .line 1001
    :goto_1
    return v0

    .line 996
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone fail\uff0cloginId is empty"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->onFail()V

    goto :goto_0

    .line 1001
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onSuccess()V
    .locals 3

    .prologue
    .line 1006
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1008
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 1009
    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 1010
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$24;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 1011
    return-void
.end method
