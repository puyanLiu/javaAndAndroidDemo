.class final Lanetwork/channel/degrade/a;
.super Lanetwork/channel/degrade/DegradableListener;
.source "DegradableNetworkDegate.java"


# instance fields
.field final synthetic b:Lanetwork/channel/aidl/ParcelableRequest;

.field final synthetic c:Lanetwork/channel/degrade/d;

.field final synthetic d:Lanetwork/channel/degrade/DegradableNetworkDegate;


# direct methods
.method constructor <init>(Lanetwork/channel/degrade/DegradableNetworkDegate;Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/degrade/d;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lanetwork/channel/degrade/a;->d:Lanetwork/channel/degrade/DegradableNetworkDegate;

    iput-object p3, p0, Lanetwork/channel/degrade/a;->b:Lanetwork/channel/aidl/ParcelableRequest;

    iput-object p4, p0, Lanetwork/channel/degrade/a;->c:Lanetwork/channel/degrade/d;

    invoke-direct {p0, p2}, Lanetwork/channel/degrade/DegradableListener;-><init>(Lanetwork/channel/aidl/ParcelableNetworkListener;)V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 7

    .prologue
    .line 126
    const-string/jumbo v0, "ANet.DegradableNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDegrade errorCode="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lanetwork/channel/degrade/a;->d:Lanetwork/channel/degrade/DegradableNetworkDegate;

    iget-object v4, p0, Lanetwork/channel/degrade/a;->b:Lanetwork/channel/aidl/ParcelableRequest;

    iget-object v5, p0, Lanetwork/channel/degrade/a;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v6, p0, Lanetwork/channel/degrade/a;->c:Lanetwork/channel/degrade/d;

    move v1, p1

    move-object v2, p3

    move v3, p4

    invoke-static/range {v0 .. v6}, Lanetwork/channel/degrade/DegradableNetworkDegate;->a(Lanetwork/channel/degrade/DegradableNetworkDegate;ILjava/lang/String;ILanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;Lanetwork/channel/degrade/d;)Z

    move-result v0

    return v0
.end method
