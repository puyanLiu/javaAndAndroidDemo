.class public Lcom/ali/user/mobile/common/api/AliUserLogin;
.super Ljava/lang/Object;
.source "AliUserLogin.java"


# static fields
.field private static a:Lcom/ali/user/mobile/login/OnLoginCaller;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/ali/user/mobile/service/UserLoginService;

.field private d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;

    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->c:Lcom/ali/user/mobile/service/UserLoginService;

    .line 57
    return-void
.end method

.method private a(Landroid/content/Context;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 409
    :try_start_0
    invoke-static {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->taobaoAccountType()Ljava/lang/String;

    move-result-object v0

    .line 411
    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$7;

    invoke-direct {v2, p0, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$7;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V

    .line 410
    invoke-virtual {v1, v0, p2, p1, v2}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 434
    :goto_0
    return-void

    .line 429
    :catch_0
    move-exception v0

    .line 430
    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "got taobao userInfo exception"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 432
    invoke-virtual {p0, v3, p1, v3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 364
    new-instance v0, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 365
    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 366
    iget-object v1, p1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->ssoToken:Ljava/lang/String;

    .line 367
    iput-object p2, v0, Lcom/ali/user/mobile/login/LoginParam;->loginType:Ljava/lang/String;

    .line 368
    iput-object p3, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 370
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$6;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/common/api/AliUserLogin$6;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/LoginParam;)V

    .line 403
    const-string/jumbo v0, "aliuser.ssoAutoLogin"

    .line 370
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 404
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Z)V
    .locals 0

    .prologue
    .line 406
    invoke-direct {p0, p1, p2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 254
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v0}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginStart()V

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ali/user/mobile/login/sso/SSOManager;->getSsoLoginWrapper()Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->alipayAccountType()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/ali/user/mobile/common/api/AliUserLogin$4;

    invoke-direct {v3, p0, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$4;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V

    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/taobao/android/ssologinwrapper/SsoLoginWrapper;->loginWithType(Ljava/lang/String;ZLandroid/content/Context;Lcom/taobao/android/ssologinwrapper/SsoLoginResultListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "AliUserLogin"

    const-string/jumbo v2, "got alipay userInfo exception"

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v4, p1, v4}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V
    .locals 9

    .prologue
    const/16 v8, -0x3ea

    const/4 v7, 0x0

    .line 292
    new-instance v1, Lcom/ali/user/mobile/login/sso/SSOInfo;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/sso/SSOInfo;-><init>()V

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mAccountType:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->accountType:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mNick:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mPhotoUrl:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->photoUrl:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mShareApp:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->shareApp:Ljava/lang/String;

    iget-object v0, p2, Lcom/taobao/android/sso/UserInfo;->mSsoToken:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->ssoToken:Ljava/lang/String;

    iget-wide v2, p2, Lcom/taobao/android/sso/UserInfo;->mTokenTimestamp:J

    iput-wide v2, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->tokenTimestamp:J

    invoke-static {p1}, Lcom/ali/user/mobile/login/sso/SSOManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/login/sso/SSOManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/sso/SSOManager;->verifySSoToken(Lcom/ali/user/mobile/login/sso/SSOInfo;)Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;

    move-result-object v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "ssoVerify null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v0, v8}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    :cond_0
    invoke-virtual {p0, v7, p1, v7}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "AliUserLogin"

    const-string/jumbo v3, "ssoVerify result\uff0cret:%s, msg:%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->memo:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->success:Z

    if-eqz v2, :cond_2

    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v2, "ssoVerify success"

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "alipay"

    const-string/jumbo v2, "withlogintoken"

    invoke-direct {p0, v1, v0, v2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "1002"

    iget-object v3, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->resultCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "AliUserLogin"

    const-string/jumbo v3, "ssoVerify need user auth"

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v2}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginUserConfirm()V

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/model/VerifySsoTokenResult;->h5Url:Ljava/lang/String;

    const-string/jumbo v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    const-string/jumbo v0, "&loginId="

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/ali/user/mobile/login/sso/SSOInfo;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&appName="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ali/user/mobile/info/AppInfo;->getInstance()Lcom/ali/user/mobile/info/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ali/user/mobile/info/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "&callbackUrl=https://www.alipay.com/webviewbridge%3Fsource%3Dsso"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ali/user/mobile/common/api/AliUserLogin$5;

    invoke-direct {v2, p0, v1, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$5;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/ali/user/mobile/h5/H5Wrapper;->startPage(Ljava/lang/String;Lcom/ali/user/mobile/h5/AUH5Plugin;)V

    goto/16 :goto_0

    :cond_4
    const-string/jumbo v0, "?loginId="

    goto :goto_1

    :cond_5
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "ssoVerify fail"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    invoke-interface {v0, v8}, Lcom/ali/user/mobile/login/sso/SSOLoginCaller;->onSsoLoginFail(I)V

    :cond_6
    invoke-virtual {p0, v7, p1, v7}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method

.method static synthetic access$3(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/login/sso/SSOLoginCaller;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0, p1, p2, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Lcom/ali/user/mobile/login/sso/SSOInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/common/api/AliUserLogin;)Lcom/ali/user/mobile/service/UserLoginService;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->c:Lcom/ali/user/mobile/service/UserLoginService;

    return-object v0
.end method

.method static synthetic access$6()Lcom/ali/user/mobile/login/OnLoginCaller;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/ali/user/mobile/common/api/AliUserLogin;->a:Lcom/ali/user/mobile/login/OnLoginCaller;

    return-object v0
.end method

.method static synthetic access$7(Lcom/ali/user/mobile/common/api/AliUserLogin;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static registOnLoginCaller(Landroid/content/Context;Lcom/ali/user/mobile/login/OnLoginCaller;)V
    .locals 0

    .prologue
    .line 73
    sput-object p1, Lcom/ali/user/mobile/common/api/AliUserLogin;->a:Lcom/ali/user/mobile/login/OnLoginCaller;

    .line 74
    invoke-static {p1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setLoginCaller(Lcom/ali/user/mobile/login/OnLoginCaller;)V

    .line 75
    return-void
.end method


# virtual methods
.method public alipayAccountBind(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 1

    .prologue
    .line 113
    if-eqz p2, :cond_0

    const-string/jumbo v0, "weakNetwork"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {p1}, Lcom/ali/user/mobile/account/bind/BindManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/user/mobile/account/bind/BindManager;->alipayBindTaobao(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p1}, Lcom/ali/user/mobile/account/bind/BindManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ali/user/mobile/account/bind/BindManager;->alipayAccountBind(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    goto :goto_0
.end method

.method public bindTaobao(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->alipayAccountBind(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/account/bind/OnBindCaller;)V

    .line 110
    return-void
.end method

.method public forgotLoginPassword(Landroid/content/Context;Landroid/os/Bundle;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V
    .locals 3

    .prologue
    .line 127
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "forgotLoginPassword"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$1;

    invoke-direct {v1, p0, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin$1;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/ali/user/mobile/forgotpwd/app/OnForgotPwdCaller;)V

    .line 179
    const-string/jumbo v2, "aliuser.forgotpwd"

    .line 128
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method protected openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    if-eqz p3, :cond_0

    .line 190
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 192
    :cond_0
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 193
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    :cond_1
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    return-void
.end method

.method public setupAlipaySsoLogin(Landroid/content/Context;Lcom/ali/user/mobile/login/sso/SSOLoginCaller;)V
    .locals 3

    .prologue
    .line 239
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "setupAlipaySsoLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iput-object p2, p0, Lcom/ali/user/mobile/common/api/AliUserLogin;->d:Lcom/ali/user/mobile/login/sso/SSOLoginCaller;

    .line 241
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$3;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$3;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;)V

    .line 251
    const-string/jumbo v2, "aliuserlogin.callAlipaySsoLogin"

    .line 241
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 252
    return-void
.end method

.method public setupLogin(Landroid/content/Context;ZZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 92
    const-string/jumbo v0, "AliUserLogin"

    const-string/jumbo v1, "ssologin:%s, needUI:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz p2, :cond_0

    .line 94
    invoke-direct {p0, p1, p3}, Lcom/ali/user/mobile/common/api/AliUserLogin;->a(Landroid/content/Context;Z)V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-virtual {p0, v5, p1, v5}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setupNormalLogin(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 204
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupNormalLogin - param:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/ali/user/mobile/common/api/AliUserLogin;->openLoginPage(Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;Landroid/os/Bundle;)V

    .line 206
    return-void
.end method

.method public setupTaobaoSsoLogin(Landroid/content/Context;Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 215
    const-string/jumbo v0, "AliUserLogin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setupSsoLogin - needUI:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/common/api/AliUserLogin$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/ali/user/mobile/common/api/AliUserLogin$2;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Landroid/content/Context;Z)V

    .line 226
    const-string/jumbo v2, "aliuserlogin.callTaobaoSsoLogin"

    .line 216
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 227
    return-void
.end method

.method protected ssoLogin(Landroid/content/Context;Lcom/taobao/android/sso/UserInfo;)V
    .locals 2

    .prologue
    .line 437
    new-instance v0, Lcom/ali/user/mobile/common/api/AliUserLogin$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/ali/user/mobile/common/api/AliUserLogin$8;-><init>(Lcom/ali/user/mobile/common/api/AliUserLogin;Lcom/taobao/android/sso/UserInfo;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 466
    return-void
.end method
