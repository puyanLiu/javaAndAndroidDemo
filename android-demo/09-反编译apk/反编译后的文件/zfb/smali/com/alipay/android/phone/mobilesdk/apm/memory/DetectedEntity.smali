.class public Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;
.super Ljava/lang/Object;
.source "DetectedEntity.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:J


# instance fields
.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 17
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    .line 27
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->b:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method private static a(Ljava/lang/Class;)J
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)J"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    :try_start_0
    const-class v0, Landroid/os/Debug;

    const-string/jumbo v3, "countInstancesOfClass"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 142
    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 158
    :goto_0
    return-wide v0

    .line 147
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 148
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 149
    const-class v0, Landroid/os/Debug;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v8, v4

    move v0, v2

    move v2, v1

    :goto_1
    if-ge v2, v8, :cond_1

    aget-object v9, v4, v2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_2
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/16 v10, 0x2c

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    const-string/jumbo v2, "countInstancesOfClass"

    move-object v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".countInstancesOfClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1, v0, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 158
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)J
    .locals 5

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 125
    :try_start_0
    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a:Landroid/app/Application;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :goto_0
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a(Ljava/lang/Class;)J

    move-result-wide v0

    return-wide v0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    const-string/jumbo v4, "countInstancesOfClass"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    .line 69
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    .line 73
    return-void
.end method

.method public final d()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 76
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    .line 77
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "detectLeak: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string/jumbo v1, "com.eg.android.AlipayGphone.AlipayLogin"

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 83
    :cond_1
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    if-gez v1, :cond_2

    .line 84
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    const-string/jumbo v3, "detectLeak: expect < 0, errors occurred."

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    if-lez v1, :cond_3

    .line 90
    iput-wide v6, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    goto :goto_0

    .line 94
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 96
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    cmp-long v3, v3, v6

    if-nez v3, :cond_4

    .line 97
    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    goto :goto_0

    .line 100
    :cond_4
    iget-wide v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    sub-long/2addr v1, v3

    sget-wide v3, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->b:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "detectLeak: actual = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    cmp-long v1, v1, v6

    if-ltz v1, :cond_0

    .line 114
    iget-wide v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    iget v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 118
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x2c

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->g:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/memory/DetectedEntity;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
