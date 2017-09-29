.class public Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;
.super Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
.source "AlipayUserLoginFragment.java"


# static fields
.field protected static final KEY_FACE_LOGIN_FAIL_COUNT:Ljava/lang/String; = "faceLoginFailCount"

.field protected static final KEY_OPEN_FACE_LOGIN:Ljava/lang/String; = "isOpenFaceLogin"


# instance fields
.field protected final STATE_FACE_LOGIN:I

.field protected final STATE_PASSWORD_LOGIN:I

.field private final a:Ljava/lang/String;

.field protected alertTitle:Ljava/lang/String;

.field private b:Z

.field private c:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

.field protected mFaceLoginButton:Landroid/widget/Button;

.field protected mFaceLoginLayout:Landroid/view/View;

.field protected mFaceLoginUserAccount:Landroid/widget/TextView;

.field protected mLeftExternEntry:Landroid/widget/TextView;

.field protected mPasswordLoginLayout:Landroid/view/View;

.field protected mRegistNewTV:Landroid/widget/TextView;

.field protected mState:I

.field protected mSwitchLanguage:Landroid/widget/TextView;

.field protected mSwitchToPasswordLogin:Landroid/widget/TextView;

.field protected mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

.field protected negativeListener:Landroid/content/DialogInterface$OnClickListener;

.field protected negativeText:Ljava/lang/String;

.field protected positiveListener:Landroid/content/DialogInterface$OnClickListener;

.field protected positiveText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 58
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;-><init>()V

    .line 60
    const-string/jumbo v0, "AlipayUserLoginFragment"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->a:Ljava/lang/String;

    .line 68
    iput v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->STATE_PASSWORD_LOGIN:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->STATE_FACE_LOGIN:I

    .line 71
    iput v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mState:I

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->b:Z

    .line 513
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$1;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->c:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    .line 58
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->enterState(I)V

    .line 171
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->setLoginHistoryAccount(Lcom/ali/user/mobile/login/LoginHistory;)V

    .line 172
    return-void
.end method

.method static synthetic access$0(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 448
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->b()V

    return-void
.end method

.method static synthetic access$1(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 7

    .prologue
    .line 458
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v2, v2, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget v3, v3, Lcom/ali/user/mobile/login/LoginHistory;->faceAuthFailCount:I

    invoke-interface {v0, v1, v2, v3}, Lcom/ali/user/mobile/service/UserFaceLoginService;->initFaceLogin(Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;

    move-result-object v0

    const-string/jumbo v1, "AlipayUserLoginFragment"

    const-string/jumbo v2, "initFaceLogin result status:%s, memo:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->dismissProgress()V

    iget-boolean v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->success:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->token:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "invokeFaceLogin fail, token is null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v3, :cond_1

    const-string/jumbo v3, "headurl"

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v4, v4, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_2

    const-string/jumbo v3, "Aliuser.Login.Facelogin"

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->c:Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/alipay/mobile/verifyidentity/alipay/service/VerifyIdentityService;->startVerifyByToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/alipay/mobile/verifyidentity/callback/VerifyIdentityListener;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->dismissProgress()V

    throw v0

    :cond_2
    :try_start_1
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "verifyIdentityService=null"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->system_error_try_later:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->toast(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "1001"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "1004"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "1005"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->use_password_login:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$14;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$14;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "1002"

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->resultStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$15;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$15;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    iget-object v2, v0, Lcom/alipay/mobileapp/biz/rpc/unifylogin/vo/InitFaceLoginRes;->memo:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method static synthetic access$2(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->a()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 449
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->showProgress(Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$13;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$13;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method


# virtual methods
.method protected addLocalFaceLoginFailCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 552
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 554
    const-string/jumbo v1, "faceLoginFailCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 555
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "faceLoginFailCount"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 557
    :cond_0
    return-void
.end method

.method protected afterVerifyTaobaoSso(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;

    invoke-direct {v1, p0, p1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$10;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 348
    return-void
.end method

.method protected disableLocalFaceLogin()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 560
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 562
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "isOpenFaceLogin"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 564
    :cond_0
    return-void
.end method

.method protected doInit()V
    .locals 3

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_register"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "source_accountSelectAccount"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    :cond_0
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doInit()V

    .line 129
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->initLoginState()V

    .line 120
    iget v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 121
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v0, v0, Lcom/ali/user/mobile/login/LoginHistory;->loginAccount:Ljava/lang/String;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    .line 122
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginUserAccount:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedAccount:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getLoginType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/utils/StringUtil;->hideAccount(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->loginPortraitUrl:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->setPortraitImage(ZLjava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->doInit()V

    goto :goto_0
.end method

.method protected enterFaceLoginState()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordLoginLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mRegistNewTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->more:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method protected enterPasswordLoginState()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginLayout:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordLoginLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mRegistNewTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->registNew:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->initExternEntry()V

    .line 167
    return-void
.end method

.method protected enterState(I)V
    .locals 3

    .prologue
    .line 141
    const-string/jumbo v0, "AlipayUserLoginFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enterState:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iput p1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mState:I

    .line 143
    iget v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->enterFaceLoginState()V

    goto :goto_0

    .line 148
    :pswitch_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->enterPasswordLoginState()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getLayout()I
    .locals 1

    .prologue
    .line 661
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->fragment_alipay_user_login:I

    return v0
.end method

.method protected getLoginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 610
    const-string/jumbo v0, "alipay"

    return-object v0
.end method

.method protected initEvents()V
    .locals 2

    .prologue
    .line 279
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->initEvents()V

    .line 281
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mSwitchToPasswordLogin:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mRegistNewTV:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mConfigService:Lcom/alipay/mobile/base/config/ConfigService;

    const-string/jumbo v1, "LOCALE_SWITCH_ANDROID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    const-string/jumbo v1, "close"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mSwitchLanguage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mSwitchLanguage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mSwitchLanguage:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected initExternEntry()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-static {}, Lcom/ali/user/mobile/context/ExternEntryManager;->getInstance()Lcom/ali/user/mobile/context/ExternEntryManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/context/ExternEntryManager;->getEntryMeta(I)Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;

    move-result-object v0

    .line 186
    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLeftExternEntry:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v1, v0, Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;->param:Landroid/os/Bundle;

    if-nez v1, :cond_2

    .line 190
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "entryMeta.param can not be null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLeftExternEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLeftExternEntry:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;->param:Landroid/os/Bundle;

    const-string/jumbo v3, "text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, v0, Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;->param:Landroid/os/Bundle;

    const-string/jumbo v2, "text_color"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 196
    const-string/jumbo v2, "AlipayUserLoginFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "external setted text color:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLeftExternEntry:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    iget-object v1, v0, Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v1, :cond_0

    .line 200
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLeftExternEntry:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/ali/user/mobile/context/ExternEntryManager$EntryMeta;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected initFaceLoginFailAlert()V
    .locals 2

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alertTitle:Ljava/lang/String;

    .line 568
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login_fail:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->positiveText:Ljava/lang/String;

    .line 569
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->try_face_login_retry:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->negativeText:Ljava/lang/String;

    .line 571
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$16;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$16;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->negativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 577
    return-void
.end method

.method protected initLoginState()V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->isSupportFaceLogin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->initFaceLoginFailAlert()V

    .line 134
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->enterState(I)V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->enterState(I)V

    goto :goto_0
.end method

.method protected isSupportFaceLogin()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 367
    const v0, 0xb000

    if-ne p1, v0, :cond_2

    .line 368
    const v0, 0xb003

    if-eq p2, v0, :cond_0

    .line 370
    const v0, 0xb001

    if-ne p2, v0, :cond_1

    .line 371
    const-string/jumbo v0, "taobao_sso_info"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;

    .line 372
    new-instance v1, Lcom/ali/user/mobile/login/LoginParam;

    invoke-direct {v1}, Lcom/ali/user/mobile/login/LoginParam;-><init>()V

    .line 373
    iget-object v0, v0, Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;->taobaoNick:Ljava/lang/String;

    iput-object v0, v1, Lcom/ali/user/mobile/login/LoginParam;->loginAccount:Ljava/lang/String;

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->initLoginParam(Lcom/ali/user/mobile/login/LoginParam;Z)V

    .line 375
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;->requestFocus()Z

    .line 376
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordInput:Lcom/alipay/mobile/commonui/widget/keyboard/APSafeEditText;

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->showInputMethodPannel(Landroid/view/View;)V

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    const v0, 0xb004

    if-ne p2, v0, :cond_0

    .line 378
    const-string/jumbo v0, "login_param"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    .line 379
    const-string/jumbo v0, "login_response"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    .line 380
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    goto :goto_0

    .line 384
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onAttach(Landroid/app/Activity;)V

    .line 92
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserFaceLoginService()Lcom/ali/user/mobile/service/UserFaceLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mUserFaceLoginService:Lcom/ali/user/mobile/service/UserFaceLoginService;

    .line 93
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->registNewUser:I

    if-ne v0, v1, :cond_3

    .line 423
    iget v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 424
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->showLoginProblemsPopup()V

    .line 436
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->faceLoginButton:I

    if-ne v0, v1, :cond_1

    .line 437
    const-string/jumbo v0, "UC-RLSB-150511-15"

    const-string/jumbo v1, "faceshowin"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->b()V

    .line 439
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->switchToPasswordLogin:I

    if-ne v0, v1, :cond_6

    .line 440
    invoke-direct {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->a()V

    .line 446
    :goto_1
    return-void

    .line 426
    :cond_2
    const-string/jumbo v0, "YWUC-JTTYZH-C12"

    const-string/jumbo v1, "register"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0, v0, v1, v2}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string/jumbo v0, "RegisterBtn"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->onRdsControlClick(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->toRegist(Lcom/ali/user/mobile/register/RegistParam;)V

    goto :goto_0

    .line 430
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->switchLogin:I

    if-ne v0, v1, :cond_4

    .line 431
    invoke-virtual {p0, v3}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->switchToTaobaoUserLogin(Landroid/os/Bundle;)V

    goto :goto_0

    .line 432
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->forgetPassword:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->forgetPasswordCenter:I

    if-ne v0, v1, :cond_0

    .line 433
    :cond_5
    const-string/jumbo v0, "UC-LOG-150512-01"

    const-string/jumbo v1, "loginquestion"

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->writeClickLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string/jumbo v0, "GetPwdBtn"

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->onRdsControlClick(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->showLoginProblemsPopup()V

    goto :goto_0

    .line 441
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->switch_language:I

    if-ne v0, v1, :cond_7

    .line 442
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000008"

    const-string/jumbo v2, "20000777"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 444
    :cond_7
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onClick(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 99
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->left_ext_entry:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLeftExternEntry:Landroid/widget/TextView;

    .line 100
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->faceLoginLayout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginLayout:Landroid/view/View;

    .line 101
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->passwordLoginLayout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mPasswordLoginLayout:Landroid/view/View;

    .line 102
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->faceLoginUserAccount:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginUserAccount:Landroid/widget/TextView;

    .line 103
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->faceLoginButton:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFaceLoginButton:Landroid/widget/Button;

    .line 104
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switchToPasswordLogin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mSwitchToPasswordLogin:Landroid/widget/TextView;

    .line 105
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->switch_language:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mSwitchLanguage:Landroid/widget/TextView;

    .line 106
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->registNewUser:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mRegistNewTV:Landroid/widget/TextView;

    .line 108
    const-string/jumbo v0, "YWUC-JTTYZH-C38"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "alipayLoginView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v2, v3, v4, v5}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-object v1
.end method

.method public onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 390
    const-string/jumbo v0, "6304"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->dismissProgress()V

    .line 392
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 394
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->find_login_password:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$11;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$11;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 401
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->reinput:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    .line 394
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 417
    :goto_0
    return v0

    .line 403
    :cond_0
    const-string/jumbo v0, "6305"

    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->code:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->dismissProgress()V

    .line 405
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->checkLoginResponseFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    .line 407
    iget-object v2, p1, Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;->msg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/ali/user/mobile/security/ui/R$string;->find_login_password:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$12;

    invoke-direct {v4, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$12;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    .line 414
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v5, Lcom/ali/user/mobile/security/ui/R$string;->iknow:I

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->clearPasswordListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p0

    .line 407
    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    move v0, v7

    .line 415
    goto :goto_0

    .line 417
    :cond_1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onLoginResponse(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->onPause()V

    .line 274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->b:Z

    .line 275
    return-void
.end method

.method protected openTaobaoSsoInfoActivity(Lcom/ali/user/mobile/login/sso/TaobaoSsoLoginInfo;)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->isAdded()Z

    move-result v2

    iget-object v3, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/ali/user/mobile/login/TaobaoSsoLoginBiz;->checkTaobaoSsoLogin(Landroid/content/Context;)Z

    move-result v3

    const-string/jumbo v4, "AlipayUserLoginFragment"

    const-string/jumbo v5, "canShowSsoInfo-isAdded:%s, ssoFlag:%s, mIsPaused:%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v0

    const/4 v7, 0x2

    iget-boolean v8, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->b:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    iget-boolean v2, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->b:Z

    if-nez v2, :cond_1

    :goto_0
    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    const-class v2, Lcom/ali/user/mobile/login/ui/TaobaoSsoLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    const-string/jumbo v1, "taobao_sso_info"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 354
    const v1, 0xb000

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 356
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 351
    goto :goto_0
.end method

.method protected postInit()V
    .locals 5

    .prologue
    .line 295
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/TaobaoSsoLoginBiz;->checkTaobaoSsoLogin(Landroid/content/Context;)Z

    move-result v1

    .line 296
    const-string/jumbo v0, "AlipayUserLoginFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "try sso login flag:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mLoginHistorys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 298
    :goto_0
    const-string/jumbo v2, "AlipayUserLoginFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "login history flag:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    if-eqz v1, :cond_0

    .line 300
    if-eqz v0, :cond_2

    .line 301
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "no history, try sso login"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->tryTaobaoSsoLogin()V

    .line 307
    :cond_0
    :goto_1
    return-void

    .line 297
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/login/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    goto :goto_1
.end method

.method protected resetLocalFaceLoginFailCount()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mCurrentSelectedHistory:Lcom/ali/user/mobile/login/LoginHistory;

    iget-object v1, v1, Lcom/ali/user/mobile/login/LoginHistory;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 547
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "faceLoginFailCount"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 549
    :cond_0
    return-void
.end method

.method protected setPortraitImage(ZLjava/lang/String;)V
    .locals 4

    .prologue
    .line 648
    if-eqz p1, :cond_1

    .line 649
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_default_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    .line 657
    :goto_0
    return-void

    .line 652
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/ui/widget/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_default_head:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/ali/user/mobile/ui/widget/ImageLoader;->download(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 655
    :cond_1
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAccountImageView:Lcom/alipay/mobile/commonui/widget/APImageView;

    sget v1, Lcom/ali/user/mobile/security/ui/R$drawable;->alipay_head:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected showLoginProblemsPopup()V
    .locals 3

    .prologue
    .line 206
    new-instance v0, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->problems:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$2;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->security_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$3;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 222
    iget v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 223
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->registNew:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$4;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 230
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->loginAnother:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$5;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->show()V

    .line 267
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->clearPassword()V

    .line 268
    return-void

    .line 238
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->isSupportSmsLogin()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->sms_login:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$6;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->find_login_password2:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$7;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 256
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->isSupportFaceLogin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->use_face_login:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;

    invoke-direct {v2, p0, v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$8;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/dialog/BottomPopupActionDialog;->addAction(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected switchToTaobaoUserLogin(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 614
    const-string/jumbo v0, "YWUC-JTTYZH-C11"

    const-string/jumbo v1, "taobao"

    const-string/jumbo v2, "loginAccountInputView"

    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getLoginAccount()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mToken:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ali/user/mobile/utils/LogAgent;->logBehavorClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    new-instance v0, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;-><init>()V

    .line 618
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 619
    if-eqz v1, :cond_0

    .line 621
    const-string/jumbo v2, "source_accountSelectAccount"

    const/4 v3, 0x0

    .line 620
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 622
    const-string/jumbo v3, "login_param"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 623
    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 624
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 625
    const-string/jumbo v1, "source_accountSelectAccount"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 631
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 633
    :goto_0
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mAttachedActivity:Lcom/ali/user/mobile/login/ui/UserLoginActivity;

    const-string/jumbo v2, "taobao"

    invoke-virtual {v1, v2, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->putLoginFragment(Ljava/lang/String;Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 634
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/ali/user/mobile/security/ui/R$id;->loginContainer:I

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 635
    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->setTransition(I)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 636
    const-string/jumbo v1, "taobao"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 638
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$18;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$18;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 644
    return-void

    .line 628
    :cond_1
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/TaobaoUserLoginFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected toSecurityCenter()V
    .locals 2

    .prologue
    .line 584
    const-string/jumbo v0, "reportloss"

    new-instance v1, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$17;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;->doFetchH5Url(Ljava/lang/String;Lcom/ali/user/mobile/service/UrlFetchService$UrlFetchCallback;)V

    .line 606
    return-void
.end method

.method protected tryTaobaoSsoLogin()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "AlipayUserLoginFragment"

    const-string/jumbo v1, "tryTaobaoSsoLogin"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$9;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment$9;-><init>(Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 334
    return-void
.end method
