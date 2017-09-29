.class public Lcom/spdu/httpdns/TaskThreadPool;
.super Ljava/lang/Object;
.source "TaskThreadPool.java"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field private d:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/16 v2, 0xa

    const/4 v1, 0x1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v2, p0, Lcom/spdu/httpdns/TaskThreadPool;->a:I

    .line 11
    iput v1, p0, Lcom/spdu/httpdns/TaskThreadPool;->b:I

    .line 12
    iput v1, p0, Lcom/spdu/httpdns/TaskThreadPool;->c:I

    .line 19
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v7}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v2, v1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/spdu/httpdns/TaskThreadPool;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/spdu/httpdns/ThreadType;)V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/spdu/httpdns/TaskThreadPool;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/spdu/httpdns/TaskThread;

    invoke-direct {v0, p1}, Lcom/spdu/httpdns/TaskThread;-><init>(Lcom/spdu/httpdns/ThreadType;)V

    .line 28
    iget-object v1, p0, Lcom/spdu/httpdns/TaskThreadPool;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 31
    :cond_0
    return-void
.end method
