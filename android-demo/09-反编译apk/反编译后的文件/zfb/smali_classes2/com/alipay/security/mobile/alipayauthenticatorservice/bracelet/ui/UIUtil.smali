.class public Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/UIUtil;
.super Ljava/lang/Object;
.source "UIUtil.java"


# static fields
.field public static TAG:Ljava/lang/String; = null

.field private static final TEXT_TIP_KNOCK:Ljava/lang/String; = "\u8f7b\u6572\u4eae\u8d77\u7684\u624b\u73af\uff0c\u5373\u81ea\u52a8\u5f00\u59cb\u8bc6\u522b"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/UIUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/UIUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeFPActivity(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    const-string/jumbo v1, "com.alipay.security.mobile.action.BRACELET_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string/jumbo v1, "com.alipay.security.mobile.extra.BRACELET_STATUS"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/util/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/security/mobile/util/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 61
    return-void
.end method

.method public static startFPActivity(Landroid/content/Context;II)V
    .locals 4

    .prologue
    .line 19
    invoke-static {p0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->getInstance(Landroid/content/Context;)Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/xiaomi/BraceletAdapter;->isAuthing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    if-eqz p1, :cond_0

    .line 25
    const-string/jumbo v0, "\u8f7b\u6572\u4eae\u8d77\u7684\u624b\u73af\uff0c\u5373\u81ea\u52a8\u5f00\u59cb\u8bc6\u522b"

    .line 26
    packed-switch p1, :pswitch_data_0

    .line 32
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 33
    const-string/jumbo v2, "KEY_OPERATIONT_TYPE"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 34
    const-class v2, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 35
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    const-string/jumbo v2, "com.alipay.security.wearable.ui.EXTRA_TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 38
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 41
    sget-object v1, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->launchLock:Ljava/lang/Object;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-boolean v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->isActivityLaunched:Z

    if-nez v0, :cond_2

    .line 44
    sget-object v0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->launchLock:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_2
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 29
    :pswitch_0
    const-string/jumbo v0, "\u8f7b\u6572\u4eae\u8d77\u7684\u624b\u73af\uff0c\u5373\u81ea\u52a8\u5f00\u59cb\u8bc6\u522b"

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
