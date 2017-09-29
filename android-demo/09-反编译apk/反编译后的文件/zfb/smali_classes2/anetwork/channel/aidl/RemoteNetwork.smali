.class public interface abstract Lanetwork/channel/aidl/RemoteNetwork;
.super Ljava/lang/Object;
.source "RemoteNetwork.java"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract a(Lanetwork/channel/aidl/ParcelableRequest;)Lanetwork/channel/aidl/NetworkResponse;
.end method

.method public abstract a(Lanetwork/channel/aidl/ParcelableRequest;Lanetwork/channel/aidl/ParcelableNetworkListener;)Lanetwork/channel/aidl/ParcelableFuture;
.end method

.method public abstract a(Lanetwork/channel/aidl/ParcelableMsgListener;)V
.end method

.method public abstract a(Lanetwork/channel/aidl/ParcelableMsgListener;Ljava/lang/String;)V
.end method

.method public abstract b(Lanetwork/channel/aidl/ParcelableRequest;)V
.end method
