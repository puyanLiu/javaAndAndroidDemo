.class public Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "MtopSDKThreadPoolExecutorFactory.java"


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field private static final KEEP_ALIVE_TIME:I = 0x1

.field private static final MAX_POOL_SIZE:I

.field private static final QUEENCOUNT:I = 0x80

.field private static priority:I

.field private static volatile threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 13
    sput v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->CORE_POOL_SIZE:I

    .line 14
    sget v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->MAX_POOL_SIZE:I

    .line 16
    const/4 v0, 0x5

    sput v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    .line 19
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    .prologue
    .line 40
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_1

    .line 41
    const-class v9, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;

    monitor-enter v9

    .line 42
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v1, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->CORE_POOL_SIZE:I

    sget v2, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->MAX_POOL_SIZE:I

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->workQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v7, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;

    sget v8, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->priority:I

    invoke-direct {v7, v8}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory$MtopSDKThreadFactory;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    sput-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    :cond_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->threadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method
