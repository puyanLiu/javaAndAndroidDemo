.class Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;
.super Ljava/lang/Object;
.source "TabChangeGestureDetect.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$preListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;->val$preListener:Landroid/view/View$OnClickListener;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 40
    .line 41
    :try_start_0
    sget v0, Lcom/alipay/mobile/ui/R$id;->performance_sdk_monitor_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabChangeGestureDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tabId: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 45
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    .line 46
    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->getInstance()Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/security/gesture/util/GestureDataCenter;->gestureStrategyTabLauncher(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->startGestureIfNecessary(Z)Z

    .line 49
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;

    iget-object v2, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;->val$preListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, p0, v2, p1}, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1$1;-><init>(Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;Landroid/view/View$OnClickListener;Landroid/view/View;)V

    .line 55
    const-wide/16 v2, 0x1f4

    .line 49
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 63
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/launcher/gesture/TabChangeGestureDetect$1;->val$preListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabChangeGestureDetect"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
