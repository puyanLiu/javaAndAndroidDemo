.class public Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;
.super Lcom/ali/user/mobile/base/BaseActivity;
.source "AliuserWaitingActivity.java"


# instance fields
.field private a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/Button;

.field private d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

.field private e:Z

.field private f:Z

.field private g:Landroid/os/Handler;

.field private h:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/ali/user/mobile/base/BaseActivity;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->e:Z

    .line 36
    iput-boolean v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->f:Z

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->g:Landroid/os/Handler;

    .line 189
    new-instance v0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;

    invoke-direct {v0, p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$1;-><init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->h:Landroid/content/BroadcastReceiver;

    .line 26
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->e:Z

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, -0x3

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a(I)V

    .line 155
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-boolean v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->f:Z

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a(I)V

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a(I)V

    goto :goto_0
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/account/bind/BindManager;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/account/bind/BindManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ali/user/mobile/account/bind/BindManager;->notifyUserWaiting(I)V

    .line 133
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->finish()V

    .line 134
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->dismissProgress()V

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->f:Z

    .line 176
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->b:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method static synthetic access$4(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V
    .locals 4

    .prologue
    .line 157
    const-string/jumbo v0, "AliuserWaitingActivity"

    const-string/jumbo v1, "bind rpc exception, will exit after 2s"

    invoke-static {v0, v1}, Lcom/ali/user/mobile/log/AliUserLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->dismissProgress()V

    sget v0, Lcom/ali/user/mobile/security/ui/R$string;->network_error_retry:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->toast(Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->e:Z

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->g:Landroid/os/Handler;

    new-instance v1, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$5;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$5;-><init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$5(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;I)V
    .locals 0

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a(I)V

    return-void
.end method

.method static synthetic access$6(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a()V

    return-void
.end method

.method static synthetic access$8(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)I
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->b()I

    move-result v0

    return v0
.end method

.method private b()I
    .locals 2

    .prologue
    .line 181
    const/4 v0, 0x0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 186
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dismissProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 81
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    iput-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    const-string/jumbo v1, "AliuserWaitingActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    iput-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    goto :goto_0

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    iput-object v2, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    .line 88
    throw v0
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->dismissProgress()V

    .line 139
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->finish()V

    .line 140
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

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/ali/user/mobile/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    sget v0, Lcom/ali/user/mobile/security/ui/R$layout;->activity_account_bind_waiting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->setContentView(I)V

    .line 45
    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->titleBar:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTitleBar;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->bindErrorLayout:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->b:Landroid/view/View;

    sget v0, Lcom/ali/user/mobile/security/ui/R$id;->comfirmSetting:I

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->c:Landroid/widget/Button;

    .line 46
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getImageBackButton()Lcom/alipay/mobile/commonui/widget/APImageButton;

    move-result-object v0

    new-instance v1, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$3;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$3;-><init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$4;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$4;-><init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "flag"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/ali/user/mobile/security/ui/R$string;->loading:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->showProgress(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0, v0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->a()V

    .line 218
    const/4 v0, 0x1

    .line 220
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 122
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onResume()V

    .line 123
    return-void
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 115
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onStart()V

    .line 116
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->h:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.ali.user.mobile.account.bind.alipay_bind_taobao"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 118
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/ali/user/mobile/base/BaseActivity;->onStop()V

    .line 128
    invoke-virtual {p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->h:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    return-void
.end method

.method protected setAppId()V
    .locals 1

    .prologue
    .line 144
    const-string/jumbo v0, "20000010"

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->mAppId:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public showProgress(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 61
    new-instance v0, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    .line 62
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setProgressVisiable(Z)V

    .line 64
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 65
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setCancelable(Z)V

    .line 66
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    new-instance v1, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$2;

    invoke-direct {v1, p0}, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity$2;-><init>(Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/account/bind/AliuserWaitingActivity;->d:Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APGenericProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    const-string/jumbo v1, "AliuserWaitingActivity"

    invoke-static {v1, v0}, Lcom/ali/user/mobile/log/AliUserLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
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
