.class public Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;
.super Ljava/lang/Object;
.source "APMTimer.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;


# instance fields
.field private c:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    if-nez v0, :cond_1

    .line 27
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    monitor-enter v1

    .line 28
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    .line 31
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->b:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V
    .locals 4

    .prologue
    .line 96
    if-nez p0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "unregister: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;->cancel()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    const-string/jumbo v3, "unregister"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V
    .locals 6

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->c:Ljava/util/Timer;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    const-string/jumbo v2, "start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->c:Ljava/util/Timer;

    .line 67
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "register: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->c:Ljava/util/Timer;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a:Ljava/lang/String;

    const-string/jumbo v3, "register"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
