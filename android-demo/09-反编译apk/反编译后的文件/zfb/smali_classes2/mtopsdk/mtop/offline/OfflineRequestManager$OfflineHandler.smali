.class Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;
.super Landroid/os/Handler;
.source "OfflineRequestManager.java"


# instance fields
.field final synthetic this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;


# direct methods
.method private constructor <init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmtopsdk/mtop/offline/OfflineRequestManager;Lmtopsdk/mtop/offline/OfflineRequestManager$1;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 89
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineHelper;->isNetworkOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$300(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/MtopProxy;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_1

    .line 96
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->this$0:Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-static {v1}, Lmtopsdk/mtop/offline/OfflineRequestManager;->access$400(Lmtopsdk/mtop/offline/OfflineRequestManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;

    invoke-direct {v2, p0, v0}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler$1;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;Lmtopsdk/mtop/MtopProxy;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 116
    const-wide/16 v1, 0x14

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->onSendFailCount()V

    .line 121
    const-string/jumbo v1, "mtopsdk.OfflineRequestManager"

    const-string/jumbo v2, "Exception happened in Offline request"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
