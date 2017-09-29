.class public Lanetwork/channel/http/ThreadPoolExecutorFactory;
.super Ljava/lang/Object;
.source "ThreadPoolExecutorFactory.java"


# static fields
.field private static a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static final f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    sput v1, Lanetwork/channel/http/ThreadPoolExecutorFactory;->b:I

    .line 15
    const/4 v0, 0x3

    sput v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->c:I

    .line 17
    sput v1, Lanetwork/channel/http/ThreadPoolExecutorFactory;->d:I

    .line 18
    const/16 v0, 0x3c

    sput v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->e:I

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 6

    .prologue
    .line 50
    const-class v1, Lanetwork/channel/http/ThreadPoolExecutorFactory;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 51
    sget v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->b:I

    sget v2, Lanetwork/channel/http/ThreadPoolExecutorFactory;->c:I

    sget v3, Lanetwork/channel/http/ThreadPoolExecutorFactory;->d:I

    sget v4, Lanetwork/channel/http/ThreadPoolExecutorFactory;->e:I

    const/16 v5, 0x64

    invoke-static {v0, v2, v3, v4, v5}, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 53
    :cond_0
    sget-object v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->a:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(IIIII)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .prologue
    .line 39
    if-lez p4, :cond_0

    .line 41
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6, p4}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 45
    :goto_0
    new-instance v7, Lanetwork/channel/http/f;

    invoke-direct {v7, p0}, Lanetwork/channel/http/f;-><init>(I)V

    .line 46
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    int-to-long v3, p3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0

    .line 43
    :cond_0
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lanetwork/channel/http/ThreadPoolExecutorFactory;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method
