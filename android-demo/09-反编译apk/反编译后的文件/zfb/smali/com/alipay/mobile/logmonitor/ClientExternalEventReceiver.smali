.class public Lcom/alipay/mobile/logmonitor/ClientExternalEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ClientExternalEventReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 18
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string/jumbo v0, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 23
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->flushTraficConsume()V

    .line 24
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->stopAnrWatch()V

    .line 25
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->stopSmoothnessWatch()V

    .line 26
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->stopMemoryWatch()V

    goto :goto_0

    .line 29
    :cond_2
    const-string/jumbo v0, "com.alipay.mobile.framework.ACTIVITY_RESUME"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    const-string/jumbo v0, "com.alipay.mobile.framework.ACTIVITY_DATA"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->startAnrWatch()V

    .line 32
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->startSmoothnessWatch(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->startMemoryWatch()V

    goto :goto_0

    .line 36
    :cond_3
    const-string/jumbo v0, "com.alipay.android.broadcast.SEND_FEEDBACK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v1, "bugReport"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/LogContext;->notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
