.class Lcom/alipay/mobile/nebulacore/download/WorkerPool;
.super Ljava/lang/Object;
.source "WorkerPool.java"


# static fields
.field public static final DEFAULT_WORKERS:I = 0x3


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/mobile/nebulacore/download/Worker;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    .line 19
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->b:I

    .line 20
    return-void
.end method


# virtual methods
.method public clearTask()Z
    .locals 3

    .prologue
    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    monitor-enter v1

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    monitor-exit v1

    .line 112
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/Worker;

    .line 109
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/Worker;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doWork()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 27
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    monitor-enter v2

    .line 28
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    monitor-exit v2

    move v0, v1

    .line 55
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    .line 46
    iget v3, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->b:I

    if-ge v0, v3, :cond_3

    .line 47
    new-instance v1, Lcom/alipay/mobile/nebulacore/download/Worker;

    invoke-direct {v1}, Lcom/alipay/mobile/nebulacore/download/Worker;-><init>()V

    .line 48
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h5downloader_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/download/Worker;->setName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Worker;->start()V

    .line 51
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    .line 33
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/Worker;

    .line 34
    iget-boolean v4, v0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_1

    .line 36
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/Worker;->join()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 37
    :catch_0
    move-exception v4

    .line 38
    :try_start_3
    const-string/jumbo v5, "WorkerPool"

    const-string/jumbo v6, "exception detail"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 55
    :cond_3
    monitor-exit v2

    move v0, v1

    goto :goto_0
.end method

.method public hasTask(Lcom/alipay/mobile/nebulacore/download/TaskInfo;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 87
    if-nez p1, :cond_0

    move v0, v1

    .line 103
    :goto_0
    return v0

    .line 90
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 91
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    monitor-enter v3

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    monitor-exit v3

    move v0, v1

    .line 103
    goto :goto_0

    .line 92
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/Worker;

    .line 93
    iget-object v5, v0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    if-eqz v5, :cond_1

    .line 94
    iget-object v0, v0, Lcom/alipay/mobile/nebulacore/download/Worker;->task:Lcom/alipay/mobile/nebulacore/download/TaskInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/download/TaskInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 98
    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public isFull()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    monitor-enter v3

    .line 61
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->b:I

    if-ge v0, v2, :cond_0

    .line 62
    monitor-exit v3

    move v0, v1

    .line 82
    :goto_0
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 67
    add-int/lit8 v0, v2, -0x1

    move v5, v0

    move v0, v2

    move v2, v5

    .line 68
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->b:I

    if-le v0, v4, :cond_1

    if-gez v2, :cond_3

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    monitor-exit v3

    const/4 v0, 0x1

    goto :goto_0

    .line 69
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/Worker;

    .line 70
    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z

    if-nez v0, :cond_4

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 73
    :cond_4
    add-int/lit8 v0, v2, -0x1

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    move v5, v0

    move v0, v2

    move v2, v5

    goto :goto_1

    .line 77
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebulacore/download/Worker;

    .line 78
    iget-boolean v0, v0, Lcom/alipay/mobile/nebulacore/download/Worker;->running:Z

    if-nez v0, :cond_2

    .line 79
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public setMaxWorkers(I)V
    .locals 0

    .prologue
    .line 23
    iput p1, p0, Lcom/alipay/mobile/nebulacore/download/WorkerPool;->b:I

    .line 24
    return-void
.end method
