.class Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetScreenOnOffReceiver$SecreenBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AmnetScreenOnOffReceiver.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 69
    const-string/jumbo v0, "amnet_AmnetScreenOnOffReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive: [ AmnetScreenOnOffReceiver ] [ Action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->getListener()Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onSeceenOffEvent()V

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->getListener()Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onSeceenOnEvent()V

    goto :goto_0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 55
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public unregister()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/amnet/api/AmnetEnvHelper;->getAppContext()Landroid/content/Context;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method
