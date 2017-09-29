.class final Lanetwork/channel/statist/b;
.super Ljava/lang/Object;
.source "Repeater.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:[B

.field final synthetic e:Lanetwork/channel/aidl/ParcelableNetworkListener;

.field final synthetic f:Lanetwork/channel/statist/Repeater;


# direct methods
.method constructor <init>(Lanetwork/channel/statist/Repeater;III[BLanetwork/channel/aidl/ParcelableNetworkListener;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lanetwork/channel/statist/b;->f:Lanetwork/channel/statist/Repeater;

    iput p2, p0, Lanetwork/channel/statist/b;->a:I

    iput p3, p0, Lanetwork/channel/statist/b;->b:I

    iput p4, p0, Lanetwork/channel/statist/b;->c:I

    iput-object p5, p0, Lanetwork/channel/statist/b;->d:[B

    iput-object p6, p0, Lanetwork/channel/statist/b;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 72
    const-string/jumbo v0, "ANet.Repeater"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[onDataReceiveSize] +  run... i:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lanetwork/channel/statist/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v0, ""

    .line 74
    new-instance v1, Lanetwork/channel/aidl/DefaultProgressEvent;

    invoke-direct {v1}, Lanetwork/channel/aidl/DefaultProgressEvent;-><init>()V

    .line 75
    iget-object v2, p0, Lanetwork/channel/statist/b;->f:Lanetwork/channel/statist/Repeater;

    invoke-static {v2}, Lanetwork/channel/statist/Repeater;->a(Lanetwork/channel/statist/Repeater;)Lanetwork/channel/aidl/ParcelableObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(Ljava/lang/Object;)V

    .line 76
    iget v2, p0, Lanetwork/channel/statist/b;->b:I

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(I)V

    .line 77
    iget v2, p0, Lanetwork/channel/statist/b;->c:I

    invoke-virtual {v1, v2}, Lanetwork/channel/aidl/DefaultProgressEvent;->b(I)V

    .line 78
    invoke-virtual {v1, v0}, Lanetwork/channel/aidl/DefaultProgressEvent;->a(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lanetwork/channel/statist/b;->a:I

    invoke-virtual {v1, v0}, Lanetwork/channel/aidl/DefaultProgressEvent;->c(I)V

    .line 80
    iget-object v0, p0, Lanetwork/channel/statist/b;->d:[B

    invoke-virtual {v1, v0}, Lanetwork/channel/aidl/DefaultProgressEvent;->a([B)V

    .line 82
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/statist/b;->e:Lanetwork/channel/aidl/ParcelableNetworkListener;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lanetwork/channel/aidl/ParcelableNetworkListener;->a(Lanetwork/channel/aidl/DefaultProgressEvent;Lanetwork/channel/aidl/ParcelableObject;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
