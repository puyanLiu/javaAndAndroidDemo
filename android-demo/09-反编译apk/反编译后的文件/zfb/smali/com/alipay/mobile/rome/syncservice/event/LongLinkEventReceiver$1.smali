.class Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;
.super Ljava/lang/Object;
.source "LongLinkEventReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 32
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$1(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceive: [ action="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :try_start_0
    const-string/jumbo v0, "com.alipay.security.login"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->login(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$1(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive: [ TException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    :try_start_1
    const-string/jumbo v0, "com.alipay.security.cleanAccount"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->clearAccount(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 47
    :cond_3
    const-string/jumbo v0, "com.alipay.security.logout"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 49
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->logout(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 52
    :cond_4
    const-string/jumbo v0, "com.alipay.mobile.GESTURE_SETTING_SUCESS"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 54
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->gestureSuccess(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 57
    :cond_5
    const-string/jumbo v0, "com.alipay.mobile.framework.USERLEAVEHINT"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 58
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->frameworkActivityUserleavehint()V

    goto/16 :goto_0

    .line 61
    :cond_6
    const-string/jumbo v0, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 62
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->appBackToForeground()V

    goto/16 :goto_0

    .line 65
    :cond_7
    const-string/jumbo v0, "com.alipay.longlink.UPLINK"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 66
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->uplinkData(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 69
    :cond_8
    const-string/jumbo v0, "com.alipay.android.broadcast.FORCE_LOGOUT_ACTION"

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->getInstance()Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver$1;->this$0:Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;

    invoke-static {v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;->access$0(Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventReceiver;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncservice/event/LongLinkEventHandle;->forceLogout(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
