.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 954
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 974
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "bind phone fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 976
    return-void
.end method

.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 957
    const-string/jumbo v0, "continueLogin"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->getIntentExtra()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "action"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 959
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->onSuccess()V

    .line 960
    const/4 v0, 0x1

    .line 962
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/ali/user/mobile/h5/AUH5Plugin;->onOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSuccess()V
    .locals 2

    .prologue
    .line 967
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "bind phone success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 969
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$23;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;)V

    .line 970
    return-void
.end method
