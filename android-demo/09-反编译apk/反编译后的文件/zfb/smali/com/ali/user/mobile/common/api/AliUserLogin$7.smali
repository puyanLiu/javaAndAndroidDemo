.class Lcom/ali/user/mobile/common/api/AliUserLogin$7;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$7;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$7;->a:Landroid/content/Context;

    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmUIShowed(Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;)Lcom/taobao/android/ssologinwrapper/SsoLoginConfirmView;
    .locals 0

    .prologue
    .line 426
    return-object p1
.end method

.method public onFailedResult(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 420
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "got taobao userInfo fail:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$7;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$7;->a:Landroid/content/Context;

    invoke-virtual {v0, v3, v1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 422
    return-void
.end method

.method public onSsoLoginClicked(Lcom/taobao/android/sso/UserInfo;)V
    .locals 2

    .prologue
    .line 414
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "got taobao userInfo"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$7;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$7;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->ssoLogin(Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V

    .line 416
    return-void
.end method
