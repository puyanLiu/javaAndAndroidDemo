.class public Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;


# instance fields
.field a:Landroid/app/ActivityManager;

.field b:Landroid/content/BroadcastReceiver;

.field c:Landroid/app/Application;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    const-string/jumbo v0, "ChangedTimeService"

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->b:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ChangedTimeService"

    const-string/jumbo v2, "ChangedTimeService  is  onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->c:Landroid/app/Application;

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->c:Landroid/app/Application;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->a:Landroid/app/ActivityManager;

    new-instance v0, Lcom/alipay/mobile/security/gesture/msg/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/gesture/msg/a;-><init>(Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;)V

    iput-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->b:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->c:Landroid/app/Application;

    iget-object v2, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/service/ext/ExternalService;->destroy(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->c:Landroid/app/Application;

    iget-object v1, p0, Lcom/alipay/mobile/security/gesture/msg/ChangedTimeReceiver;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ChangedTimeService"

    const-string/jumbo v2, "mScreenOnOffBroadcastReceiver_unregisterReceiver"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "ChangedTimeService"

    const-string/jumbo v2, "mScreenOnOffBroadcastReceiver_onDestroy"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
