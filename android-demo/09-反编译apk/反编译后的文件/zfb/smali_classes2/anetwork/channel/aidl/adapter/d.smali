.class final Lanetwork/channel/aidl/adapter/d;
.super Ljava/lang/Object;
.source "ParcelableNetworkListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/DefaultProgressEvent;

.field final synthetic b:Lanetwork/channel/NetworkCallBack$ProgressListener;

.field final synthetic c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/NetworkCallBack$ProgressListener;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/d;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iput-object p2, p0, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/DefaultProgressEvent;

    iput-object p3, p0, Lanetwork/channel/aidl/adapter/d;->b:Lanetwork/channel/NetworkCallBack$ProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/DefaultProgressEvent;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/DefaultProgressEvent;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/d;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    invoke-static {v1}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(Ljava/lang/Object;)V

    .line 77
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/d;->b:Lanetwork/channel/NetworkCallBack$ProgressListener;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/DefaultProgressEvent;

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/d;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    invoke-static {v2}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lanetwork/channel/NetworkCallBack$ProgressListener;->onDataReceived(Lanetwork/channel/NetworkEvent$ProgressEvent;Ljava/lang/Object;)V

    .line 78
    const-string/jumbo v0, "ANet.ParcelableNetworkListenerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onDataReceived]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/d;->a:Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method
