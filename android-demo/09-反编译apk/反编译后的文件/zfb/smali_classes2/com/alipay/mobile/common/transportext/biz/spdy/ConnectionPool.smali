.class public Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;
.super Ljava/lang/Object;
.source "ConnectionPool.java"


# static fields
.field private static final DEFAULT_KEEP_ALIVE_DURATION_MS:J = 0x1b7740L

.field private static final MAX_CONNECTIONS_TO_CLEANUP:I = 0x2

.field private static final systemDefault:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;


# instance fields
.field private final connections:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionsCleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field private final keepAliveDurationNs:J

.field private final maxIdleConnections:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 79
    const-string/jumbo v0, "http.keepAlive"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    const-string/jumbo v0, "http.keepAliveDuration"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string/jumbo v1, "http.maxConnections"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 82
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 84
    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 85
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;-><init>(IJ)V

    sput-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->systemDefault:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    .line 92
    :goto_1
    return-void

    .line 82
    :cond_0
    const-wide/32 v0, 0x1b7740

    goto :goto_0

    .line 86
    :cond_1
    if-eqz v3, :cond_2

    .line 87
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;-><init>(IJ)V

    sput-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->systemDefault:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    goto :goto_1

    .line 90
    :cond_2
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;-><init>(IJ)V

    sput-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->systemDefault:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    goto :goto_1
.end method

.method public constructor <init>(IJ)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    .line 105
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string/jumbo v7, "OkHttp ConnectionPool"

    invoke-static {v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->daemonThreadFactory(Ljava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 116
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connectionsCleanupCallable:Ljava/util/concurrent/Callable;

    .line 120
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->maxIdleConnections:I

    .line 121
    mul-long v0, p2, v8

    mul-long/2addr v0, v8

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->keepAliveDurationNs:J

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)J
    .locals 2

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->keepAliveDurationNs:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->maxIdleConnections:I

    return v0
.end method

.method public static getDefault()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->systemDefault:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    return-object v0
.end method

.method private isAddressEquals(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/lang/String;I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 348
    if-nez p1, :cond_1

    .line 354
    :cond_0
    :goto_0
    return v0

    .line 351
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriPort()I

    move-result v1

    if-ne v1, p3, :cond_0

    .line 352
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private waitForCleanupCallableToRun()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    return-void

    .line 147
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public evictAll()V
    .locals 2

    .prologue
    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 331
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 332
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 334
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 335
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 337
    :cond_0
    return-void
.end method

.method public declared-synchronized get(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 8

    .prologue
    .line 190
    monitor-enter p0

    const/4 v2, 0x0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 194
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getAddress()Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Address not equals!   hashcode="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    const-string/jumbo v1, "Connection has died"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getIdleStartTimeNs()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 205
    iget-wide v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v1, v4, v6

    if-ltz v1, :cond_2

    .line 206
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Connection keeplive timeout. [idleTimeNs("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")>=keepAliveDurationNs("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->keepAliveDurationNs:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ")]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_2
    invoke-interface {v3}, Ljava/util/ListIterator;->remove()V

    .line 211
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_3

    .line 213
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->tagSocket(Ljava/net/Socket;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 228
    const-string/jumbo v1, "LL_TRANSPORT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Temp Log ConnectionPool:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getAddress()Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getAddress()Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connectionsCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    monitor-exit p0

    return-object v0

    .line 214
    :catch_0
    move-exception v1

    .line 215
    :try_start_4
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 217
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Unable to tagSocket(): "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->logW(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_1
.end method

.method public declared-synchronized getConnectionCount()I
    .locals 1

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->waitForCleanupCallableToRun()V

    .line 130
    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getHttpConnectionCount()I
    .locals 3

    .prologue
    .line 178
    monitor-enter p0

    const/4 v1, 0x0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 180
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 181
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 182
    goto :goto_0

    .line 183
    :cond_0
    monitor-exit p0

    return v1

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public declared-synchronized getSpdyConnection(Ljava/lang/String;I)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 7

    .prologue
    .line 248
    monitor-enter p0

    const/4 v1, 0x0

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v2

    .line 250
    :cond_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    invoke-interface {v2}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getAddress()Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->isAddressEquals(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getIdleStartTimeNs()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->keepAliveDurationNs:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    .line 259
    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    .line 263
    :goto_0
    if-eqz v0, :cond_1

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connectionsCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    monitor-exit p0

    return-object v0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public declared-synchronized getSpdyConnectionCount()I
    .locals 3

    .prologue
    .line 166
    monitor-enter p0

    const/4 v1, 0x0

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 168
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    monitor-exit p0

    return v1

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public maybeShare(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connectionsCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 313
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    monitor-enter p0

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 320
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public recycle(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V
    .locals 4

    .prologue
    .line 281
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 291
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->untagSocket(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    monitor-enter p0

    .line 300
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connections:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 301
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->resetIdleStartTime()V

    .line 302
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->executorService:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->connectionsCleanupCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 292
    :catch_0
    move-exception v0

    .line 294
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unable to untagSocket(): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->logW(Ljava/lang/String;)V

    .line 295
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 302
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
