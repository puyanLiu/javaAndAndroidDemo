.class public Lcom/ali/user/mobile/login/ui/UserLoginActivity;
.super Lcom/ali/user/mobile/base/BaseFragmentActivity;
.source "UserLoginActivity.java"


# instance fields
.field protected mFragmentClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field protected mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field protected mFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsLoginSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    .line 27
    return-void
.end method


# virtual methods
.method protected commitFragment2Background(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "alipay"

    invoke-virtual {p0, v0, p1}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->putLoginFragment(Ljava/lang/String;Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 107
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 108
    sget v1, Lcom/ali/user/mobile/security/ui/R$id;->loginContainer:I

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 110
    return-void
.end method

.method public finishAndNotify()V
    .locals 3

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->dismissProgress()V

    .line 126
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.ali.user.sdk.login.CANCEL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 127
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginCaller()Lcom/ali/user/mobile/login/OnLoginCaller;

    move-result-object v0

    .line 128
    if-eqz v0, :cond_0

    .line 129
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ali/user/mobile/login/OnLoginCaller;->cancelLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->finish()V

    .line 133
    return-void
.end method

.method protected getAliuserLoginFragment()Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 4

    .prologue
    .line 76
    invoke-static {}, Lcom/ali/user/mobile/context/AliuserLoginContext;->getLoginFragmentClazz()Ljava/lang/Class;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "UserLoginActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "config login fragment:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    if-eqz v0, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "UserLoginActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 86
    :cond_0
    new-instance v0, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;

    invoke-direct {v0}, Lcom/ali/user/mobile/login/ui/AlipayUserLoginFragment;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getLoginFragment(Ljava/lang/String;)Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;
    .locals 3

    .prologue
    .line 119
    const-string/jumbo v0, "UserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getLoginFragment - name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onBackKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 144
    iget-object v1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v1

    .line 145
    if-nez v1, :cond_0

    .line 146
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->background(Landroid/app/Activity;)V

    .line 157
    :goto_0
    return v0

    .line 148
    :cond_0
    if-ne v1, v0, :cond_1

    .line 149
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/AliUserInit;->isAppDebug(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "login fragment switch exception"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const-string/jumbo v1, "login fragment switch exception"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->monitor(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;)V

    .line 157
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    const-string/jumbo v0, "UserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCreate:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_user_login:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->setContentView(I)V

    .line 42
    invoke-static {v3}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    .line 43
    iput-boolean v3, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    .line 44
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    .line 47
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->openFragmentByAppId(Landroid/content/Intent;)V

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/ali/user/mobile/login/ui/UserLoginActivity$1;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity$1;-><init>(Lcom/ali/user/mobile/login/ui/UserLoginActivity;)V

    const-string/jumbo v2, "AliuserSdk.preGetRsa"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    return-void
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 68
    const-string/jumbo v0, "UserLoginActivity"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onDestroy()V

    .line 71
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    .line 73
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 137
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->onBackKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 140
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 56
    invoke-static {v1}, Lcom/ali/user/mobile/context/AliuserLoginContext;->setComeBack(Z)V

    .line 57
    iput-boolean v1, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mIsLoginSuccess:Z

    .line 59
    const-string/jumbo v0, "from_register"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/login/TaobaoSsoLoginBiz;->disableTaobaoSsoLogin(Landroid/content/Context;)V

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->openFragmentByAppId(Landroid/content/Intent;)V

    .line 64
    return-void
.end method

.method protected openFragmentByAppId(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 96
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->openLoginFragment(Landroid/os/Bundle;)V

    .line 97
    return-void

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected openLoginFragment(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->getAliuserLoginFragment()Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;->setArguments(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->commitFragment2Background(Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V

    .line 103
    return-void
.end method

.method public putLoginFragment(Ljava/lang/String;Lcom/ali/user/mobile/login/ui/AliUserLoginFragment;)V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "UserLoginActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "putLoginFragment - name:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",fragment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {p2}, Lcom/ali/user/mobile/context/AliuserLoginContext;->pushLoginHandler(Lcom/ali/user/mobile/context/LoginHandler;)V

    .line 116
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 179
    const-string/jumbo v0, "20000008"

    iput-object v0, p0, Lcom/ali/user/mobile/login/ui/UserLoginActivity;->mAppId:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
