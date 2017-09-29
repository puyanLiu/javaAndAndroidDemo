.class Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLoginFragment.java"


# instance fields
.field final synthetic this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    .line 933
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFail()V
    .locals 2

    .prologue
    .line 943
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "bind alipay fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->clearPassword()V

    .line 945
    return-void
.end method

.method protected onSuccess()V
    .locals 2

    .prologue
    .line 936
    const-string/jumbo v0, "AliUserLoginFragment"

    const-string/jumbo v1, "bind alipay success"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->getIntentExtra()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment$22;->this$0:Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    invoke-virtual {v1, v0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->loginWithToken(Ljava/lang/String;)V

    .line 939
    return-void
.end method
