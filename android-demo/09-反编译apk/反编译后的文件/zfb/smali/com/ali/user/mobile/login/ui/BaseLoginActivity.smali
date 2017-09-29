.class public abstract Lcom/ali/user/mobile/login/ui/BaseLoginActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "BaseLoginActivity.java"


# instance fields
.field protected mHandler:Landroid/os/Handler;

.field protected mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

.field protected mToken:Ljava/lang/String;

.field protected mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected afterBackgroundLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$2;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method protected alertResult(Ljava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/ali/user/mobile/security/ui/R$string;->comfirm:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;

    invoke-direct {v4, p0, p2}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$3;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;I)V

    move-object v0, p0

    move-object v2, p1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v6}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 120
    return-void
.end method

.method protected doBackgroundLogin()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity$1;-><init>(Lcom/ali/user/mobile/login/ui/BaseLoginActivity;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected handleException(Ljava/lang/Exception;)Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mToken:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "login_param"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/LoginParam;

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getUserLoginService()Lcom/ali/user/mobile/service/UserLoginService;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mUserLoginService:Lcom/ali/user/mobile/service/UserLoginService;

    .line 41
    return-void
.end method

.method protected onLoginFail(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method protected onLoginSuccess(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method protected prepareLoginParam()Lcom/ali/user/mobile/login/LoginParam;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mToken:Ljava/lang/String;

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->token:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    const-string/jumbo v1, "withchecktoken"

    iput-object v1, v0, Lcom/ali/user/mobile/login/LoginParam;->validateTpye:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/BaseLoginActivity;->mLoginParam:Lcom/ali/user/mobile/login/LoginParam;

    return-object v0
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
