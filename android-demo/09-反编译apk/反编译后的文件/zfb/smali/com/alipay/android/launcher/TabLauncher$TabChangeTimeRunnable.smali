.class Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;
.super Ljava/lang/Object;
.source "TabLauncher.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private mCurrentId:Ljava/lang/String;

.field private mCurrentView:Landroid/view/View;

.field private mStartTime:J

.field final synthetic this$0:Lcom/alipay/android/launcher/TabLauncher;


# direct methods
.method public constructor <init>(Lcom/alipay/android/launcher/TabLauncher;Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->this$0:Lcom/alipay/android/launcher/TabLauncher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1413
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mStartTime:J

    .line 1415
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentId:Ljava/lang/String;

    .line 1416
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentView:Landroid/view/View;

    .line 1419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mStartTime:J

    .line 1420
    iput-object p2, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentId:Ljava/lang/String;

    .line 1421
    iput-object p3, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentView:Landroid/view/View;

    .line 1422
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 1427
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    .line 1428
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1429
    new-instance v2, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 1430
    const-string/jumbo v3, "TabChangeTime"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 1431
    iget-object v3, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 1432
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 1433
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1439
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1440
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1441
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1449
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentView:Landroid/view/View;

    .line 1450
    return-void

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabChangeTimeRunnable"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1443
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/launcher/TabLauncher$TabChangeTimeRunnable;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1446
    :catch_1
    move-exception v0

    .line 1447
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "TabChangeTimeRunnable"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
