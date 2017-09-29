.class public Lanetwork/channel/aidl/adapter/FutureResponse;
.super Ljava/lang/Object;
.source "FutureResponse.java"

# interfaces
.implements Ljava/util/concurrent/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Future",
        "<",
        "Lanetwork/channel/Response;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lanetwork/channel/aidl/ParcelableFuture;

.field private b:I

.field private c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/16 v0, 0x4e20

    iput v0, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:I

    .line 32
    return-void
.end method

.method private a()Lanetwork/channel/Response;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 87
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    invoke-virtual {v1}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->a()V

    .line 94
    :cond_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_1

    .line 96
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    iget v2, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->b:I

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 101
    :cond_1
    :goto_0
    return-object v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string/jumbo v2, "FutureResponse"

    const-string/jumbo v3, "[get]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(J)Lanetwork/channel/Response;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 106
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v1, :cond_0

    .line 107
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    if-eqz v1, :cond_1

    .line 108
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    invoke-virtual {v1}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->a()V

    .line 113
    :cond_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_1

    .line 115
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1, p1, p2}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 120
    :cond_1
    :goto_0
    return-object v0

    .line 116
    :catch_0
    move-exception v1

    .line 117
    const-string/jumbo v2, "FutureResponse"

    const-string/jumbo v3, "[get(long timeout, TimeUnit unit)]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lanetwork/channel/aidl/ParcelableFuture;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    .line 125
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    .line 129
    return-void
.end method

.method public cancel(Z)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    if-eqz v1, :cond_0

    .line 38
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    invoke-virtual {v0, p0}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->a(Lanetwork/channel/aidl/adapter/FutureResponse;)Z

    move-result v0

    .line 47
    :cond_0
    :goto_0
    return v0

    .line 43
    :cond_1
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1, p1}, Lanetwork/channel/aidl/ParcelableFuture;->a(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    const-string/jumbo v2, "FutureResponse"

    const-string/jumbo v3, "[cancel]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public synthetic get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lanetwork/channel/aidl/adapter/FutureResponse;->a()Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public synthetic get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lanetwork/channel/aidl/adapter/FutureResponse;->a(J)Lanetwork/channel/Response;

    move-result-object v0

    return-object v0
.end method

.method public isCancelled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 53
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    if-eqz v1, :cond_0

    .line 55
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    invoke-static {p0}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->b(Lanetwork/channel/aidl/adapter/FutureResponse;)Z

    move-result v0

    .line 64
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableFuture;->a()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    const-string/jumbo v2, "FutureResponse"

    const-string/jumbo v3, "[isCancelled]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isDone()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 71
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v1, :cond_1

    .line 72
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->c:Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;

    invoke-static {p0}, Lanetwork/channel/aidl/adapter/NetworkProxy$RequestTask;->c(Lanetwork/channel/aidl/adapter/FutureResponse;)Z

    .line 82
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/FutureResponse;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableFuture;->b()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v1

    .line 80
    const-string/jumbo v2, "FutureResponse"

    const-string/jumbo v3, "[isDone]"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
