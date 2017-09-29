.class Lcom/ali/user/mobile/common/api/AliUserLogin$8;
.super Ljava/lang/Object;
.source "AliUserLogin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/taobao/android/sso/UserInfo;

.field private final synthetic b:Landroid/content/Context;

.field final synthetic this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;


# direct methods
.method constructor <init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Lcom/taobao/android/sso/UserInfo;

    iput-object p3, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->b:Landroid/content/Context;

    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/common/api/AliUserLogin$8;)Lcom/ali/user/mobile/common/api/AliUserLogin;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 440
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 441
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    .line 442
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v1, v1, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 443
    const-string/jumbo v1, "withlogintoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    invoke-static {v1}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$5(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/ali/user/mobile/service/UserLoginService;->unifyLogin(Lcom/ali/user/mobile/login/LoginParam;)Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    move-result-object v0

    .line 447
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->success:Z

    if-eqz v1, :cond_0

    .line 448
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "taobao sso autologin success"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/ali/user/mobile/common/api/AliUserLogin;->access$6()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$8$1;

    invoke-direct {v2, p0}, Lcom/ali/user/mobile/common/api/AliUserLogin$8$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin$8;)V

    invoke-interface {v1, v0, v2}, Lcom/ali/user/mobile/login/OnLoginCaller;->postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 464
    :goto_0
    return-void

    .line 457
    :cond_0
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "taobao sso autologin fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->b:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    const-string/jumbo v1, "AliUserLogin"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 462
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->this$0:Lcom/ali/user/mobile/common/api/AliUserLogin;

    iget-object v1, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->a:Lcom/taobao/android/sso/UserInfo;

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, v2, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method
