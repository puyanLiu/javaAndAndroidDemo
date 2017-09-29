.class public Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;
.super Ljava/lang/Object;
.source "NetworkDiagnoseServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseService;


# static fields
.field private static final PROGRESS_CONNECTING:I = 0x28

.field private static final PROGRESS_FINISH:I = 0x64

.field private static final PROGRESS_TRACE_ROUTING:I = 0x5f

.field private static final STATE_IDLE:I = 0x1

.field private static final STATE_RUNNING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NetDiag"

.field private static final TEXT_CONNECTING:Ljava/lang/String; = "\u5f00\u59cb\u8fde\u63a5\u670d\u52a1\u5668"

.field private static final TEXT_FAIL:Ljava/lang/String; = "\u5931\u8d25"

.field private static final TEXT_SUCCESS:Ljava/lang/String; = "\u6210\u529f"

.field private static final TRACE_ROUTING:Ljava/lang/String; = "\u6b63\u5728\u68c0\u67e5\u8def\u7531\u4fe1\u606f"

.field private static final UPLOADING:Ljava/lang/String; = "\u6b63\u5728\u4e0a\u4f20\u62a5\u544a"


# instance fields
.field private volatile currentProgress:I

.field private currentStat:I

.field private diagnoseStateListener:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;",
            ">;"
        }
    .end annotation
.end field

.field private scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private state:I

.field private text:Ljava/lang/String;

.field private timerTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->listeners:Ljava/util/List;

    .line 65
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentStat:I

    .line 69
    const-string/jumbo v0, "\u5f00\u59cb\u8fde\u63a5\u670d\u52a1\u5668"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    .line 73
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    return v0
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    return v0
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;I)I
    .locals 0

    .prologue
    .line 31
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    return p1
.end method

.method static synthetic access$108(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)I
    .locals 2

    .prologue
    .line 31
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    return v0
.end method

.method private cancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->timerTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 132
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->timerTask:Ljava/lang/Runnable;

    .line 136
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    .line 146
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    :goto_1
    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 151
    :cond_2
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string/jumbo v1, "NetDiag"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->diagnoseStateListener:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    .line 123
    const-string/jumbo v0, "\u5f00\u59cb\u8fde\u63a5\u670d\u52a1\u5668"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    .line 125
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    .line 126
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentStat:I

    .line 127
    return-void
.end method

.method private declared-synchronized setProgressToSuccess()Z
    .locals 1

    .prologue
    .line 277
    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    .line 278
    const-string/jumbo v0, "\u6210\u529f"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    .line 279
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startDiagnoseTask()V
    .locals 2

    .prologue
    .line 111
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;-><init>(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->diagnoseStateListener:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    .line 112
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->diagnoseStateListener:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->detect(Lcom/alipay/mobile/common/amnet/api/AmnetNetworkDiagnoseListener;)V

    .line 113
    return-void
.end method


# virtual methods
.method public addDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-void
.end method

.method public cancel()V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->cancelTimer()V

    .line 118
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->recycle()V

    .line 119
    return-void
.end method

.method public getScheduledExecutorService()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public isCanDiagnose()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 178
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v1

    .line 179
    if-nez v1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v0

    goto :goto_0
.end method

.method isStateRunning()Z
    .locals 2

    .prologue
    .line 190
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentStat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyUpdateProgress()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 155
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentStat:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;

    .line 160
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    invoke-interface {v0, v2, v3, v4}, Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;->updateProgress(Ljava/lang/String;II)V

    goto :goto_1

    .line 163
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    if-eq v0, v5, :cond_2

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 165
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    if-ne v0, v5, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->writeLog()V

    .line 169
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->cancel()V

    .line 173
    :cond_4
    :goto_2
    const-string/jumbo v0, "NetDiag"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyUpdateProgress  state="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->writeLog()V

    goto :goto_2
.end method

.method public removeDiagnoseListener(Lcom/alipay/mobile/common/transport/ext/diagnose/NetworkDiagnoseListener;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method declared-synchronized setProgressToFail()Z
    .locals 3

    .prologue
    const/16 v2, 0x64

    .line 266
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    if-ge v0, v2, :cond_0

    .line 268
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    .line 269
    const-string/jumbo v0, "\u5931\u8d25"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    .line 270
    const/16 v0, 0x64

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    const/4 v0, 0x1

    .line 273
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgressToStartLog()Z
    .locals 2

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    const/16 v1, 0x5f

    if-gt v0, v1, :cond_0

    .line 253
    const/4 v0, 0x3

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    .line 254
    const-string/jumbo v0, "\u6b63\u5728\u4e0a\u4f20\u62a5\u544a"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    .line 255
    const/16 v0, 0x60

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    const/4 v0, 0x1

    .line 258
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized setProgressToStartTraceRouting()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 235
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    .line 237
    const/4 v1, 0x2

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    .line 238
    const-string/jumbo v1, "\u6b63\u5728\u68c0\u67e5\u8def\u7531\u4fe1\u606f"

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->text:Ljava/lang/String;

    .line 239
    const/16 v1, 0x29

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startDiagnose()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentStat:I

    if-eq v0, v1, :cond_0

    .line 99
    monitor-exit p0

    .line 108
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->currentStat:I

    .line 102
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 105
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->startDiagnoseTask()V

    .line 106
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl$ZTimerTask;-><init>(Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->timerTask:Ljava/lang/Runnable;

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->timerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4b0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->scheduledFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeLog()V
    .locals 4

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->diagnoseStateListener:Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/DiagnoseStateListener;->getLogStrList()Ljava/util/List;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 294
    const-string/jumbo v3, "NetDiago"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v3, "0.1"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 296
    const-string/jumbo v3, "out_diago"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v3, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 300
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v0

    const-string/jumbo v3, "network"

    invoke-interface {v0, v3}, Lcom/alipay/mobile/common/logging/api/LogContext;->upload(Ljava/lang/String;)V

    .line 301
    const-string/jumbo v0, "NetDiag"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string/jumbo v2, "NetDiag"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 307
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 308
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->setProgressToSuccess()Z

    move-result v0

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/diagnose/NetworkDiagnoseServiceImpl;->notifyUpdateProgress()V

    .line 313
    :cond_1
    return-void
.end method
