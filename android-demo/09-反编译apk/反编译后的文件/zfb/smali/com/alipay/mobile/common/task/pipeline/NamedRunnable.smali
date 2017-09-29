.class public Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
.super Ljava/lang/Object;
.source "NamedRunnable.java"

# interfaces
.implements Lcom/alipay/mobile/common/task/pipeline/Pool$Poolable;
.implements Ljava/lang/Runnable;


# static fields
.field static final TAG:Ljava/lang/String; = "AsyncTaskExecutor"

.field public static final TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;


# instance fields
.field mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

.field mTask:Ljava/lang/Runnable;

.field mThreadName:Ljava/lang/String;

.field mWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    new-instance v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    const/16 v1, 0x8

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;-><init>(II)V

    sput-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    return-void
.end method

.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    .line 105
    iput-object p2, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    .line 106
    iput p3, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 107
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    .line 163
    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    .line 164
    iput-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 166
    return-void
.end method

.method public run()V
    .locals 10

    .prologue
    .line 128
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 131
    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NamedRunable.run(set ThreadName to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 134
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 135
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "AsyncTaskExecutor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "start at "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v6, "AsyncTaskExecutor"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cost "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    const-string/jumbo v1, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NamedRunable.run(set ThreadName back to:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v0, :cond_1

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    if-eqz v0, :cond_4

    .line 150
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v1, "NamedRunnable.run()->finish(finally:mScheduleNext.scheduleNext())"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;->scheduleNext()V

    .line 156
    :goto_0
    sget-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 157
    const-string/jumbo v0, "AsyncTaskExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    iget-object v2, v2, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return-void

    .line 139
    :catchall_0
    move-exception v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "AsyncTaskExecutor"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cost "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-long v2, v4, v2

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 143
    const-string/jumbo v2, "AsyncTaskExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "NamedRunable.run(set ThreadName back to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/task/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    if-eqz v0, :cond_2

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    if-eqz v0, :cond_3

    .line 150
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v2, "NamedRunnable.run()->finish(finally:mScheduleNext.scheduleNext())"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    invoke-interface {v0}, Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;->scheduleNext()V

    .line 156
    :goto_1
    sget-object v0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->free(Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;)V

    .line 157
    const-string/jumbo v0, "AsyncTaskExecutor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NamedRunnable.run()->finish(TASK_POOL.free(this)): pool.size="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->TASK_POOL:Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;

    iget-object v3, v3, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable$NamedRunnablePool;->freeObjects:Ljava/util/ArrayDeque;

    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/task/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    throw v1

    .line 153
    :cond_3
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v2, "NamedRunnable.run()->finish(finally:null == mScheduleNext)"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v0, "AsyncTaskExecutor"

    const-string/jumbo v1, "NamedRunnable.run()->finish(finally:null == mScheduleNext)"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/task/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method setScheduleNext(Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;)Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mScheduleNext:Lcom/alipay/mobile/common/task/pipeline/StandardPipeline$IScheduleNext;

    .line 119
    return-object p0
.end method

.method setTask(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mTask:Ljava/lang/Runnable;

    .line 115
    return-void
.end method

.method setThreadName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mThreadName:Ljava/lang/String;

    .line 111
    return-void
.end method

.method setWeight(I)V
    .locals 0

    .prologue
    .line 123
    iput p1, p0, Lcom/alipay/mobile/common/task/pipeline/NamedRunnable;->mWeight:I

    .line 124
    return-void
.end method
