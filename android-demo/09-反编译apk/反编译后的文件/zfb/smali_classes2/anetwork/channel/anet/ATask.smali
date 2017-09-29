.class public Lanetwork/channel/anet/ATask;
.super Lanetwork/channel/entity/Task;
.source "ATask.java"


# instance fields
.field private d:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field private e:B

.field private f:B

.field private g:B

.field private h:B


# direct methods
.method public constructor <init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lanetwork/channel/entity/Task;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    .line 24
    const/4 v0, 0x1

    iput-byte v0, p0, Lanetwork/channel/anet/ATask;->e:B

    .line 25
    const/4 v0, 0x2

    iput-byte v0, p0, Lanetwork/channel/anet/ATask;->f:B

    .line 26
    const/4 v0, 0x4

    iput-byte v0, p0, Lanetwork/channel/anet/ATask;->g:B

    .line 27
    const/16 v0, 0x8

    iput-byte v0, p0, Lanetwork/channel/anet/ATask;->h:B

    .line 31
    iput-object p2, p0, Lanetwork/channel/anet/ATask;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 32
    return-void
.end method

.method private a(Lanetwork/channel/aidl/ParcelableNetworkListener;)Z
    .locals 3

    .prologue
    .line 58
    if-eqz p1, :cond_0

    .line 61
    :try_start_0
    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a()B

    move-result v0

    .line 62
    iget-byte v1, p0, Lanetwork/channel/anet/ATask;->e:B

    iget-byte v2, p0, Lanetwork/channel/anet/ATask;->f:B

    or-int/2addr v1, v2

    iget-byte v2, p0, Lanetwork/channel/anet/ATask;->g:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    or-int/2addr v1, v2

    and-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lanetwork/channel/aidl/ParcelableFuture;
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lanetwork/channel/anet/ATask;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0, v0}, Lanetwork/channel/anet/ATask;->a(Lanetwork/channel/aidl/ParcelableNetworkListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lanetwork/channel/anet/AsyncResult;

    iget-object v1, p0, Lanetwork/channel/anet/ATask;->a:Lanetwork/channel/entity/RequestConfig;

    iget-object v2, p0, Lanetwork/channel/anet/ATask;->c:Lanetwork/channel/statist/Repeater;

    iget-object v3, p0, Lanetwork/channel/anet/ATask;->b:Lanetwork/channel/statist/Statistics;

    invoke-direct {v0, v1, v2, v3}, Lanetwork/channel/anet/AsyncResult;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V

    .line 52
    :goto_0
    iget-object v1, p0, Lanetwork/channel/anet/ATask;->a:Lanetwork/channel/entity/RequestConfig;

    invoke-static {v1, v0}, Lanetwork/channel/anet/AEngine;->a(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/anet/AsyncResult;)Lanetwork/channel/anet/AsyncResult;

    move-result-object v0

    .line 53
    new-instance v1, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;

    invoke-direct {v1, v0}, Lanetwork/channel/aidl/adapter/ParcelableFutureResponse;-><init>(Ljava/util/concurrent/Future;)V

    .line 54
    return-object v1

    .line 50
    :cond_0
    new-instance v0, Lanetwork/channel/anet/AResult;

    iget-object v1, p0, Lanetwork/channel/anet/ATask;->a:Lanetwork/channel/entity/RequestConfig;

    iget-object v2, p0, Lanetwork/channel/anet/ATask;->c:Lanetwork/channel/statist/Repeater;

    iget-object v3, p0, Lanetwork/channel/anet/ATask;->b:Lanetwork/channel/statist/Statistics;

    invoke-direct {v0, v1, v2, v3}, Lanetwork/channel/anet/AResult;-><init>(Lanetwork/channel/entity/RequestConfig;Lanetwork/channel/statist/Repeater;Lanetwork/channel/statist/Statistics;)V

    goto :goto_0
.end method
