.class public Lmtopsdk/mtop/common/ApiID;
.super Ljava/lang/Object;
.source "ApiID.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ApiID"


# instance fields
.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation
.end field

.field private mtopProxy:Lmtopsdk/mtop/MtopProxy;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Future;Lmtopsdk/mtop/MtopProxy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;",
            "Lmtopsdk/mtop/MtopProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    .line 40
    iput-object p2, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    .line 41
    return-void
.end method


# virtual methods
.method public cancelApiCall()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    if-nez v0, :cond_0

    .line 69
    const-string/jumbo v0, "mtopsdk.ApiID"

    const-string/jumbo v1, "Future<Response> is null,cancel apiCall failed"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    goto :goto_0
.end method

.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getMtopProxy()Lmtopsdk/mtop/MtopProxy;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    return-object v0
.end method

.method public retryApiCall()Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/common/ApiID;->retryApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    return-object v0
.end method

.method public retryApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v0, p1}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall(Landroid/os/Handler;)Lmtopsdk/mtop/common/ApiID;

    move-result-object v0

    goto :goto_0
.end method

.method public setFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<",
            "Lanetwork/channel/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    .line 49
    return-void
.end method

.method public setMtopProxy(Lmtopsdk/mtop/MtopProxy;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ApiID [future="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/common/ApiID;->future:Ljava/util/concurrent/Future;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mtopProxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/common/ApiID;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
