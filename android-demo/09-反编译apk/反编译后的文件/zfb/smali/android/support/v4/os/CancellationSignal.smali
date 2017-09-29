.class public final Landroid/support/v4/os/CancellationSignal;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

.field private c:Ljava/lang/Object;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->a:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->d:Z

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->b:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    iget-object v1, p0, Landroid/support/v4/os/CancellationSignal;->c:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_2
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_2
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_3
    iput-boolean v1, p0, Landroid/support/v4/os/CancellationSignal;->d:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getCancellationSignalObject()Ljava/lang/Object;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->c:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/os/CancellationSignal;->c:Ljava/lang/Object;

    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->c:Ljava/lang/Object;

    invoke-static {v0}, Landroid/support/v4/os/CancellationSignalCompatJellybean;->cancel(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->c:Ljava/lang/Object;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isCanceled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->a:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setOnCancelListener(Landroid/support/v4/os/CancellationSignal$OnCancelListener;)V
    .locals 1

    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/os/CancellationSignal;->b:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    if-ne v0, p1, :cond_1

    monitor-exit p0

    :goto_1
    return-void

    :cond_1
    iput-object p1, p0, Landroid/support/v4/os/CancellationSignal;->b:Landroid/support/v4/os/CancellationSignal$OnCancelListener;

    iget-boolean v0, p0, Landroid/support/v4/os/CancellationSignal;->a:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    monitor-exit p0

    invoke-interface {p1}, Landroid/support/v4/os/CancellationSignal$OnCancelListener;->onCancel()V

    goto :goto_1
.end method

.method public final throwIfCanceled()V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method
