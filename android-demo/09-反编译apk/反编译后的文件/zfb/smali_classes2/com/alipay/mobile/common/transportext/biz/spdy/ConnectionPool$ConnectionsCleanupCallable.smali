.class Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;
.super Ljava/lang/Object;
.source "ConnectionPool.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 9

    .prologue
    const/4 v8, 0x2

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 364
    const/4 v1, 0x0

    .line 365
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    monitor-enter v3

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 369
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 371
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isExpired(J)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 372
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v5

    if-nez v5, :cond_2

    .line 373
    const-string/jumbo v5, "MWALLET_SPDY_LOG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "===>Warning: Connection [dead]. hashcode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 382
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 395
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool$ConnectionsCleanupCallable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)I

    move-result v0

    if-le v1, v0, :cond_5

    .line 396
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 397
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 398
    const-string/jumbo v5, "MWALLET_SPDY_LOG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "===>Warning: Connection [idle]. hashcode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    .line 402
    add-int/lit8 v0, v1, -0x1

    :goto_3
    move v1, v0

    .line 404
    goto :goto_2

    .line 377
    :cond_2
    const-string/jumbo v5, "MWALLET_SPDY_LOG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "===>Warning: Connection [expired]. hashcode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 385
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isIdle()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 386
    add-int/lit8 v1, v1, 0x1

    .line 387
    const-string/jumbo v5, "MWALLET_SPDY_LOG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "===>Warning: Connection [idle (Temporary safety)]. hashcode="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v1

    move v1, v0

    .line 391
    goto/16 :goto_0

    .line 405
    :cond_5
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 409
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 410
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "===>Warning: Connection [Expiration is closed] . hashcode="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 413
    :cond_6
    const/4 v0, 0x0

    return-object v0

    :cond_7
    move v0, v1

    goto/16 :goto_3
.end method
