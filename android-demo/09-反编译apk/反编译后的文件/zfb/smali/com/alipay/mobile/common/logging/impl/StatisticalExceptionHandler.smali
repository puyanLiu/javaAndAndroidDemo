.class public Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
.super Ljava/lang/Object;
.source "StatisticalExceptionHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;


# instance fields
.field private c:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Landroid/content/Context;

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Z

    .line 40
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/a;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/logging/impl/a;-><init>(Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Ljava/lang/Runnable;

    .line 48
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    .locals 2

    .prologue
    .line 57
    const-class v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b:Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit v1

    return-void

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    .line 87
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 124
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Z

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 126
    const-string/jumbo v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, p1, p2, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 142
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 129
    :cond_0
    invoke-static {p1, p2}, Lcom/alibaba/motu/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/logging/LogContextImpl;

    .line 131
    invoke-static {p1}, Lcom/alibaba/motu/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    .line 132
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b()Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v4, "crash"

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v6, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    sget-object v0, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v6, v0, v1, v8, v7}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v8, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 77
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 66
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Z

    .line 67
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 68
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->h:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/motu/NativeCrashHandler;->init(Landroid/content/Context;Z)Lcom/alibaba/motu/NativeCrashHandler;

    .line 73
    invoke-static {}, Lcom/alibaba/motu/NativeCrashHandler;->getInstance()Lcom/alibaba/motu/NativeCrashHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/motu/NativeCrashHandler;->register(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 74
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized c()V
    .locals 1

    .prologue
    .line 80
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->f:Z

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 95
    .line 97
    const/4 v0, 0x0

    .line 98
    const-string/jumbo v2, "NegligibleThrowable"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 100
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 103
    :goto_0
    const/4 v3, 0x0

    .line 104
    iget-object v4, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    if-eqz v4, :cond_0

    .line 105
    iget-object v3, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->d:Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    invoke-interface {v3, p1, v2}, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;->getExternalExceptionInfo(Ljava/lang/Thread;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    .line 108
    :cond_0
    iget-boolean v4, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->e:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->crash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 112
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v2, p2

    goto :goto_0
.end method
