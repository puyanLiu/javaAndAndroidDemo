.class Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;
.super Ljava/lang/Object;
.source "OfflineRequestManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

.field final synthetic val$proxy:Lmtopsdk/mtop/MtopProxy;


# direct methods
.method constructor <init>(Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;Lmtopsdk/mtop/MtopProxy;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;->this$1:Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    iput-object p2, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;->val$proxy:Lmtopsdk/mtop/MtopProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 102
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;->val$proxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v0}, Lmtopsdk/mtop/MtopProxy;->syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    :cond_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    const-string/jumbo v1, "mtopsdk.OfflineRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Offline request failed"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->onSendFailCount()V

    .line 108
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 111
    :goto_0
    return-object v0

    .line 110
    :cond_2
    const-string/jumbo v0, "mtopsdk.OfflineRequestManager"

    const-string/jumbo v1, "Offline request succeed"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
