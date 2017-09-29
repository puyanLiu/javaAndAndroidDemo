.class final Lanetwork/channel/aidl/adapter/b;
.super Ljava/lang/Object;
.source "NetworkProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .prologue
    .line 453
    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onServiceConnected] service:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    invoke-static {p2}, Lanetwork/channel/aidl/IRemoteNetworkGetter$Stub;->a(Landroid/os/IBinder;)Lanetwork/channel/aidl/IRemoteNetworkGetter;

    move-result-object v0

    invoke-static {v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/IRemoteNetworkGetter;)Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 455
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->d()Z

    .line 456
    invoke-static {}, Lanetwork/channel/aidl/adapter/NetworkProxy;->e()V

    .line 457
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 447
    const-string/jumbo v0, "ANet.NetworkProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onServiceDisconnected]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v0, 0x0

    invoke-static {v0}, Lanetwork/channel/aidl/adapter/NetworkProxy;->a(Lanetwork/channel/aidl/IRemoteNetworkGetter;)Lanetwork/channel/aidl/IRemoteNetworkGetter;

    .line 449
    return-void
.end method
