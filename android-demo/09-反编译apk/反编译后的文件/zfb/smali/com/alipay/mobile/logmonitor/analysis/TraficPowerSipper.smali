.class public Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;
.super Ljava/lang/Object;
.source "TraficPowerSipper.java"


# static fields
.field private static final b:[I

.field private static c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;


# instance fields
.field final a:Landroid/content/Context;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->b:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->d:J

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    .line 89
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;
    .locals 2

    .prologue
    .line 97
    const-class v1, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;

    .line 100
    :cond_0
    sget-object v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->c:Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 406
    if-nez p1, :cond_1

    .line 415
    :cond_0
    return-void

    .line 409
    :cond_1
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 410
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 411
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    .line 412
    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 47

    .prologue
    .line 193
    :try_start_0
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xf

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->d:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    const-string/jumbo v7, "activity"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    invoke-virtual {v3}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v3, :cond_16

    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v8, v6, :cond_16

    long-to-double v8, v4

    iget v3, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "/proc/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/stat"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [J

    sget-object v5, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->b:[I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v5, v10, v4, v11}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    aget-wide v10, v4, v3

    const/4 v3, 0x3

    aget-wide v3, v4, v3

    add-long/2addr v3, v10

    const-wide/16 v10, 0x0

    cmp-long v5, v3, v10

    if-lez v5, :cond_0

    :goto_1
    long-to-double v3, v3

    const-wide v10, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v3, v10

    add-double/2addr v3, v8

    double-to-long v3, v3

    :goto_2
    move-wide v4, v3

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v8, "snapshotCpuTime"

    const-wide/16 v9, -0x1

    invoke-virtual {v3, v8, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v10, "snapshotElapseTime"

    const-wide/16 v11, -0x1

    invoke-virtual {v3, v10, v11, v12}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v12, "snapshotCpuTime"

    invoke-virtual {v3, v12, v4, v5}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v12, "snapshotElapseTime"

    invoke-virtual {v3, v12, v6, v7}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v12, 0x0

    cmp-long v3, v8, v12

    if-ltz v3, :cond_3

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-gez v3, :cond_5

    .line 199
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "lastTraficPowerDump"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v3

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 203
    sub-long v3, v5, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 205
    sget-object v7, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v8, 0x3

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-gez v3, :cond_6

    .line 403
    :cond_4
    :goto_4
    return-void

    .line 193
    :cond_5
    sub-long v3, v4, v8

    sub-long v5, v6, v10

    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-ltz v7, :cond_3

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-ltz v7, :cond_3

    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v7

    const-string/jumbo v8, "totalCpuTime"

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v9}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v9

    const-string/jumbo v10, "totalElapseTime"

    const-wide/16 v11, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v11}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v11

    const-string/jumbo v12, "totalCpuTime"

    add-long/2addr v3, v7

    invoke-virtual {v11, v12, v3, v4}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "totalElapseTime"

    add-long/2addr v5, v9

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 194
    :catch_0
    move-exception v3

    .line 195
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "TraficPowerSipper"

    invoke-interface {v4, v5, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 209
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v4, "lastTraficPowerDump"

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;J)V

    .line 212
    const-wide/16 v18, 0x0

    .line 213
    const-wide/16 v16, 0x0

    .line 215
    const-wide/16 v31, 0x3

    .line 216
    const-wide/16 v14, 0x0

    .line 217
    const-wide/16 v12, 0x0

    .line 218
    const-wide/16 v10, 0x0

    .line 219
    const-wide/16 v8, 0x0

    .line 220
    const-wide/16 v6, 0x0

    .line 221
    const-wide/16 v4, 0x0

    .line 223
    const/16 v25, 0x0

    .line 224
    const/16 v24, 0x0

    .line 226
    const/16 v23, 0x0

    .line 227
    const/16 v22, 0x0

    .line 229
    const/16 v21, 0x0

    .line 230
    const/16 v20, 0x0

    .line 232
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v26, "totalCpuTime"

    const-wide/16 v27, 0x0

    move-object/from16 v0, v26

    move-wide/from16 v1, v27

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v28, "totalElapseTime"

    const-wide/16 v29, 0x0

    move-object/from16 v0, v28

    move-wide/from16 v1, v29

    invoke-virtual {v3, v0, v1, v2}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->b(Ljava/lang/String;J)J

    move-result-wide v28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v30, "totalCpuTime"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v3

    const-string/jumbo v30, "totalElapseTime"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Ljava/lang/String;)V

    const/4 v3, 0x0

    const-wide/16 v33, 0x0

    cmp-long v30, v28, v33

    if-lez v30, :cond_15

    const v3, 0x3f23d70a    # 0.64f

    move-wide/from16 v0, v26

    long-to-float v0, v0

    move/from16 v30, v0

    const/16 v33, 0x0

    add-float v30, v30, v33

    mul-float v3, v3, v30

    move-wide/from16 v0, v28

    long-to-float v0, v0

    move/from16 v30, v0

    div-float v3, v3, v30

    const v30, 0x3dcccccd    # 0.1f

    sub-float v3, v3, v30

    const/high16 v30, 0x42c80000    # 100.0f

    mul-float v3, v3, v30

    const/16 v30, 0x0

    cmpg-float v30, v3, v30

    if-gez v30, :cond_15

    const/4 v3, 0x0

    move/from16 v45, v3

    :goto_5
    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v3, v45, v3

    if-ltz v3, :cond_7

    new-instance v3, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-direct {v3, v0}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    const/16 v30, 0x0

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a(Z)Ljava/lang/String;

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v30, "TraficPowerSipper"

    new-instance v33, Ljava/lang/StringBuilder;

    const-string/jumbo v34, "analysisCpuBatteryLevel,totalCpuTime="

    invoke-direct/range {v33 .. v34}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ",totalElapseTime="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, ",cpuBatteryLevel"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v30

    move-object/from16 v1, v26

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const/high16 v30, -0x40800000    # -1.0f

    .line 234
    const/high16 v29, -0x40800000    # -1.0f

    .line 235
    const/16 v28, -0x1

    .line 237
    const/16 v27, 0x0

    .line 238
    const/16 v26, 0x0

    .line 241
    :try_start_2
    new-instance v3, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    invoke-direct {v3, v0}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-static/range {v33 .. v33}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Landroid/content/SharedPreferences;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->readFromSP(Landroid/content/SharedPreferences;)V

    .line 243
    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v18

    .line 244
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v33

    const-string/jumbo v34, "TraficPowerSipper"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "lastConsumeInfo:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-interface/range {v33 .. v35}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v33, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-direct/range {v33 .. v34}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;-><init>(Landroid/content/Context;)V

    .line 247
    const/16 v34, 0x0

    invoke-virtual/range {v33 .. v34}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->load(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v34, v0

    invoke-static/range {v34 .. v34}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Lcom/alipay/mobile/logmonitor/util/MonitorSPCache;->a()Landroid/content/SharedPreferences;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->writeToSP(Landroid/content/SharedPreferences;)V

    .line 249
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v16

    .line 250
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v34

    const-string/jumbo v35, "TraficPowerSipper"

    new-instance v36, Ljava/lang/StringBuilder;

    const-string/jumbo v37, "curConsumeInfo:"

    invoke-direct/range {v36 .. v37}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-interface/range {v34 .. v36}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v34

    const-wide/16 v36, 0x0

    cmp-long v34, v34, v36

    if-lez v34, :cond_4

    .line 258
    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->subtraction(Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;)V

    .line 259
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v34, "TraficPowerSipper"

    new-instance v35, Ljava/lang/StringBuilder;

    const-string/jumbo v36, "resultConsumeInfo:"

    invoke-direct/range {v35 .. v36}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v34

    move-object/from16 v1, v35

    invoke-interface {v3, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiTxBytes()J

    move-result-wide v14

    .line 262
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getWifiRxBytes()J

    move-result-wide v12

    .line 264
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsTxBytes()J

    move-result-wide v10

    .line 265
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getGprsRxBytes()J

    move-result-wide v8

    .line 267
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalTxBytes()J

    move-result-wide v6

    .line 268
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getTotalRxBytes()J

    move-result-wide v4

    .line 270
    invoke-virtual/range {v33 .. v33}, Lcom/alipay/mobile/monitor/analysis/power/TrafficConsumeInfo;->getLoadSecondTime()J

    move-result-wide v33

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v35, 0x1

    move-wide/from16 v0, v35

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v35

    div-long v31, v33, v35
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    move-wide/from16 v39, v31

    move-wide/from16 v41, v16

    move-wide/from16 v43, v18

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v31, v8

    .line 278
    :goto_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->b()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v8

    .line 279
    :try_start_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    move-result v3

    if-nez v3, :cond_e

    const/4 v9, 0x1

    .line 280
    :goto_7
    if-eqz v9, :cond_8

    .line 281
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TraficPowerSipper"

    invoke-interface {v3, v4, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->c()Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    move-result-object v6

    .line 285
    :try_start_6
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    move-result v3

    if-nez v3, :cond_f

    const/4 v7, 0x1

    .line 286
    :goto_8
    if-eqz v7, :cond_9

    .line 287
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TraficPowerSipper"

    invoke-interface {v3, v4, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->d()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    move-result-object v4

    .line 291
    :try_start_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_e

    move-result v3

    if-nez v3, :cond_10

    const/4 v5, 0x1

    .line 292
    :goto_9
    if-eqz v5, :cond_a

    .line 293
    :try_start_9
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v10, "TraficPowerSipper"

    invoke-interface {v3, v10, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_f

    move-object v10, v4

    move v11, v5

    move-object v12, v6

    move-object v13, v8

    move v14, v9

    move v5, v7

    .line 304
    :goto_a
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    new-instance v4, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    invoke-direct {v4, v3}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ":push"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a(Landroid/content/Context;Ljava/lang/String;)Z

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/util/UserDiagnostician;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_11

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v6, "monitor.action.MONITOR_POWER"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_b
    new-instance v6, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;

    invoke-direct {v6, v3}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TraficPowerSipper"

    const-string/jumbo v7, "powerInfo refresh fail"

    invoke-interface {v3, v4, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_b
    invoke-virtual {v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b()I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3

    move-result v9

    .line 306
    :try_start_b
    invoke-virtual {v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a()F
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    move-result v4

    .line 307
    :try_start_c
    invoke-virtual {v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6

    move-result-object v8

    .line 308
    :try_start_d
    invoke-virtual {v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    move-result-object v7

    .line 311
    :try_start_e
    invoke-virtual {v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e()Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v6

    .line 313
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;

    move-result-object v3

    invoke-virtual {v3, v4, v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerDegradeManager;->a(FLcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;)V

    .line 316
    if-eqz v6, :cond_14

    .line 318
    iget-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    move-wide/from16 v19, v0

    const-wide v21, 0x40f86a0000000000L    # 100000.0

    cmpg-double v3, v19, v21

    if-gez v3, :cond_13

    iget-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    move-wide/from16 v19, v0

    const-wide/32 v21, 0xaae60

    cmp-long v3, v19, v21

    if-gez v3, :cond_13

    iget-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    move-wide/from16 v19, v0
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_8

    const-wide/32 v21, 0xf4240

    cmp-long v3, v19, v21

    if-gez v3, :cond_13

    .line 319
    const/high16 v3, -0x40800000    # -1.0f

    .line 323
    :goto_c
    const/high16 v19, 0x41200000    # 10.0f

    cmpl-float v19, v3, v19

    if-lez v19, :cond_c

    :try_start_f
    iget-wide v0, v6, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    move-wide/from16 v19, v0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v21, 0x14

    move-wide/from16 v0, v21

    invoke-virtual {v6, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v21

    cmp-long v6, v19, v21

    if-lez v6, :cond_c

    .line 324
    new-instance v6, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v6, v0}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/alipay/mobile/logmonitor/util/stack/ThreadDumpHelper;->a(Z)Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_9

    :cond_c
    :goto_d
    move v6, v3

    .line 333
    :goto_e
    const-wide/16 v19, 0x0

    cmp-long v3, v39, v19

    if-lez v3, :cond_12

    .line 334
    const-wide/16 v19, 0x3e8

    div-long v19, v15, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->f()J

    move-result-wide v21

    mul-long v21, v21, v39

    cmp-long v3, v19, v21

    if-gtz v3, :cond_d

    const-wide/16 v19, 0x3e8

    div-long v19, v17, v19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->e()J

    move-result-wide v21

    mul-long v21, v21, v39

    cmp-long v3, v19, v21

    if-gtz v3, :cond_d

    add-long v19, v15, v17

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->a(Landroid/content/Context;)Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/logmonitor/analysis/traffic/TrafficMonitor;->g()J

    move-result-wide v21

    mul-long v21, v21, v39

    cmp-long v3, v19, v21

    if-lez v3, :cond_12

    .line 338
    :cond_d
    const/4 v3, 0x1

    .line 342
    :goto_f
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v19, "TraficPowerSipper"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string/jumbo v21, "startTime="

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-wide/from16 v1, v43

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",endTime="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v41

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",totalUploadSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ",totalDownloadSize="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "consumeBatteryLevel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "consumeBatteryIndex="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "trafficReportDesc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "trafficOverflowDesc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "trafficDegradeDesc="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    new-instance v5, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v5}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    .line 355
    const-string/jumbo v19, "startTime"

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string/jumbo v19, "endTime"

    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string/jumbo v19, "wifiUploadSize"

    invoke-static/range {v37 .. v38}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string/jumbo v19, "wifiDownloadSize"

    invoke-static/range {v35 .. v36}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string/jumbo v19, "mobileUploadSize"

    invoke-static/range {v33 .. v34}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const-string/jumbo v19, "mobileDownloadSize"

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v19, "totalUploadSize"

    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v19, "totalDownloadSize"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string/jumbo v19, "trafficInterval"

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v19, "totalSize"

    add-long v15, v15, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v19

    invoke-virtual {v5, v0, v15}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string/jumbo v15, "cpuBatteryLevel"

    invoke-static/range {v45 .. v45}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string/jumbo v15, "consumeBatteryLevel"

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v15, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string/jumbo v6, "consumeBatteryLevelReal"

    invoke-static {v4}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    const-string/jumbo v4, "consumeBatteryIndex"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string/jumbo v4, "highestDrain"

    invoke-virtual {v5, v4, v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const-string/jumbo v4, "batteryDesc"

    invoke-virtual {v5, v4, v7}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string/jumbo v4, "trafficReport"

    invoke-static {v14}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string/jumbo v4, "trafficReportDesc"

    invoke-virtual {v5, v4, v13}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string/jumbo v4, "trafficOverflow"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v4, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string/jumbo v3, "trafficOverflowDesc"

    invoke-virtual {v5, v3, v12}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string/jumbo v3, "trafficDegrade"

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string/jumbo v3, "trafficDegradeDesc"

    invoke-virtual {v5, v3, v10}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :try_start_10
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->obtainStorageUsage()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V

    .line 387
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->obtainMemoryUsage()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V

    .line 390
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->obtainFluencyUsage()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/alipay/mobile/logmonitor/analysis/TraficPowerSipper;->a(Lcom/alipay/mobile/common/logging/api/monitor/Performance;Landroid/os/Bundle;)V

    .line 393
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitorAgent;->getAPMAgent()Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/android/phone/mobilesdk/apm/api/APMAgent;->disconnect()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4

    .line 398
    :goto_10
    const-string/jumbo v3, "TrafficPowerReport"

    invoke-virtual {v5, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v3

    sget-object v4, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_PERFORMANCE:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 402
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/logging/api/LogContext;->flush(Z)V

    goto/16 :goto_4

    .line 272
    :catch_1
    move-exception v3

    .line 273
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v33

    const-string/jumbo v34, "TraficPowerSipper"

    move-object/from16 v0, v33

    move-object/from16 v1, v34

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide/from16 v33, v10

    move-wide/from16 v35, v12

    move-wide/from16 v37, v14

    move-wide/from16 v39, v31

    move-wide/from16 v41, v16

    move-wide/from16 v43, v18

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v31, v8

    goto/16 :goto_6

    .line 279
    :cond_e
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 285
    :cond_f
    const/4 v7, 0x0

    goto/16 :goto_8

    .line 291
    :cond_10
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 298
    :catch_2
    move-exception v3

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    move-object/from16 v8, v24

    move/from16 v9, v25

    .line 299
    :goto_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v10

    const-string/jumbo v11, "TraficPowerSipper"

    invoke-interface {v10, v11, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v10, v4

    move v11, v5

    move-object v12, v6

    move-object v13, v8

    move v14, v9

    move v5, v7

    goto/16 :goto_a

    .line 304
    :cond_11
    :try_start_11
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "TraficPowerSipper"

    const-string/jumbo v7, " Wallet process in not runnning."

    invoke-interface {v4, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_3

    goto/16 :goto_b

    .line 328
    :catch_3
    move-exception v3

    move-object/from16 v4, v26

    move-object/from16 v6, v27

    move/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v30

    .line 329
    :goto_12
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v19

    const-string/jumbo v20, "TraficPowerSipper"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v46, v4

    move v4, v8

    move-object v8, v6

    move v6, v9

    move v9, v7

    move-object/from16 v7, v46

    goto/16 :goto_e

    .line 394
    :catch_4
    move-exception v3

    .line 395
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v6, "TraficPowerSipper"

    invoke-interface {v4, v6, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 328
    :catch_5
    move-exception v3

    move-object/from16 v4, v26

    move-object/from16 v6, v27

    move v7, v9

    move/from16 v8, v29

    move/from16 v9, v30

    goto :goto_12

    :catch_6
    move-exception v3

    move-object/from16 v6, v27

    move v7, v9

    move v8, v4

    move v9, v4

    move-object/from16 v4, v26

    goto :goto_12

    :catch_7
    move-exception v3

    move-object v6, v8

    move v7, v9

    move v8, v4

    move v9, v4

    move-object/from16 v4, v26

    goto :goto_12

    :catch_8
    move-exception v3

    move-object v6, v8

    move v8, v4

    move/from16 v46, v9

    move v9, v4

    move-object v4, v7

    move/from16 v7, v46

    goto :goto_12

    :catch_9
    move-exception v6

    move-object/from16 v46, v6

    move-object v6, v8

    move v8, v4

    move-object v4, v7

    move v7, v9

    move v9, v3

    move-object/from16 v3, v46

    goto :goto_12

    .line 298
    :catch_a
    move-exception v3

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    move/from16 v9, v25

    goto/16 :goto_11

    :catch_b
    move-exception v3

    move-object/from16 v4, v20

    move/from16 v5, v21

    move-object/from16 v6, v22

    move/from16 v7, v23

    goto/16 :goto_11

    :catch_c
    move-exception v3

    move-object/from16 v4, v20

    move/from16 v5, v21

    move/from16 v7, v23

    goto/16 :goto_11

    :catch_d
    move-exception v3

    move-object/from16 v4, v20

    move/from16 v5, v21

    goto/16 :goto_11

    :catch_e
    move-exception v3

    move/from16 v5, v21

    goto/16 :goto_11

    :catch_f
    move-exception v3

    goto/16 :goto_11

    :cond_12
    move v3, v5

    goto/16 :goto_f

    :cond_13
    move v3, v4

    goto/16 :goto_c

    :cond_14
    move v3, v4

    goto/16 :goto_d

    :cond_15
    move/from16 v45, v3

    goto/16 :goto_5

    :cond_16
    move-wide v3, v4

    goto/16 :goto_2
.end method
