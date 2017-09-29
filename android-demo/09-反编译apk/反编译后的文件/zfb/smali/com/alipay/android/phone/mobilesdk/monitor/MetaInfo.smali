.class public Lcom/alipay/android/phone/mobilesdk/monitor/MetaInfo;
.super Lcom/alipay/mobile/framework/BaseMetaInfo;
.source "MetaInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/framework/BaseMetaInfo;-><init>()V

    .line 18
    invoke-static {}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->getInstance()Lcom/alipay/mobile/aspect/FrameworkPointCutManager;

    move-result-object v0

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    aput-object v2, v1, v4

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onResume()"

    aput-object v2, v1, v5

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onResume()"

    aput-object v2, v1, v6

    const-string/jumbo v2, "void com.alipay.mobile.framework.app.ui.BaseActivity.onWindowFocusChanged(boolean)"

    aput-object v2, v1, v7

    const/4 v2, 0x4

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onWindowFocusChanged(boolean)"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.onCreate(Bundle)"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onCreate(Bundle)"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.onPause()"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onPause()"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.onBackPressed()"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.onBackPressed()"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseActivity.finish()"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "void com.alipay.mobile.framework.app.ui.BaseFragmentActivity.finish()"

    aput-object v3, v1, v2

    new-instance v2, Lcom/alipay/mobile/monitor/track/advice/FrameworkTrackAdvice;

    invoke-direct {v2}, Lcom/alipay/mobile/monitor/track/advice/FrameworkTrackAdvice;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/aspect/FrameworkPointCutManager;->registerPointCutAdvice([Ljava/lang/String;Lcom/alipay/mobile/aspect/Advice;)V

    .line 35
    new-instance v0, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;-><init>()V

    .line 36
    new-array v1, v7, [Ljava/lang/String;

    const-string/jumbo v2, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    aput-object v2, v1, v4

    const-string/jumbo v2, "com.alipay.mobile.framework.USERLEAVEHINT"

    aput-object v2, v1, v5

    const-string/jumbo v2, "com.alipay.android.broadcast.SEND_FEEDBACK"

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setMsgCode([Ljava/lang/String;)Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;

    .line 41
    const-class v1, Lcom/alipay/mobile/logmonitor/ClientExternalEventReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 42
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/MetaInfo;->addBroadcastReceiver(Lcom/alipay/mobile/framework/msg/BroadcastReceiverDescription;)V

    .line 46
    new-instance v0, Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;-><init>()V

    .line 47
    const-class v1, Lcom/alipay/mobile/logmonitor/ClientLauncherValve;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setClassName(Ljava/lang/String;)Lcom/alipay/mobile/framework/MicroDescription;

    .line 48
    const-class v1, Lcom/alipay/mobile/logmonitor/ClientLauncherValve;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setThreadName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 49
    const-string/jumbo v1, "com.alipay.mobile.client.STARTED"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setPipelineName(Ljava/lang/String;)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 50
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/pipeline/ValveDescription;->setWeight(I)Lcom/alipay/mobile/framework/pipeline/ValveDescription;

    .line 51
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/mobilesdk/monitor/MetaInfo;->addValve(Lcom/alipay/mobile/framework/pipeline/ValveDescription;)V

    .line 52
    return-void
.end method
