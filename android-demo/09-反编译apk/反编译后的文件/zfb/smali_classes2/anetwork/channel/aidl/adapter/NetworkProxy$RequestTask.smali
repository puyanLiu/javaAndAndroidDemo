.class public Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;
.super Ljava/lang/Object;
.source "NetworkProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/adapter/NetworkProxy;

.field private b:Ljava/util/concurrent/CountDownLatch;

.field private c:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/adapter/NetworkProxy;Ljava/util/concurrent/Callable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 394
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->a:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->b:Ljava/util/concurrent/CountDownLatch;

    .line 395
    iput-object p2, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->c:Ljava/util/concurrent/Callable;

    .line 396
    return-void
.end method

.method public static b(Lanetwork/channel/aidl/adapter/FutureResponse;)Z
    .locals 1

    .prologue
    .line 416
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Lanetwork/channel/aidl/adapter/FutureResponse;)Z
    .locals 1

    .prologue
    .line 420
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const/4 v0, 0x0

    .line 423
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 429
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/adapter/FutureResponse;)Z
    .locals 3

    .prologue
    .line 399
    if-eqz p1, :cond_1

    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    .line 401
    if-eqz v0, :cond_0

    .line 402
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->c()Ljava/util/ArrayList;

    move-result-object v1

    monitor-enter v1

    .line 403
    :try_start_0
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->c()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 404
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :cond_0
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b()Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 408
    const/4 v0, 0x1

    .line 411
    :goto_0
    return v0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 410
    :cond_1
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 411
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public call()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 433
    const-string/jumbo v0, "ANet.NetworkProxy"

    const-string/jumbo v1, "[call]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const/4 v0, 0x0

    .line 435
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->c:Ljava/util/concurrent/Callable;

    if-eqz v1, :cond_0

    .line 436
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->c:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 438
    :cond_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->b:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 439
    return-object v0
.end method
