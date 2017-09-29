.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;
.super Ljava/lang/Object;
.source "ChoreographerProcessor.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;


# instance fields
.field public a:Z

.field private d:Landroid/content/Context;

.field private e:Landroid/os/Handler;

.field private f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

.field private g:Landroid/content/SharedPreferences;

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a:Z

    .line 45
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    .line 398
    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    .line 406
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    .line 436
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    .line 87
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->d:Landroid/content/Context;

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;B)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    .line 94
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h()V

    .line 99
    :cond_0
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;
    .locals 2

    .prologue
    .line 63
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    .line 66
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->c:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->e:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h()V

    return-void
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Z
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g()Z

    move-result v0

    return v0
.end method

.method static synthetic e(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    .line 404
    :cond_0
    return-void
.end method

.method private g()Z
    .locals 10

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v8, -0x1

    .line 413
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 414
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f()V

    .line 415
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_0

    .line 416
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "SMOOTHNESS_KEY_LAST_DAY_TIME"

    const-wide/16 v6, -0x1

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    .line 418
    :cond_0
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    cmp-long v4, v4, v8

    if-nez v4, :cond_1

    .line 419
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    .line 420
    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "SMOOTHNESS_KEY_LAST_DAY_TIME"

    iget-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 422
    :cond_1
    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    sub-long v4, v2, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x1

    invoke-virtual {v6, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 423
    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    .line 424
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "SMOOTHNESS_KEY_LAST_DAY_TIME"

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->h:J

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 425
    const-class v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f()V

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v4, "SMOOTHNESS_KEY_TIME_TODAY"

    iget-wide v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v3

    .line 432
    :cond_2
    :goto_1
    return v0

    .line 425
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    sget-object v5, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 430
    :catch_1
    move-exception v0

    .line 431
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 432
    goto :goto_1

    .line 428
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i()J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v2

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method private h()V
    .locals 6

    .prologue
    .line 439
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    monitor-enter v1

    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f()V

    .line 442
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "SMOOTHNESS_KEY_TIME_TODAY"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    .line 445
    :cond_0
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    .line 446
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "SMOOTHNESS_KEY_TIME_TODAY"

    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 447
    :catch_0
    move-exception v0

    .line 448
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 450
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private i()J
    .locals 5

    .prologue
    .line 466
    const-class v2, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;

    monitor-enter v2

    .line 468
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f()V

    .line 469
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    const-wide/16 v3, -0x1

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "SMOOTHNESS_KEY_TIME_TODAY"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J

    .line 472
    :cond_0
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->i:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v2

    .line 475
    :goto_0
    return-wide v0

    .line 473
    :catch_0
    move-exception v0

    .line 474
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->b:Ljava/lang/String;

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 475
    const-wide/16 v0, 0xa

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 75
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->c()J

    move-result-wide v1

    .line 77
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 78
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 83
    :cond_0
    monitor-exit p0

    return-object v0

    .line 75
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 108
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->a()V

    goto :goto_0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/ChoreographerProcessor;->f:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/a;->b()V

    .line 124
    :cond_0
    return-void
.end method

.method public final declared-synchronized d()V
    .locals 0

    .prologue
    .line 131
    monitor-enter p0

    monitor-exit p0

    return-void
.end method
