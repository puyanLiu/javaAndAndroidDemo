.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 1023
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 1053
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone(after login) fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 1055
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1026
    const-string/jumbo v0, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 1030
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->onSuccess()V

    .line 1035
    :goto_0
    const/4 v0, 0x1

    .line 1037
    :goto_1
    return v0

    .line 1032
    :cond_0
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone(after login) fail\uff0cloginId si empty"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->onFail()V

    goto :goto_0

    .line 1037
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected onSuccess()V
    .locals 3

    .prologue
    .line 1042
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "change bind phone(after login) success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "loginId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 1045
    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 1046
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v2, "token"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 1047
    const-string/jumbo v0, "withchecktoken"

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 1048
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$25;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 1049
    return-void
.end method
