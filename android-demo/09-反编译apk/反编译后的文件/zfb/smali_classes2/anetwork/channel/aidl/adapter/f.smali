.class final Lanetwork/channel/aidl/adapter/f;
.super Ljava/lang/Object;
.source "ParcelableNetworkListenerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

.field final synthetic b:Lanetwork/channel/aidl/ParcelableHeader;

.field final synthetic c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;


# direct methods
.method constructor <init>(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;Lanetwork/channel/NetworkCallBack$ResponseCodeListener;Lanetwork/channel/aidl/ParcelableHeader;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lanetwork/channel/aidl/adapter/f;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    iput-object p2, p0, Lanetwork/channel/aidl/adapter/f;->a:Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    iput-object p3, p0, Lanetwork/channel/aidl/adapter/f;->b:Lanetwork/channel/aidl/ParcelableHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lanetwork/channel/aidl/adapter/f;->a:Lanetwork/channel/NetworkCallBack$ResponseCodeListener;

    iget-object v1, p0, Lanetwork/channel/aidl/adapter/f;->b:Lanetwork/channel/aidl/ParcelableHeader;

    iget v1, v1, Lanetwork/channel/aidl/ParcelableHeader;->a:I

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/f;->b:Lanetwork/channel/aidl/ParcelableHeader;

    iget-object v2, v2, Lanetwork/channel/aidl/ParcelableHeader;->b:Ljava/util/Map;

    iget-object v3, p0, Lanetwork/channel/aidl/adapter/f;->c:Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;

    invoke-static {v3}, Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;->a(Lanetwork/channel/aidl/adapter/ParcelableNetworkListenerWrapper;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lanetwork/channel/NetworkCallBack$ResponseCodeListener;->onResponseCode(ILjava/util/Map;Ljava/lang/Object;)Z

    .line 139
    const-string/jumbo v0, "ANet.ParcelableNetworkListenerWrapper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onResponseCode]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/aidl/adapter/f;->b:Lanetwork/channel/aidl/ParcelableHeader;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method
