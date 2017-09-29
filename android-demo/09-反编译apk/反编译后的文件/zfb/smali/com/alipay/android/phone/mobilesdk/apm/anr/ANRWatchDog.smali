.class public Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;
.super Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;
.source "ANRWatchDog.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static i:Ljava/lang/String;


# instance fields
.field private final c:Landroid/os/Handler;

.field private final d:Landroid/content/Context;

.field private final e:I

.field private volatile f:I

.field private volatile g:I

.field private final h:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->a:Ljava/lang/String;

    .line 83
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->c:Landroid/os/Handler;

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->f:I

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->g:I

    .line 61
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/b;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/mobilesdk/apm/anr/b;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->h:Ljava/lang/Runnable;

    .line 76
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->d:Landroid/content/Context;

    .line 77
    const/16 v0, 0x1388

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->e:I

    .line 78
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;)I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->f:I

    return v0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;I)I
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->f:I

    return p1
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 88
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->f:I

    iget v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->g:I

    if-ne v0, v1, :cond_0

    .line 90
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;->NewMainOnly()Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRError;

    move-result-object v0

    .line 92
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->a:Ljava/lang/String;

    const-string/jumbo v3, "anr"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->a:Ljava/lang/String;

    const-string/jumbo v2, "Anr occurs, are you debugging?"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    iget v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->f:I

    iput v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->g:I

    .line 108
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 109
    return-void

    .line 96
    :cond_1
    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 98
    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->i:Ljava/lang/String;

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 101
    const-string/jumbo v3, "stackFrame"

    sget-object v4, Lcom/alipay/android/phone/mobilesdk/apm/anr/ANRWatchDog;->i:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string/jumbo v3, "anrTime"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string/jumbo v0, "performance"

    const-string/jumbo v1, "anr"

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
