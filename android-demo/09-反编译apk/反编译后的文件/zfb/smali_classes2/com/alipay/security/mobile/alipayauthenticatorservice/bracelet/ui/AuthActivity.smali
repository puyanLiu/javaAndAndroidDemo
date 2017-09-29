.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;
.super Landroid/app/Activity;
.source "AuthActivity.java"


# static fields
.field private static final DEFAULT_TEXT:Ljava/lang/String; = "\u8f7b\u6572\u4eae\u8d77\u7684\u624b\u73af\uff0c\u5373\u81ea\u52a8\u5f00\u59cb\u8bc6\u522b"

.field public static final EXTRA_TEXT:Ljava/lang/String; = "com.alipay.security.wearable.ui.EXTRA_TEXT"

.field public static TAG:Ljava/lang/String;

.field public static isActivityLaunched:Z

.field public static launchLock:Ljava/lang/Object;


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private mText:Ljava/lang/String;

.field private statusReciver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->TAG:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->launchLock:Ljava/lang/Object;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->isActivityLaunched:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    new-instance v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)V

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->statusReciver:Landroid/content/BroadcastReceiver;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->dialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private initUI()V
    .locals 4

    .prologue
    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53d6\u6d88"

    new-instance v3, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$2;

    invoke-direct {v3, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$2;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->dialog:Landroid/app/AlertDialog;

    .line 124
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->dialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 126
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->dialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$3;

    invoke-direct {v1, p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$3;-><init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 135
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 175
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 176
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 177
    const-string/jumbo v1, "KEY_RESULT"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 178
    const-string/jumbo v1, "KEY_OPERATIONT_TYPE"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 181
    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->finishAuth(Landroid/os/Bundle;)V

    .line 182
    return-void
.end method

.method public fpExit(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->finish()V

    .line 195
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->finish()V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    const-string/jumbo v1, "com.alipay.security.mobile.action.BRACELET_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->statusReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 101
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 159
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->isActivityLaunched:Z

    .line 160
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->statusReciver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 188
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->launchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 150
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->isActivityLaunched:Z

    .line 151
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->launchLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 152
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 107
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.alipay.security.wearable.ui.EXTRA_TEXT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->mText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->mText:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/util/CommonUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string/jumbo v0, "\u8f7b\u6572\u4eae\u8d77\u7684\u624b\u73af\uff0c\u5373\u81ea\u52a8\u5f00\u59cb\u8bc6\u522b"

    iput-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->mText:Ljava/lang/String;

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->initUI()V

    .line 114
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method
