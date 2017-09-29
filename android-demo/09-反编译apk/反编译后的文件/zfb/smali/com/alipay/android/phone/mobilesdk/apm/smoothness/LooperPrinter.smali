.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;
.super Ljava/lang/Object;
.source "LooperPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# static fields
.field private static f:J

.field private static g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-wide/16 v0, 0x9c4

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->f:J

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->g:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-boolean v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b:Z

    .line 36
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c:J

    .line 37
    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->d:Ljava/lang/String;

    .line 39
    iput-object v3, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    .line 46
    if-nez p1, :cond_0

    .line 47
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "LooperPrinter init param is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-wide/16 v0, 0x8ca

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->f:J

    .line 55
    :goto_0
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->a:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "main"

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b:Z

    .line 57
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;

    invoke-direct {v0, p0, v2}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/c;-><init>(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;B)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    .line 58
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xfa

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;JJ)V

    .line 59
    return-void

    .line 53
    :cond_1
    const-wide/16 v0, 0x2ee

    sput-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->f:J

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b:Z

    return v0
.end method

.method static synthetic b()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->f:J

    return-wide v0
.end method

.method static synthetic b(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c:J

    return-wide v0
.end method

.method static synthetic c(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)J
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c:J

    return-wide v0
.end method

.method static synthetic c()Ljava/util/Set;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->g:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic d(Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 80
    monitor-enter p0

    .line 81
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->a:Ljava/lang/String;

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c:J

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->d:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a()Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;

    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    invoke-static {v0}, Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimer;->a(Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->e:Lcom/alipay/android/phone/mobilesdk/apm/util/APMTimerJob;

    .line 88
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->g:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public println(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 63
    monitor-enter p0

    .line 64
    if-nez p1, :cond_0

    .line 65
    monitor-exit p0

    .line 76
    :goto_0
    return-void

    .line 67
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->b:Z

    if-eqz v0, :cond_3

    .line 68
    const-string/jumbo v0, ">>>>>"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c:J

    .line 70
    if-nez p1, :cond_4

    const-string/jumbo v0, ""

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->d:Ljava/lang/String;

    .line 72
    :cond_2
    const-string/jumbo v0, "<<<<<"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->c:J

    .line 76
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 70
    :cond_4
    :try_start_1
    const-string/jumbo v0, ">>>>> Dispatching to"

    const-string/jumbo v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_1
.end method
