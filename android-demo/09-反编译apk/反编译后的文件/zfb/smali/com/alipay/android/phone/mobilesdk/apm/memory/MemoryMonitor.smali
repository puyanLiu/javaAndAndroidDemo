.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "MemoryMonitor.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:J

.field private static final d:J

.field private static final e:Z

.field private static f:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;


# instance fields
.field private g:Z

.field private h:Z

.field private i:J

.field private j:J

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:J

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d:J

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method private a(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;)V
    .locals 5

    .prologue
    .line 211
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->b()J

    move-result-wide v0

    .line 212
    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->a()F

    move-result v2

    .line 214
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:J

    .line 215
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:J

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:J

    .line 217
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    monitor-enter v1

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 6
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
    .line 349
    if-nez p0, :cond_1

    .line 358
    :cond_0
    return-void

    .line 353
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "notifyLeak"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 356
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "notifyLeak: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b()Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;
    .locals 5

    .prologue
    .line 90
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    if-nez v0, :cond_1

    .line 92
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    monitor-enter v1

    .line 93
    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;-><init>()V

    .line 96
    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    iget-boolean v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v4, "start"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-wide v2, 0x7fffffffffffffffL

    iput-wide v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:J

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:J

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    sget-boolean v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/ref/Reference;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Ljava/util/HashMap;

    .line 98
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :cond_1
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->f:Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;

    return-object v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private g()Landroid/os/Bundle;
    .locals 15

    .prologue
    const-wide/16 v13, 0x400

    const-wide/high16 v11, -0x8000000000000000L

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 292
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:Z

    if-nez v0, :cond_0

    .line 345
    :goto_0
    return-object v4

    .line 296
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "getHealthThenReset"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;

    invoke-direct {v1, v10}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;-><init>(Z)V

    .line 299
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;)V

    .line 301
    const-string/jumbo v0, ""

    .line 302
    const-string/jumbo v8, ""

    .line 303
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;->toString()Ljava/lang/String;

    move-result-object v9

    .line 305
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 306
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    monitor-enter v2

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v7

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 312
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    .line 313
    goto :goto_1

    .line 315
    :cond_1
    cmpl-float v0, v1, v7

    if-nez v0, :cond_2

    move v0, v7

    .line 316
    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v3, v1, v0

    .line 318
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 319
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    cmpg-float v0, v3, v7

    if-gez v0, :cond_4

    .line 322
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "getHealthThenReset"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "average: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v0, v7

    .line 329
    :goto_3
    const-string/jumbo v1, "%.2f"

    new-array v2, v10, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 332
    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:J

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:J

    cmp-long v0, v2, v11

    if-eqz v0, :cond_3

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:J

    div-long/2addr v2, v13

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "~"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:J

    div-long/2addr v2, v13

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_4
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 338
    const-string/jumbo v2, "memoryHealth"

    invoke-virtual {v4, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string/jumbo v1, "memoryHealthDesc"

    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const-string/jumbo v0, "memoryDetail"

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->i:J

    .line 343
    iput-wide v11, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->j:J

    goto/16 :goto_0

    .line 315
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    goto/16 :goto_2

    .line 319
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    move-object v0, v8

    goto :goto_4

    :cond_4
    move v0, v3

    goto :goto_3

    :cond_5
    move-object v1, v0

    move-object v0, v8

    goto :goto_4
.end method


# virtual methods
.method protected final a()V
    .locals 6

    .prologue
    .line 195
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "runSampling"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a(Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryStats;)V

    .line 196
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "runDetecting: no GC detected"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 199
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v3, "run"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 196
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "runDetecting: GC occured !"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->l:Ljava/lang/ref/Reference;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    :cond_5
    if-nez v1, :cond_6

    :try_start_4
    monitor-exit v2

    goto :goto_0

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "runDetecting: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "memoryLeak"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "memory"

    const-string/jumbo v3, "leak"

    invoke-static {v0, v3, v1}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 160
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:Z

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:Z

    .line 165
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "onUserResume"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-eqz v0, :cond_3

    .line 168
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/lang/Object;

    if-nez v0, :cond_2

    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/lang/Object;

    .line 169
    :cond_2
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;

    invoke-virtual {v1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 173
    :cond_3
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    sget-wide v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->c:J

    sget-wide v4, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->d:J

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V

    goto :goto_0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:Z

    if-nez v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->h:Z

    .line 182
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v2, "onUserLeave"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    invoke-static {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 186
    sget-boolean v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->e:Z

    if-eqz v0, :cond_0

    .line 187
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->n:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/LifecycleCallback;

    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method

.method public final f()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 283
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->g()Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 287
    :goto_0
    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/MemoryMonitor;->a:Ljava/lang/String;

    const-string/jumbo v3, "getHealthThenReset"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    const/4 v0, 0x0

    goto :goto_0
.end method
