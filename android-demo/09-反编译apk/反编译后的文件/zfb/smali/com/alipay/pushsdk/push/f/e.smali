.class public Lcom/alipay/pushsdk/push/f/e;
.super Ljava/lang/Object;
.source "PacketListenerDispatcher.java"

# interfaces
.implements Lcom/alipay/pushsdk/push/f/d;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Lcom/alipay/pushsdk/push/f/e;

.field private static volatile e:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/pushsdk/push/f/d;",
            "Lcom/alipay/pushsdk/push/connection/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/alipay/pushsdk/push/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/alipay/pushsdk/push/f/e;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/f/e;->b:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/pushsdk/push/f/e;->c:Lcom/alipay/pushsdk/push/f/e;

    .line 22
    return-void
.end method

.method private constructor <init>(Lcom/alipay/pushsdk/push/m;)V
    .locals 8

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    .line 114
    iput-object p1, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    .line 115
    new-instance v0, Lcom/alipay/pushsdk/push/f/i;

    iget-object v1, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {v0, v1}, Lcom/alipay/pushsdk/push/f/i;-><init>(Lcom/alipay/pushsdk/push/m;)V

    new-instance v1, Lcom/alipay/pushsdk/push/f/b;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/f/b;-><init>(Lcom/alipay/pushsdk/push/m;)V

    new-instance v2, Lcom/alipay/pushsdk/push/f/c;

    iget-object v3, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {v2, v3}, Lcom/alipay/pushsdk/push/f/c;-><init>(Lcom/alipay/pushsdk/push/m;)V

    new-instance v3, Lcom/alipay/pushsdk/push/f/h;

    iget-object v4, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {v3, v4}, Lcom/alipay/pushsdk/push/f/h;-><init>(Lcom/alipay/pushsdk/push/m;)V

    new-instance v4, Lcom/alipay/pushsdk/push/f/a;

    iget-object v5, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {v4, v5}, Lcom/alipay/pushsdk/push/f/a;-><init>(Lcom/alipay/pushsdk/push/m;)V

    new-instance v5, Lcom/alipay/pushsdk/push/f/j;

    iget-object v6, p0, Lcom/alipay/pushsdk/push/f/e;->d:Lcom/alipay/pushsdk/push/m;

    invoke-direct {v5, v6}, Lcom/alipay/pushsdk/push/f/j;-><init>(Lcom/alipay/pushsdk/push/m;)V

    iget-object v6, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    new-instance v7, Lcom/alipay/pushsdk/push/connection/b;

    invoke-direct {v7, v0}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/f/d;)V

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    new-instance v6, Lcom/alipay/pushsdk/push/connection/b;

    invoke-direct {v6, v1}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/f/d;)V

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    new-instance v1, Lcom/alipay/pushsdk/push/connection/b;

    invoke-direct {v1, v2}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/f/d;)V

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    new-instance v1, Lcom/alipay/pushsdk/push/connection/b;

    invoke-direct {v1, v3}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/f/d;)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    new-instance v1, Lcom/alipay/pushsdk/push/connection/b;

    invoke-direct {v1, v4}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/f/d;)V

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/pushsdk/push/f/e;->a:Ljava/util/Map;

    new-instance v1, Lcom/alipay/pushsdk/push/connection/b;

    invoke-direct {v1, v5}, Lcom/alipay/pushsdk/push/connection/b;-><init>(Lcom/alipay/pushsdk/push/f/d;)V

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public static a()Lcom/alipay/pushsdk/push/f/e;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->c:Lcom/alipay/pushsdk/push/f/e;

    return-object v0
.end method

.method public static declared-synchronized a(Lcom/alipay/pushsdk/push/m;)Lcom/alipay/pushsdk/push/f/e;
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alipay/pushsdk/push/f/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->c:Lcom/alipay/pushsdk/push/f/e;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/alipay/pushsdk/push/f/e;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/f/e;-><init>(Lcom/alipay/pushsdk/push/m;)V

    sput-object v0, Lcom/alipay/pushsdk/push/f/e;->c:Lcom/alipay/pushsdk/push/f/e;

    .line 42
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->c:Lcom/alipay/pushsdk/push/f/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 138
    monitor-enter p0

    const/4 v0, 0x3

    :try_start_0
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/f/e;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "submit:[ task="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    :cond_0
    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 143
    :cond_1
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/f/e;->b:Ljava/lang/String;

    const-string/jumbo v2, "submit:[ newSingleThreadExecutor restart]"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_2
    new-instance v0, Lcom/alipay/pushsdk/push/f/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/f/f;-><init>(Lcom/alipay/pushsdk/push/f/e;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/alipay/pushsdk/push/f/e;->e:Ljava/util/concurrent/ExecutorService;

    .line 155
    :cond_3
    sget-object v0, Lcom/alipay/pushsdk/push/f/e;->e:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 1

    .prologue
    .line 51
    if-nez p1, :cond_0

    .line 53
    const-string/jumbo v0, "receive null packet"

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->e(Ljava/lang/String;)V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    new-instance v0, Lcom/alipay/pushsdk/push/f/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/pushsdk/push/f/g;-><init>(Lcom/alipay/pushsdk/push/f/e;Lcom/alipay/pushsdk/push/e/a;)V

    invoke-direct {p0, v0}, Lcom/alipay/pushsdk/push/f/e;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
