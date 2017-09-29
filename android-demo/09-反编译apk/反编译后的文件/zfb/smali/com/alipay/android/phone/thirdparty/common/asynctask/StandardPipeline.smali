.class public Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;
.super Ljava/lang/Object;
.source "StandardPipeline.java"

# interfaces
.implements Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;


# static fields
.field static final TAG:Ljava/lang/String; = "StandardPipeline"


# instance fields
.field volatile mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field protected volatile mIsStart:Z

.field private final mName:Ljava/lang/String;

.field protected mTasks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;-><init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Executor;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    .line 40
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    :cond_0
    const-string/jumbo v0, "StandardPipeline"

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    .line 45
    :goto_0
    iput-object p2, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    .line 46
    return-void

    .line 43
    :cond_1
    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline has already stopped."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    invoke-virtual {p1, p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->setPipeLine(Lcom/alipay/android/phone/thirdparty/common/asynctask/Pipeline;)V

    .line 72
    iget-object v3, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v3

    .line 74
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_4

    .line 76
    invoke-virtual {p1}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->getWeight()I

    move-result v4

    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-virtual {v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->getWeight()I

    move-result v0

    if-gt v4, v0, :cond_3

    .line 77
    add-int/lit8 v0, v2, 0x1

    .line 81
    :goto_1
    if-gez v0, :cond_1

    move v0, v1

    .line 83
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    if-eqz v0, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->doStart()V

    .line 89
    :cond_2
    return-void

    .line 75
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 60
    return-void
.end method

.method public addTask(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;->TASK_POOL:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnablePool;->obtain(Ljava/lang/Runnable;Ljava/lang/String;I)Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->addTask(Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;)V

    .line 65
    return-void
.end method

.method protected doStart()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    if-nez v0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->next()V

    .line 108
    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public next()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 116
    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    .line 122
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 132
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mActive:Lcom/alipay/android/phone/thirdparty/common/asynctask/PipelineRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    .line 55
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "StandardPipeline start failed : The StandardPipeline\'s Executor is null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    .line 97
    invoke-virtual {p0}, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->doStart()V

    .line 98
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mIsStart:Z

    .line 140
    iget-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/thirdparty/common/asynctask/StandardPipeline;->mTasks:Ljava/util/ArrayList;

    .line 142
    return-void
.end method
