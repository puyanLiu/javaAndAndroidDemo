.class public Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;
.super Ljava/lang/Object;
.source "LooperMonitor.java"


# static fields
.field private static b:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;


# instance fields
.field public a:Z

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/Looper;",
            "Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->c:Ljava/util/Map;

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a:Z

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->c:Ljava/util/Map;

    .line 30
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;
    .locals 2

    .prologue
    .line 22
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    .line 25
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->b:Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/os/Looper;)V
    .locals 3

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a:Z

    if-nez v0, :cond_0

    .line 46
    :goto_0
    return-void

    .line 36
    :cond_0
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    monitor-enter v1

    .line 37
    if-nez p1, :cond_1

    .line 38
    monitor-exit v1

    goto :goto_0

    .line 40
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :cond_2
    :try_start_1
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    invoke-direct {v0, p1}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;-><init>(Landroid/os/Looper;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 45
    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final b(Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->a:Z

    if-nez v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    const-class v1, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;

    monitor-enter v1

    .line 54
    if-nez p1, :cond_1

    .line 55
    monitor-exit v1

    goto :goto_0

    .line 57
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Looper;->setMessageLogging(Landroid/util/Printer;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;

    .line 59
    if-eqz v0, :cond_2

    .line 60
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperPrinter;->a()V

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/apm/smoothness/LooperMonitor;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
