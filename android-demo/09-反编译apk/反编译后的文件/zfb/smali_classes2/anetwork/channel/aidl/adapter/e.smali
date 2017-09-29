.class final Lanetwork/channel/aidl/adapter/e;
.super Ljava/lang/Object;
.source "ParcelableNetworkListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Lanetwork/channel/NetworkCallBack$FinishListener;

.field final synthetic d:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/aidl/DefaultFinishEvent;Ljava/lang/Object;Lanetwork/channel/NetworkCallBack$FinishListener;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/e;->d:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iput-object p2, p0, Lanetwork/channel/aidl/adapter/e;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lanetwork/channel/aidl/adapter/e;->b:Ljava/lang/Object;

    iput-object p4, p0, Lanetwork/channel/aidl/adapter/e;->c:Lanetwork/channel/NetworkCallBack$FinishListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/e;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/e;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/e;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;->a(Ljava/lang/Object;)V

    .line 117
    :cond_0
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/e;->c:Lanetwork/channel/NetworkCallBack$FinishListener;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/e;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/e;->b:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lanetwork/channel/NetworkCallBack$FinishListener;->onFinished(Lanetwork/channel/NetworkEvent$FinishEvent;Ljava/lang/Object;)V

    .line 118
    const-string/jumbo v0, "ANet.ParcelableNetworkListenerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onFinished]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/e;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    return-void
.end method
