.class public abstract Lanetwork/channel/degrade/DegradableListener;
.super Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;
.source "DegradableListener.java"


# instance fields
.field a:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field private b:B

.field private c:B


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;-><init>()V

    .line 14
    const/16 v0, 0x8

    iput-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->b:B

    .line 15
    const/4 v0, 0x0

    iput-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->c:B

    .line 17
    iput-object p1, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 18
    if-eqz p1, :cond_0

    .line 20
    :try_start_0
    iget-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->c:B

    invoke-interface {p1}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a()B

    move-result v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->c:B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :cond_0
    :goto_0
    iget-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->c:B

    iget-byte v1, p0, Lanetwork/channel/degrade/DegradableListener;->b:B

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->c:B

    .line 26
    return-void

    .line 21
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 58
    iget-byte v0, p0, Lanetwork/channel/degrade/DegradableListener;->c:B

    return v0
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    .locals 3

    .prologue
    .line 42
    const-string/jumbo v0, "ANet.DegradableListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onFinished]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V

    .line 46
    :cond_0
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    .locals 3

    .prologue
    .line 34
    const-string/jumbo v0, "ANet.DegradableListenerImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onDataReceived]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/aidl/ParcelableObject;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lanetwork/channel/degrade/DegradableListener;->a:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2, p3}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
