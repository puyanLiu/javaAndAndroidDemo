.class public Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;
.super Ljava/lang/Object;
.source "APMAgentImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;
.implements Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;


# instance fields
.field private anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

.field private apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .prologue
    const-wide/16 v7, 0xa

    const/4 v4, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    .line 43
    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Landroid/content/Context;)V

    .line 45
    instance-of v0, p1, Landroid/app/Application;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 46
    check-cast v0, Landroid/app/Application;

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    .line 50
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/a;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;)V

    .line 64
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    const-string/jumbo v0, "dev"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "test"

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/cpu/CpuTrackerTask;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilesdk/apm/cpu/CpuTrackerTask;-><init>()V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x10

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V

    .line 82
    :cond_2
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;

    invoke-direct {v1, p1}, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;-><init>(Landroid/content/Context;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V

    .line 85
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->a()Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/strictmode/StrictModeDetector;->b()V

    .line 88
    :cond_3
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "registerScreenOffBroadcastReceiver failed"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    move-result-object v0

    iput-boolean v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a:Z

    .line 72
    :cond_4
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a()Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    move-result-object v0

    iput-boolean v4, v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a:Z

    goto/16 :goto_0
.end method

.method private declared-synchronized getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    .locals 4

    .prologue
    .line 155
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    :goto_0
    monitor-exit p0

    return-object v0

    .line 159
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    const-class v2, Lcom/alipay/android/phone/mobilesdk/apm/service/APMInnerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 161
    if-nez v0, :cond_1

    .line 162
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "bind IAPMInnerService fail"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    goto :goto_0

    .line 166
    :cond_1
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 168
    :try_start_2
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 174
    :try_start_4
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 172
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 155
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public disconnect()V
    .locals 3

    .prologue
    .line 226
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "disconnect"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    .line 231
    return-void
.end method

.method public noteMemoryLeak(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    invoke-static {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Ljava/util/List;)V

    .line 93
    return-void
.end method

.method public obtainFluencyUsage()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainFluencyUsage"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 150
    :goto_0
    return-object v0

    .line 145
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;->obtainFluencyUsage()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public obtainMemoryUsage()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainMemoryUsage"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 135
    :goto_0
    return-object v0

    .line 130
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;->obtainMemoryUsage()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v1

    .line 132
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public obtainStorageStructure()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainStorageStructure"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;->obtainStorageStructure()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    .line 118
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public obtainStorageUsage()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "obtainStorageUsage"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    if-nez v1, :cond_0

    .line 107
    :goto_0
    return-object v0

    .line 102
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->getInnerService()Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;->obtainStorageUsage()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    .line 104
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onServiceConnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {p2}, Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    .line 243
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    monitor-enter v1

    .line 244
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 235
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onServiceDisconnected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->apmInnerService:Lcom/alipay/android/phone/mobilesdk/apm/service/IAPMInnerService;

    .line 237
    return-void
.end method

.method public declared-synchronized startAnrWatch()V
    .locals 7

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    if-nez v0, :cond_0

    .line 180
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    .line 181
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMemoryWatch()V
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d()V

    .line 217
    return-void
.end method

.method public startSmoothnessWatch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 197
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b()V

    .line 200
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a()Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a(Landroid/os/Looper;)V

    .line 201
    return-void
.end method

.method public declared-synchronized stopAnrWatch()V
    .locals 1

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    if-eqz v0, :cond_0

    .line 188
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->anrWatchDog:Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :cond_0
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopMemoryWatch()V
    .locals 1

    .prologue
    .line 221
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->b()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e()V

    .line 222
    return-void
.end method

.method public stopSmoothnessWatch()V
    .locals 2

    .prologue
    .line 206
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c()V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/APMAgentImpl;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->d()V

    .line 211
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a()Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->b(Landroid/os/Looper;)V

    .line 212
    return-void
.end method
