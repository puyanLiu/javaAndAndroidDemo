.class public Lcom/alipay/mobile/beehive/eventbus/EventBusManager;
.super Ljava/lang/Object;
.source "EventBusManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "EventBus"

.field private static instance:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;


# instance fields
.field private final eventsToDispatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private subscriberFinder:Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;

.field private subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;>;"
        }
    .end annotation
.end field

.field private uiHandler:Landroid/os/Handler;

.field private whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$1;-><init>(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->eventsToDispatch:Ljava/lang/ThreadLocal;

    .line 57
    const-string/jumbo v0, "DEFAULT"

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->id:Ljava/lang/String;

    .line 58
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->init()V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$1;-><init>(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->eventsToDispatch:Ljava/lang/ThreadLocal;

    .line 62
    const-string/jumbo v0, "DEFAULT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "cannot create \'DEFAULT\' event bus, because \'DEFAULT\' is global event bus"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->id:Ljava/lang/String;

    .line 66
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 0

    .prologue
    .line 417
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEventToHandler(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    return-void
.end method

.method private dispatchEventOnBackground(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 1

    .prologue
    .line 409
    new-instance v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$3;-><init>(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 415
    return-void
.end method

.method private dispatchEventOnPostThread(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEventToHandler(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    .line 387
    return-void
.end method

.method private dispatchEventOnUi(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 2

    .prologue
    .line 393
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEventToHandler(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    .line 403
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$2;-><init>(Lcom/alipay/mobile/beehive/eventbus/EventBusManager;Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private dispatchEventToHandler(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 3

    .prologue
    .line 419
    :try_start_0
    invoke-virtual {p2, p1}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 425
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v0

    .line 423
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EventBus"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private filterWhiteList(Ljava/lang/Object;Ljava/util/Set;)Ljava/util/Set;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 273
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 275
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    move-object p2, v3

    .line 290
    :cond_1
    return-object p2

    .line 275
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 276
    const/4 v4, 0x0

    .line 277
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    .line 283
    :goto_1
    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 277
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->getWhiteListKey()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    const/4 v1, 0x1

    .line 280
    goto :goto_1
.end method

.method private getHandlersForEvent(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 435
    :goto_0
    return-object v0

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/beehive/eventbus/EventBusManager;
    .locals 2

    .prologue
    .line 77
    const-class v1, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->instance:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->instance:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;

    .line 80
    :cond_0
    sget-object v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->instance:Lcom/alipay/mobile/beehive/eventbus/EventBusManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNotSameSubSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v2, p2

    .line 267
    :cond_1
    return-object v2

    .line 251
    :cond_2
    const/4 v2, 0x0

    .line 252
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 253
    const/4 v3, 0x1

    .line 254
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v3

    .line 260
    :goto_1
    if-eqz v1, :cond_3

    .line 261
    if-nez v2, :cond_6

    .line 262
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 264
    :goto_2
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    goto :goto_0

    .line 254
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 255
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    const/4 v1, 0x0

    .line 257
    goto :goto_1

    :cond_6
    move-object v1, v2

    goto :goto_2
.end method

.method private getSameSubSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    const/4 v2, 0x0

    .line 233
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 244
    return-object v2

    .line 233
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 234
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 235
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 236
    if-nez v2, :cond_3

    .line 237
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 239
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v2, v0

    .line 240
    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    sget-object v0, Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;->ANNOTATED:Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberFinder:Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->uiHandler:Landroid/os/Handler;

    .line 74
    return-void
.end method

.method private innerRegister(Ljava/lang/Object;Z)Z
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "target to register must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberFinder:Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;

    invoke-virtual {v1, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;->findAllSubscribers(Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v4

    .line 158
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 188
    return v2

    .line 158
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 160
    if-nez v0, :cond_4

    .line 162
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 164
    if-nez v0, :cond_4

    .line 168
    :goto_1
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-direct {p0, v6, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->filterWhiteList(Ljava/lang/Object;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 170
    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 172
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getNotSameSubSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    .line 173
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 174
    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v0

    move v2, v0

    goto :goto_0

    .line 177
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 178
    const-string/jumbo v2, "EventBus"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "add subscriber : ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")=> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 179
    const-string/jumbo v6, " fail, maybe registered before"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EventBus"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1
.end method

.method private removeSubscriber(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/beehive/eventbus/EventHandler;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    .line 224
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getSameSubSet(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 225
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addWhiteList(Ljava/lang/Object;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EventBus"

    const-string/jumbo v2, "values to add white list must not be null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EventBus"

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, " remove duplicated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " white list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected dispatchEvent(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 2

    .prologue
    .line 373
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->getThreadMode()Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/eventbus/ThreadMode;->CURRENT:Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    if-ne v0, v1, :cond_1

    .line 374
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEventOnPostThread(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->getThreadMode()Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/eventbus/ThreadMode;->BACKGROUND:Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    if-ne v0, v1, :cond_2

    .line 376
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEventOnBackground(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {p2}, Lcom/alipay/mobile/beehive/eventbus/EventHandler;->getThreadMode()Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/eventbus/ThreadMode;->UI:Lcom/alipay/mobile/beehive/eventbus/ThreadMode;

    if-ne v0, v1, :cond_0

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEventOnUi(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    goto :goto_0
.end method

.method protected dispatchQueuedEvents()V
    .locals 2

    .prologue
    .line 358
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;

    .line 359
    if-eqz v0, :cond_0

    .line 360
    iget-object v1, v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;->event:Ljava/lang/Object;

    iget-object v0, v0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;->handler:Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchEvent(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    goto :goto_0

    .line 367
    :cond_0
    return-void
.end method

.method public declared-synchronized dispose()V
    .locals 1

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberFinder:Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected enqueueEvent(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v1, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;

    invoke-direct {v1, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager$EventHandlerWrapper;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 343
    return-void
.end method

.method protected innerUnregister(Ljava/lang/Object;Z)V
    .locals 8

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "target to unregister must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberFinder:Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/beehive/eventbus/SubscribeFinder;->findAllSubscribers(Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v2

    .line 199
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 217
    return-void

    .line 199
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->subscriberMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 206
    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 207
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->removeSubscriber(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 209
    const-string/jumbo v5, "EventBus"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "remove subscriber : ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ")=> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 210
    const-string/jumbo v4, " fail, maybe not registered"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-interface {v0, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v4, "EventBus"

    invoke-interface {v1, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 306
    const-string/jumbo v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method public post(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 316
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 317
    const-string/jumbo v0, "name should not be empty or object should not be null."

    .line 318
    invoke-static {}, Lcom/alipay/mobile/beehive/util/DebugUtil;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EventBus"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void

    .line 326
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->getHandlersForEvent(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 327
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 328
    :cond_2
    if-nez p1, :cond_3

    const-string/jumbo v0, ""

    .line 329
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EventBus"

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " post event["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "] do not have handler"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 332
    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 337
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->dispatchQueuedEvents()V

    goto :goto_0

    .line 332
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/eventbus/EventHandler;

    .line 333
    if-eqz v0, :cond_5

    .line 334
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->enqueueEvent(Ljava/lang/Object;Lcom/alipay/mobile/beehive/eventbus/EventHandler;)V

    goto :goto_2
.end method

.method public postByName(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->post(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public register(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->innerRegister(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public registerRaw(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->innerRegister(Ljava/lang/Object;Z)Z

    move-result v0

    return v0
.end method

.method public removeWhiteList(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EventBus"

    const-string/jumbo v2, "event to remove from white list must not be null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EventBus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    const-string/jumbo v3, " white list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " do not added before"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 144
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->whiteListMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[Bus \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->innerUnregister(Ljava/lang/Object;Z)V

    .line 109
    return-void
.end method

.method public unregisterRaw(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/beehive/eventbus/EventBusManager;->innerUnregister(Ljava/lang/Object;Z)V

    .line 113
    return-void
.end method
