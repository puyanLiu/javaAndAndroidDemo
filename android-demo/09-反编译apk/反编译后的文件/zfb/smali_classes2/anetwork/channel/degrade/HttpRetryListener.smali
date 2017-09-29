.class public Lanetwork/channel/degrade/HttpRetryListener;
.super Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;
.source "HttpRetryListener.java"


# instance fields
.field d:Lanetwork/channel/aidl/ParcelableNetworkListener;


# direct methods
.method public constructor <init>(Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableNetworkListener$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()B
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V

    .line 31
    :cond_0
    return-void
.end method

.method public final a(Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/aidl/ParcelableObject;)V

    .line 23
    :cond_0
    return-void
.end method

.method public a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lanetwork/channel/degrade/HttpRetryListener;->d:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-interface {v0, p1, p2, p3}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method
