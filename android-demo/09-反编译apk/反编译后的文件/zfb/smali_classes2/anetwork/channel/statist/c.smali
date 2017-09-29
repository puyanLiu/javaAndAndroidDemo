.class final Lanetwork/channel/statist/c;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/aidl/DefaultFinishEvent;

.field final synthetic b:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic c:Lanetwork/channel/statist/Repeater;


# direct methods
.method constructor <init>(Lanetwork/channel/statist/Repeater;Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lanetwork/channel/statist/c;->c:Lanetwork/channel/statist/Repeater;

    iput-object p2, p0, Lanetwork/channel/statist/c;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iput-object p3, p0, Lanetwork/channel/statist/c;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lanetwork/channel/statist/c;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lanetwork/channel/statist/c;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v1, p0, Lanetwork/channel/statist/c;->c:Lanetwork/channel/statist/Repeater;

    invoke-static {v1}, Lanetwork/channel/statist/Repeater;->a(Lanetwork/channel/statist/Repeater;)Lanetwork/channel/aidl/ParcelableObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/aidl/DefaultFinishEvent;->a(Ljava/lang/Object;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lanetwork/channel/statist/c;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    if-eqz v0, :cond_1

    .line 106
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/c;->b:Lanetwork/channel/aidl/ParcelableNetworkListener;

    iget-object v1, p0, Lanetwork/channel/statist/c;->a:Lanetwork/channel/aidl/DefaultFinishEvent;

    iget-object v2, p0, Lanetwork/channel/statist/c;->c:Lanetwork/channel/statist/Repeater;

    invoke-static {v2}, Lanetwork/channel/statist/Repeater;->a(Lanetwork/channel/statist/Repeater;)Lanetwork/channel/aidl/ParcelableObject;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultFinishEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 111
    :cond_1
    const-string/jumbo v0, "ANet.Repeater"

    const-string/jumbo v1, "listener is null"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
