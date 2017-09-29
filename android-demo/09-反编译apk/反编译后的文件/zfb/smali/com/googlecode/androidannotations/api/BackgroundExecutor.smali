.class public final Lcom/googlecode/androidannotations/api/BackgroundExecutor;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static final DEFAULT_WRONG_THREAD_LISTENER:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

.field private static a:Ljava/util/concurrent/Executor;

.field private static b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->DEFAULT_EXECUTOR:Ljava/util/concurrent/Executor;

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$1;

    invoke-direct {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$1;-><init>()V

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->DEFAULT_WRONG_THREAD_LISTENER:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->d:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "I)",
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$2;

    invoke-direct {v0, p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$2;-><init>(Ljava/lang/Runnable;)V

    move-object p0, v0

    :cond_0
    const/4 v0, 0x0

    if-lez p1, :cond_2

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    instance-of v0, v0, Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The executor set does not support scheduling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    sget-object v1, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    instance-of v1, v1, Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_3

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    invoke-interface {v1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic access$700()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->d:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$800()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Ljava/lang/String;)Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;
    .locals 3

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$000(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static declared-synchronized cancelAll(Ljava/lang/String;Z)V
    .locals 5

    const-class v2, Lcom/googlecode/androidannotations/api/BackgroundExecutor;

    monitor-enter v2

    :try_start_0
    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_3

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$300(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$400(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/Future;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$400(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/Future;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$500(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$600(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$100(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "A task with id "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$300(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " cannot be cancelled (the executor set does not support it)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    :try_start_1
    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    monitor-exit v2

    return-void
.end method

.method public static varargs checkBgThread([Ljava/lang/String;)V
    .locals 4

    array-length v0, p0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    invoke-interface {v0, p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onBgExpected([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->d:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onWrongBgSerial(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    array-length v2, p0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, p0, v1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    invoke-interface {v1, v0, p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onWrongBgSerial(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static checkUiThread()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    invoke-interface {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;->onUiExpected()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V
    .locals 7

    const/4 v2, 0x1

    const-class v3, Lcom/googlecode/androidannotations/api/BackgroundExecutor;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$000(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$000(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$100(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$000(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    if-nez v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$102(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;Z)Z

    invoke-static {p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$200(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_1
    invoke-static {p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$300(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$000(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {p0, v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;->access$402(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v3

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method public static execute(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a(Ljava/lang/Runnable;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/googlecode/androidannotations/api/BackgroundExecutor$3;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor$3;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Lcom/googlecode/androidannotations/api/BackgroundExecutor$Task;)V

    return-void
.end method

.method public static execute(Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static setExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    sput-object p0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static setWrongThreadListener(Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;)V
    .locals 0

    sput-object p0, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->b:Lcom/googlecode/androidannotations/api/BackgroundExecutor$WrongThreadListener;

    return-void
.end method
