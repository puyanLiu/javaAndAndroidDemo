.class Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;
.super Ljava/lang/Object;
.source "DiagnoseStateListener.java"

# interfaces
.implements Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;


# instance fields
.field executTime:J

.field firstReport:Z

.field logStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

.field oneceSuccess:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->logStrList:Ljava/util/List;

    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->firstReport:Z

    .line 26
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->executTime:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->oneceSuccess:Z

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;ZZLjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->doCalcProgress(ZZLjava/lang/String;Z)V

    return-void
.end method

.method private doCalcProgress(ZZLjava/lang/String;Z)V
    .locals 3

    .prologue
    .line 86
    :try_start_0
    const-string/jumbo v0, "NetTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "fin=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], ok=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], done=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], summary=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz p1, :cond_3

    .line 90
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->logStrList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->logStrList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->oneceSuccess:Z

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->setProgressToStartLog()Z

    move-result v0

    .line 96
    if-eqz v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    .line 127
    :cond_1
    :goto_0
    return-void

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->setProgressToFail()Z

    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string/jumbo v1, "NetTest"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 107
    :cond_3
    if-eqz p4, :cond_1

    .line 110
    if-eqz p4, :cond_5

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->setProgressToStartTraceRouting()Z

    move-result v0

    .line 112
    if-eqz v0, :cond_4

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    .line 115
    :cond_4
    if-eqz p2, :cond_5

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->oneceSuccess:Z

    .line 120
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->logStrList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method getLogStrList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->logStrList:Ljava/util/List;

    return-object v0
.end method

.method public getOneceSuccess()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->oneceSuccess:Z

    return v0
.end method

.method public report(ZZZLjava/lang/String;)V
    .locals 8

    .prologue
    const-wide/16 v5, 0x7d0

    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->isStateRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    :goto_0
    return-void

    .line 49
    :cond_0
    monitor-enter p0

    .line 52
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->firstReport:Z

    if-eqz v1, :cond_2

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->firstReport:Z

    .line 54
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 55
    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 56
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 57
    add-int/lit8 v0, v0, 0x6

    .line 58
    :cond_1
    mul-int/lit16 v0, v0, 0x3e8

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->executTime:J

    move v6, v0

    .line 72
    :goto_1
    const-string/jumbo v0, "NetTest"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->networkDiagnoseServiceImpl:Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 76
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;

    move-object v1, p0

    move v2, p3

    move v3, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;ZZLjava/lang/String;Z)V

    int-to-long v1, v6

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 64
    :cond_2
    :try_start_1
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->executTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 65
    const-wide/16 v3, 0x1

    cmp-long v3, v1, v3

    if-gez v3, :cond_3

    move v6, v0

    .line 66
    goto :goto_1

    .line 68
    :cond_3
    long-to-int v0, v1

    .line 69
    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->executTime:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    add-long/2addr v1, v5

    iput-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->executTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v0

    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
