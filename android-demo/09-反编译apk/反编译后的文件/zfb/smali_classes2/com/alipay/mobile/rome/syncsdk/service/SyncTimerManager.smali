.class public Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;
.super Ljava/lang/Object;
.source "SyncTimerManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;


# instance fields
.field private volatile c:Ljava/lang/Runnable;

.field private volatile d:Ljava/lang/Runnable;

.field private volatile e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

.field private volatile f:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

.field private volatile g:Ljava/lang/Runnable;

.field private volatile h:Ljava/lang/Runnable;

.field private volatile i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .prologue
    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$FlowControlTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->i:Ljava/lang/Runnable;

    .line 56
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$DelayedConnectTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->h:Ljava/lang/Runnable;

    .line 57
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$TimeOutTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->c:Ljava/lang/Runnable;

    .line 58
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$HeartBeatTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->d:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    const-string/jumbo v2, "typeHeartBeat"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    .line 60
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    const-string/jumbo v2, "typeInit"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Ljava/lang/String;JI)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    .line 61
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$SpdyWaitCheckTask;

    invoke-direct {v0, p0, v6}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$SpdyWaitCheckTask;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$SpdyWaitCheckTask;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->g:Ljava/lang/Runnable;

    .line 62
    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->b:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    if-nez v0, :cond_1

    .line 71
    const-class v1, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    monitor-enter v1

    .line 72
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->b:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->b:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->b:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearAllTimers()V
    .locals 2

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "clearAllTimers"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopHeartBeatTimer()V

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopHeartBeatReplayCheckTimer()V

    .line 280
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopInitReplayCheckTimer()V

    .line 281
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopDelayedConnectTimer()V

    .line 282
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopSpdyWaitTimer()V

    .line 283
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopFlowControlTimer()V

    .line 284
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopConnectTimeOutTimer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isHeartBeatReplayCheckTimerSubbmitted()Z
    .locals 1

    .prologue
    .line 190
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->hasSubmitRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSpdyWaitTimerSubmitted()Z
    .locals 1

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->hasSubmitRunnable(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startConnectTimeOutTimer()V
    .locals 3

    .prologue
    .line 122
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 136
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 127
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->hasSubmitRunnable(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 131
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "startConnectTimeOutTimer[ delay=30 ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->c:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V

    .line 135
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDelayedConnectTimer(I)V
    .locals 3

    .prologue
    .line 104
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startDelayedConnectTimer[ delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopDelayedConnectTimer()V

    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->h:Ljava/lang/Runnable;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startFlowControlTimer(I)V
    .locals 3

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "startFlowControlTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopFlowControlTimer()V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->i:Ljava/lang/Runnable;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHeartBeatReplayCheckTimer(JI)V
    .locals 1

    .prologue
    .line 176
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "typeHeartBeat"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startReplayCheckTimer(Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    monitor-exit p0

    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startHeartBeatTimer(I)V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startHeartBeatTimer[ delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->cancel(Ljava/lang/Runnable;)V

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->d:Ljava/lang/Runnable;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->schedule(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startInitReplayCheckTimer(JI)V
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "typeInit"

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startReplayCheckTimer(Ljava/lang/String;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startReplayCheckTimer(Ljava/lang/String;JI)V
    .locals 3

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startReplayCheckTimer[ type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ sendTimeMillis="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "typeHeartBeat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopHeartBeatReplayCheckTimer()V

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    iput-wide p2, v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->sendTimeMillis:J

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    iput p4, v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->delay:I

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    mul-int/lit16 v1, p4, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    monitor-exit p0

    return-void

    .line 226
    :cond_0
    :try_start_1
    const-string/jumbo v0, "typeInit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopInitReplayCheckTimer()V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    iput-wide p2, v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->sendTimeMillis:J

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    iput p4, v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;->delay:I

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    mul-int/lit16 v1, p4, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 235
    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "startReplayCheckTimer: [ unknown type ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized startSpdyWaitTimer(I)V
    .locals 3

    .prologue
    .line 245
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startSpdyWaitTimer[ delay="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopSpdyWaitTimer()V

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->g:Ljava/lang/Runnable;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submitDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopConnectTimeOutTimer()V
    .locals 2

    .prologue
    .line 139
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopConnectTimeOutTimer"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    monitor-exit p0

    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDelayedConnectTimer()V
    .locals 1

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->h:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopFlowControlTimer()V
    .locals 1

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->i:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopHeartBeatReplayCheckTimer()V
    .locals 2

    .prologue
    .line 180
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopHeartBeatReplayCheckTimer: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->e:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopHeartBeatTimer()V
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopHeartBeatTimer"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->d:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->cancel(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopInitReplayCheckTimer()V
    .locals 2

    .prologue
    .line 205
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->a:Ljava/lang/String;

    const-string/jumbo v1, "stopInitReplayCheckTimer"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->f:Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager$ReplyCheckTask;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSpdyWaitTimer()V
    .locals 1

    .prologue
    .line 257
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->g:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
