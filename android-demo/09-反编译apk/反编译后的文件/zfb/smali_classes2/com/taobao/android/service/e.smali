.class final Lcom/taobao/android/service/e;
.super Ljava/lang/Object;
.source "Services.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field a:Ljava/lang/Throwable;

.field private volatile b:Landroid/os/IBinder;

.field private final c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/ComponentName;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/taobao/android/service/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()Landroid/os/IBinder;
    .locals 9

    .prologue
    const-wide/16 v7, 0x2710

    const/4 v6, 0x0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 334
    if-eqz v0, :cond_0

    .line 344
    iput-object v6, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    :goto_0
    return-object v0

    .line 335
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/taobao/android/service/e;->c:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 336
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    if-nez v0, :cond_2

    .line 338
    iget-object v0, p0, Lcom/taobao/android/service/e;->c:Ljava/lang/Object;

    const-wide/16 v4, 0x2710

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 339
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v0, v4, v7

    if-lez v0, :cond_1

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 342
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 344
    :catchall_1
    move-exception v0

    iput-object v6, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    throw v0

    .line 341
    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 344
    iput-object v6, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    goto :goto_0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceConnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v1, p0, Lcom/taobao/android/service/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    :try_start_0
    iput-object p1, p0, Lcom/taobao/android/service/e;->e:Landroid/content/ComponentName;

    .line 352
    iput-object p2, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    .line 353
    iget-object v0, p0, Lcom/taobao/android/service/e;->c:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 354
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    :try_start_1
    invoke-interface {p2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/service/e;->d:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    :goto_0
    return-void

    .line 354
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 358
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onServiceDisconnected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v1, p0, Lcom/taobao/android/service/e;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/taobao/android/service/e;->b:Landroid/os/IBinder;

    .line 365
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ManagedServiceConnection["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/android/service/e;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/taobao/android/service/e;->e:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const-string/jumbo v0, "not connected"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/android/service/e;->e:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
