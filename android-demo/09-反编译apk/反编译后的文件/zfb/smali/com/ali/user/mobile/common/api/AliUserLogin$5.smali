.class Lcom/ali/user/mobile/common/api/AliUserLogin$5;
.super Lcom/ali/user/mobile/h5/AUH5Plugin;
.source "AliUserLogin.java"


# instance fields
.field private final synthetic a:Lcom/ali/user/mobile/login/sso/SSOInfo;

.field private final synthetic b:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->a:Lcom/ali/user/mobile/login/sso/SSOInfo;

    iput-object p3, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->b:Landroid/content/Context;

    .line 337
    invoke-direct {p0}, Lcom/ali/user/mobile/h5/AUH5Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method protected onOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x1

    .line 340
    const-string/jumbo v1, "ok"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "user auth ok"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 343
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    invoke-interface {v1}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginUserConfirmed()V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->a:Lcom/ali/user/mobile/login/sso/SSOInfo;

    const-string/jumbo v3, "alipay"

    const-string/jumbo v4, "withlogintoken"

    invoke-static {v1, v2, v3, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_0
    return v0

    .line 348
    :cond_1
    const-string/jumbo v1, "cancel"

    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->getIntentExtra()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 349
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "user auth cancel"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->getPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 351
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    move-result-object v1

    const/16 v2, -0x3eb

    invoke-interface {v1, v2}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    .line 354
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$5;->b:Landroid/content/Context;

    invoke-virtual {v1, v4, v2, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0

    .line 357
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
