.class final Lanetwork/channel/statist/a;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic d:Lanetwork/channel/statist/Repeater;


# direct methods
.method constructor <init>(Lanetwork/channel/statist/Repeater;ILjava/util/Map;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lanetwork/channel/statist/a;->d:Lanetwork/channel/statist/Repeater;

    iput p2, p0, Lanetwork/channel/statist/a;->a:I

    iput-object p3, p0, Lanetwork/channel/statist/a;->b:Ljava/util/Map;

    iput-object p4, p0, Lanetwork/channel/statist/a;->c:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 56
    :try_start_0
    new-instance v0, Lanetwork/channel/aidl/ParcelableHeader;

    iget v1, p0, Lanetwork/channel/statist/a;->a:I

    iget-object v2, p0, Lanetwork/channel/statist/a;->b:Ljava/util/Map;

    invoke-direct {v0, v1, v2}, Lanetwork/channel/aidl/ParcelableHeader;-><init>(ILjava/util/Map;)V

    .line 57
    iget-object v1, p0, Lanetwork/channel/statist/a;->c:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget v2, p0, Lanetwork/channel/statist/a;->a:I

    iget-object v3, p0, Lanetwork/channel/statist/a;->d:Lanetwork/channel/statist/Repeater;

    invoke-static {v3}, Lanetwork/channel/statist/Repeater;->a(Lanetwork/channel/statist/Repeater;)Lanetwork/channel/aidl/ParcelableObject;

    move-result-object v3

    invoke-interface {v1, v2, v0, v3}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(ILanetwork/channel/aidl/ParcelableHeader;Lanetwork/channel/aidl/ParcelableObject;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
