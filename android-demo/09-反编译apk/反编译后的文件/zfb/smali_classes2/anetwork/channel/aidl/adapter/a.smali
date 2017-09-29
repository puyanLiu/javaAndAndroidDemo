.class final Lanetwork/channel/aidl/adapter/a;
.super Ljava/lang/Object;
.source "NetworkProxy.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lanetwork/channel/Request;

.field final synthetic b:Lanetwork/channel/aidl/ParcelableRequest;

.field final synthetic c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

.field final synthetic d:Lanetwork/channel/aidl/adapter/FutureResponse;

.field final synthetic e:Lanetwork/channel/aidl/adapter/NetworkProxy;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/Request;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/aidl/adapter/FutureResponse;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    iput-object p2, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/Request;

    iput-object p3, p0, Lanetwork/channel/aidl/adapter/a;->b:Lanetwork/channel/aidl/ParcelableRequest;

    iput-object p4, p0, Lanetwork/channel/aidl/adapter/a;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iput-object p5, p0, Lanetwork/channel/aidl/adapter/a;->d:Lanetwork/channel/aidl/adapter/FutureResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 123
    const-string/jumbo v0, "ANet.NetworkProxy"

    const-string/jumbo v1, "[send]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-static {v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/NetworkProxy;)Landroid/content/Context;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-static {v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(Lanetwork/channel/aidl/adapter/NetworkProxy;)I

    move-result v1

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/a;->a:Lanetwork/channel/Request;

    invoke-interface {v2}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-static {v1, v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(ILjava/net/URL;)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/aidl/RemoteNetwork;)Lanetwork/channel/aidl/RemoteNetwork;

    .line 130
    :goto_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-static {v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->c(Lanetwork/channel/aidl/adapter/NetworkProxy;)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/a;->b:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v3, p0, Lanetwork/channel/aidl/adapter/a;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    invoke-static {v0, v1, v2, v3}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/aidl/RemoteNetwork;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Lanetwork/channel/aidl/ParcelableFuture;

    move-result-object v0

    .line 131
    iget-object v1, p0, Lanetwork/channel/aidl/adapter/a;->d:Lanetwork/channel/aidl/adapter/FutureResponse;

    invoke-virtual {v1, v0}, Lanetwork/channel/aidl/adapter/FutureResponse;->a(Lanetwork/channel/aidl/ParcelableFuture;)V

    .line 132
    return-object v0

    .line 128
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-static {v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/NetworkProxy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/a;->e:Lanetwork/channel/aidl/adapter/NetworkProxy;

    invoke-static {v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->b(Lanetwork/channel/aidl/adapter/NetworkProxy;)I

    move-result v2

    invoke-static {v1, v2}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Landroid/content/Context;I)Lanetwork/channel/aidl/RemoteNetwork;

    move-result-object v1

    invoke-static {v0, v1}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/adapter/NetworkProxy;Lanetwork/channel/aidl/RemoteNetwork;)Lanetwork/channel/aidl/RemoteNetwork;

    goto :goto_0
.end method
