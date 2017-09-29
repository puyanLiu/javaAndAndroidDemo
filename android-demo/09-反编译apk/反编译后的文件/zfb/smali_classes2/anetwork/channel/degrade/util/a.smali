.class final Lanetwork/channel/degrade/util/a;
.super Ljava/lang/Object;
.source "DegradeHelper.java"

# interfaces
.implements Lanetwork/channel/monitor/INetworkStatusListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkStatusChanged(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 5

    .prologue
    .line 49
    invoke-static {}, Lanetwork/channel/degrade/util/DegradeHelper;->c()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p1}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v0

    sget-object v1, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->G3:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-virtual {v1}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 50
    const-string/jumbo v0, "ANet.DegradableNetwork"

    const-string/jumbo v1, "network status change: %s -> %s, clear all degrade cache"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Lanetwork/channel/degrade/util/DegradeHelper;->c()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v4

    invoke-virtual {v4}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lanetwork/channel/degrade/util/DegradeHelper;->b()V

    .line 54
    :cond_0
    invoke-static {p1}, Lanetwork/channel/degrade/util/DegradeHelper;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 55
    return-void
.end method
