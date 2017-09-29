.class public Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "TrafficAbuseTrackerTask.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/Context;

.field private d:J

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J

    .line 27
    iput v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->e:I

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->c:Landroid/content/Context;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 32
    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->e:I

    .line 42
    :cond_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_1

    .line 49
    iput-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->c:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 57
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v7, v0, :cond_2

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->a:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iput-wide v8, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J

    goto :goto_0

    .line 72
    :cond_3
    const/4 v1, 0x0

    .line 75
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v0, :cond_6

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "xiaomi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 77
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->c:Landroid/content/Context;

    const-string/jumbo v5, "applog"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    :try_start_1
    invoke-static {v2, v4}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/io/File;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 83
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v7

    .line 94
    :goto_2
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J

    cmp-long v1, v1, v8

    if-gtz v1, :cond_5

    .line 95
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->e:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    iget v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->e:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    add-long/2addr v1, v4

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J

    .line 104
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->a:Ljava/lang/String;

    const-string/jumbo v2, "kill process"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->a:Ljava/lang/String;

    const-string/jumbo v2, "kill process"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    .line 108
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 109
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 84
    :catch_1
    move-exception v0

    move-object v2, v0

    move-object v0, v3

    .line 85
    :goto_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    sget-object v6, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->a:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 97
    :cond_5
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->e:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v1

    iget v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->e:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    add-long/2addr v1, v4

    .line 98
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/traffic/TrafficAbuseTrackerTask;->d:J

    sub-long/2addr v1, v4

    const-wide/32 v4, 0x3200000

    cmp-long v1, v1, v4

    if-lez v1, :cond_4

    move v0, v7

    .line 99
    goto :goto_3

    .line 84
    :catch_2
    move-exception v2

    goto :goto_4

    :cond_6
    move v0, v1

    goto :goto_2
.end method
