.class public final Lcom/googlecode/androidannotations/api/UiThreadExecutor;
.super Ljava/lang/Object;


# static fields
.field private static final a:Landroid/os/Handler;

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/googlecode/androidannotations/api/UiThreadExecutor$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;
    .locals 3

    sget-object v1, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;

    if-nez v0, :cond_0

    new-instance v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;-><init>(Ljava/lang/String;Lcom/googlecode/androidannotations/api/UiThreadExecutor$1;)V

    sget-object v2, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget v2, v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->runnablesCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->runnablesCount:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000(Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;)V
    .locals 4

    sget-object v1, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->runnablesCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->runnablesCount:I

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;->id:Ljava/lang/String;

    sget-object v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;

    if-eq v0, p0, :cond_0

    sget-object v3, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static cancelAll(Ljava/lang/String;)V
    .locals 2

    sget-object v1, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    sget-object v1, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->a:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static runTask(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 4

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->a:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    sget-object v2, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->a:Landroid/os/Handler;

    invoke-static {p0}, Lcom/googlecode/androidannotations/api/UiThreadExecutor;->a(Ljava/lang/String;)Lcom/googlecode/androidannotations/api/UiThreadExecutor$Token;

    move-result-object v3

    invoke-virtual {v2, p1, v3, v0, v1}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto :goto_0
.end method
