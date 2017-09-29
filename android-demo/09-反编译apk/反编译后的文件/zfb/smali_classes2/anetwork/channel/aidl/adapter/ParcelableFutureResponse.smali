.class public Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;
.super Lanetwork/channel/aidl/ParcelableFuture$Stub;
.source "ParcelableFutureResponse.java"


# instance fields
.field a:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation
.end field

.field b:Lanetwork/channel/aidl/NetworkResponse;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;-><init>()V

    .line 18
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(J)Lanetwork/channel/aidl/NetworkResponse;
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 49
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->b:Lanetwork/channel/aidl/NetworkResponse;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->b:Lanetwork/channel/aidl/NetworkResponse;

    .line 62
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v0, v3}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_0

    .line 57
    :cond_1
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v1, "NO SUPPORT"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 60
    const-string/jumbo v1, "ANet.ParcelableFutureResponse"

    const-string/jumbo v2, "\u6709listener\u5c06\u4e0d\u652f\u6301future.get()\u65b9\u6cd5\uff0c\u5982\u6709\u9700\u8981\u8bf7listener\u4f20\u5165null"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_2
    new-instance v0, Lanetwork/channel/aidl/NetworkResponse;

    invoke-direct {v0, v3}, Lanetwork/channel/aidl/NetworkResponse;-><init>(I)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 35
    const/4 v0, 0x1

    .line 37
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;->a:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    goto :goto_0
.end method
