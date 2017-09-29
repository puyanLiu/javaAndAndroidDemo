.class final Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "LooperPrinter.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;


# direct methods
.method private constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;B)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    .line 115
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 116
    const/4 v0, 0x0

    .line 118
    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    monitor-enter v3

    .line 119
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 120
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)J

    move-result-wide v4

    sub-long v4, v1, v4

    .line 121
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)J

    .line 123
    const/4 v0, 0x1

    .line 126
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;->NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 144
    :cond_1
    :goto_0
    return-void

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 133
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 136
    const-string/jumbo v5, "stackFrame"

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string/jumbo v3, "lagActivity"

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-static {v5}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v3, "lagTime"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    const-string/jumbo v2, "performance"

    const-string/jumbo v3, "lag"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v5, v4}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->apm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 140
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 141
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;->a:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-static {v4}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " takes around "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b()J

    move-result-wide v4

    const-wide/16 v6, 0xfa

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ms."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method
