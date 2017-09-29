.class final Lanetwork/channel/degrade/d;
.super Lanetwork/channel/aidl/ParcelableFuture$Stub;
.source "FutureResult.java"


# instance fields
.field public a:Lanetwork/channel/aidl/ParcelableFuture;

.field volatile b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/degrade/d;->b:Z

    .line 12
    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lanetwork/channel/aidl/ParcelableFuture$Stub;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/degrade/d;->b:Z

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    .line 17
    return-void
.end method


# virtual methods
.method public final a(J)Lanetwork/channel/aidl/NetworkResponse;
    .locals 2

    .prologue
    .line 75
    :goto_0
    iget-object v0, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-nez v0, :cond_1

    .line 76
    const/4 v0, 0x0

    .line 83
    :cond_0
    return-object v0

    .line 78
    :cond_1
    iget-object v0, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v0, p1, p2}, Lanetwork/channel/aidl/ParcelableFuture;->a(J)Lanetwork/channel/aidl/NetworkResponse;

    move-result-object v0

    .line 79
    iget-boolean v1, p0, Lanetwork/channel/degrade/d;->b:Z

    if-eqz v1, :cond_0

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lanetwork/channel/degrade/d;->b:Z

    goto :goto_0
.end method

.method public final a(Lanetwork/channel/aidl/ParcelableFuture;)V
    .locals 2

    .prologue
    .line 23
    const-string/jumbo v0, "FutureResult"

    const-string/jumbo v1, "[refreshDelegate]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lanetwork/channel/degrade/d;->b:Z

    .line 25
    iput-object p1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    .line 27
    return-void
.end method

.method public final a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-object v1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_0

    .line 49
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableFuture;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 54
    :cond_0
    :goto_0
    return v0

    .line 51
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Z)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    iget-object v1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1, p1}, Lanetwork/channel/aidl/ParcelableFuture;->a(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 41
    :cond_0
    :goto_0
    return v0

    .line 36
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    if-eqz v1, :cond_0

    .line 63
    :try_start_0
    iget-object v1, p0, Lanetwork/channel/degrade/d;->a:Lanetwork/channel/aidl/ParcelableFuture;

    invoke-interface {v1}, Lanetwork/channel/aidl/ParcelableFuture;->b()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 68
    :cond_0
    :goto_0
    return v0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method
