.class public Lcom/alipay/mobile/quinox/utils/MonitorLogger;
.super Ljava/lang/Object;
.source "MonitorLogger.java"


# static fields
.field static final CRASH:Ljava/lang/String; = "crash"

.field static final EXCEPTION:Ljava/lang/String; = "exception"

.field static final FOOTPRINT:Ljava/lang/String; = "footprint"

.field static MONITORPOINT_CLIENTSERR:Ljava/lang/Object;

.field static sCrashMethod:Ljava/lang/reflect/Method;

.field static sExceptionMethod:Ljava/lang/reflect/Method;

.field static sFlushMethod:Ljava/lang/reflect/Method;

.field static sFootprintMethod:Ljava/lang/reflect/Method;

.field static sLogContext:Ljava/lang/Object;

.field static sMonitorLogger:Ljava/lang/Object;

.field static sUploadMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static exception(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 129
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sExceptionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 130
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p1, v0

    .line 133
    :cond_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sExceptionMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_1
    const-string/jumbo v0, "LauncherApplication"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_1
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, p2, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    const-string/jumbo v0, "LauncherApplication"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 137
    :catchall_0
    move-exception v0

    .line 138
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    throw v0
.end method

.method public static exception(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public static exception(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_CLIENTSERR:Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->exception(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 125
    return-void
.end method

.method public static flush(Z)V
    .locals 5

    .prologue
    .line 95
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sFlushMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 96
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sFlushMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static footprint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 143
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 144
    return-void
.end method

.method public static footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .prologue
    .line 148
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sFootprintMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 149
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sFootprintMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    const/4 v3, 0x5

    aput-object p5, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    const-string/jumbo v0, "LauncherApplication"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    :try_start_1
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, p1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    const-string/jumbo v0, "LauncherApplication"

    invoke-static {v0, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, p1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    throw v0
.end method

.method public static init()V
    .locals 7

    .prologue
    .line 36
    :try_start_0
    const-class v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 37
    const-string/jumbo v1, "com.alipay.mobile.common.logging.api.monitor.ExceptionID"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 39
    const-string/jumbo v1, "MONITORPOINT_CLIENTSERR"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 40
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->MONITORPOINT_CLIENTSERR:Ljava/lang/Object;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 45
    const-string/jumbo v2, "com.alipay.mobile.common.logging.api.LoggerFactory"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    const-string/jumbo v2, "getLogContext"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 48
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 49
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 51
    sput-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "upload"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 52
    sput-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sUploadMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 54
    sget-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "flush"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 55
    sput-object v2, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sFlushMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 57
    const-string/jumbo v2, "getMonitorLogger"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 58
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 59
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 62
    sput-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 64
    const-string/jumbo v2, "exception"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 65
    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sExceptionMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 67
    const-string/jumbo v0, "footprint"

    .line 68
    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/util/Map;

    aput-object v4, v2, v3

    .line 67
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 69
    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sFootprintMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 71
    const-string/jumbo v0, "crash"

    .line 72
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/Throwable;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 71
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    sput-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sCrashMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static sendCrash(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sendCrash(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static sendCrash(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 109
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sCrashMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sCrashMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sMonitorLogger:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    const-string/jumbo v0, "LauncherApplication"

    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    :try_start_1
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    const-string/jumbo v0, "LauncherApplication"

    invoke-static {v0, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, p0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    throw v0
.end method

.method public static upload(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 81
    invoke-static {v0}, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->flush(Z)V

    .line 83
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Ljava/lang/Object;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sUploadMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sUploadMethod:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/alipay/mobile/quinox/utils/MonitorLogger;->sLogContext:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload(upload="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_1
    const-string/jumbo v1, "LauncherApplication"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    const-string/jumbo v0, "LauncherApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "upload(upload="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "LauncherApplication"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upload(upload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    throw v0
.end method
