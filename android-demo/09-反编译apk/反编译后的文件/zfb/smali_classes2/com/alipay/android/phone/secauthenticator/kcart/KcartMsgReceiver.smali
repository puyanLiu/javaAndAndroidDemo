.class public Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private lastTabID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string/jumbo v0, "KcartMsgReceiver"

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;->lastTabID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;->lastTabID:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v2, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;Ljava/lang/String;Landroid/content/Intent;)V

    const-string/jumbo v1, "KcartMsgReceiver"

    invoke-virtual {v0, v2, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0
.end method
