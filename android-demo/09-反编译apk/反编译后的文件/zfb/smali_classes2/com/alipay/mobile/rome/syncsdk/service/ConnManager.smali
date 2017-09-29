.class public Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;
.super Ljava/lang/Object;
.source "ConnManager.java"


# instance fields
.field private volatile a:Landroid/content/Context;

.field private volatile b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;

.field private volatile c:J

.field private volatile d:J

.field private volatile e:J

.field private volatile f:J

.field private volatile g:J

.field private volatile h:J

.field private volatile i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

.field private volatile j:I

.field private volatile k:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;

.field private volatile l:Ljava/lang/Runnable;

.field private volatile m:Ljava/lang/Runnable;

.field private volatile n:Ljava/lang/Runnable;

.field private volatile o:Ljava/lang/Runnable;

.field private volatile p:Ljava/lang/Runnable;

.field private volatile q:Ljava/lang/Runnable;

.field private volatile r:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;)V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "ConnManager"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a:Landroid/content/Context;

    .line 112
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    .line 114
    sget v0, Lcom/alipay/mobile/rome/syncsdk/transport/c/b;->c:I

    iput v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->j:I

    .line 116
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/lang/Runnable;

    .line 117
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/d;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/d;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/b;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/b;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/lang/Runnable;

    .line 119
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/f;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/f;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/lang/Runnable;

    .line 122
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/i;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/i;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/lang/Runnable;

    .line 123
    return-void
.end method

.method private a()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 145
    const-string/jumbo v1, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return v0

    .line 149
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    const-string/jumbo v1, "ConnManager"

    const-string/jumbo v2, "checkCanConnect: [ isForceStopped=true ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v1

    if-nez v1, :cond_2

    .line 154
    const-string/jumbo v1, "ConnManager"

    const-string/jumbo v2, "checkCanConnect: [ isReconnEnable=false ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isNetAvailable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 158
    const-string/jumbo v1, "ConnManager"

    const-string/jumbo v2, "checkCanConnect: [ isNetAvailable=false ] "

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 249
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->clearAllTimers()V

    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method


# virtual methods
.method public declared-synchronized connect()V
    .locals 2

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "connect--running...."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 203
    :goto_0
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->isSpdyWaitTimerSubmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "connect: [ isSpdyWaitTimerSubmitted=true ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 199
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->m:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized connectOnRunned()V
    .locals 2

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "connectOnRunned"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()V
    .locals 3

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V

    .line 227
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;->BACKGROUND:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    if-ne v0, v1, :cond_0

    .line 230
    const-string/jumbo v0, "ConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Don\'t disconnect[spdy]["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils;->getCurrentAppStatus()Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$AppStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    monitor-exit p0

    return-void

    .line 234
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectByServerNotify()V
    .locals 2

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "disconnectByServerNotify"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->n:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V

    .line 244
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 241
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectStartTime()J
    .locals 2

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnection()Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
    .locals 1

    .prologue
    .line 419
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method public declared-synchronized getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    .locals 1

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->getCurrState()Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastRecvHeartBeatTime()J
    .locals 2

    .prologue
    .line 530
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastRecvInitReplyTime()J
    .locals 2

    .prologue
    .line 544
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastRecvPacketTime()J
    .locals 2

    .prologue
    .line 516
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSendHeartBeatTime()J
    .locals 2

    .prologue
    .line 488
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLastSendInitPacketTime()J
    .locals 2

    .prologue
    .line 502
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
    .locals 1

    .prologue
    .line 447
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getInstance()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLinkNotifier()Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    .locals 1

    .prologue
    .line 433
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->k:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProtocolVersion()I
    .locals 1

    .prologue
    .line 472
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .locals 4

    .prologue
    .line 560
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isConnected()Z

    move-result v0

    .line 561
    const-string/jumbo v1, "ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    monitor-exit p0

    return v0

    .line 560
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDeviceBinded()Z
    .locals 4

    .prologue
    .line 570
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isDeviceBinded()Z

    move-result v0

    .line 571
    const-string/jumbo v1, "ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isDeviceBinded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    monitor-exit p0

    return v0

    .line 570
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isNetAvailable()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isUserBinded()Z
    .locals 4

    .prologue
    .line 580
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isUserBinded()Z

    move-result v0

    .line 581
    const-string/jumbo v1, "ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isUserBinded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    monitor-exit p0

    return v0

    .line 580
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectSucceeded()V
    .locals 1

    .prologue
    .line 620
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopConnectTimeOutTimer()V

    .line 621
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onConnectSucceeded()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    monitor-exit p0

    return-void

    .line 620
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDeviceBindSended()V
    .locals 1

    .prologue
    .line 635
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onDeviceBindSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 636
    monitor-exit p0

    return-void

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRecvRegisterReply()V
    .locals 4

    .prologue
    .line 593
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onRecvRegisterReply()V

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->isUserBinded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string/jumbo v0, ""

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 612
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 600
    :try_start_1
    const-string/jumbo v1, "ConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRecvRegisterReply[ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->clearAllTimers()V

    .line 606
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    .line 609
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    .line 610
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 609
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startDelayedConnectTimer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 593
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onRegisterSended()V
    .locals 1

    .prologue
    .line 628
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onRegisterSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    monitor-exit p0

    return-void

    .line 628
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserBindSended()V
    .locals 1

    .prologue
    .line 642
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onUserBindSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    monitor-exit p0

    return-void

    .line 642
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onUserUnBindSended()V
    .locals 1

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->onUserUnBindSended()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reconnect()V
    .locals 2

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "reconnect"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->disconnect()V

    .line 272
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 277
    :goto_0
    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendBindUerPacket()V
    .locals 2

    .prologue
    .line 318
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendBindUerPacket"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 322
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 336
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 318
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 334
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->p:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendHeartBeatPacket()V
    .locals 2

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendHeartBeatPacket"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 312
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->isHeartBeatReplayCheckTimerSubbmitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendHeartBeatPacket: [ wait heartbeat reply ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 310
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->q:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendLinkDefaultData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 368
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 369
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendLinkDefaultData[ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :goto_0
    monitor-exit p0

    return-void

    .line 381
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    .line 382
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 381
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startDelayedConnectTimer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 368
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 385
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/g;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/a/g;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendLinkSyncData(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 392
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 393
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendLinkSyncData[ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 411
    :goto_0
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    .line 406
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 405
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startDelayedConnectTimer(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 410
    :cond_2
    :try_start_2
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/service/a/h;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/a/h;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized sendRegisterPacket()V
    .locals 2

    .prologue
    .line 285
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendRegisterPacket"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 293
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->o:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized sendUnBindUerPacket()V
    .locals 2

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ConnManager"

    const-string/jumbo v1, "sendUnBindUerPacket"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 346
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setFailCountForOnceEnable()V

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :goto_0
    monitor-exit p0

    return-void

    .line 354
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 358
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->remove(Ljava/lang/Runnable;)V

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->r:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/SyncExecuteTask;->submit(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized setConnectStartTime(J)V
    .locals 1

    .prologue
    .line 463
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->c:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    monitor-exit p0

    return-void

    .line 463
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V
    .locals 1

    .prologue
    .line 426
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->b:Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    monitor-exit p0

    return-void

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastRecvHeartBeatTime(J)V
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->g:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    .line 537
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastRecvInitReplyTime(J)V
    .locals 1

    .prologue
    .line 551
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    monitor-exit p0

    return-void

    .line 551
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastRecvPacketTime(J)V
    .locals 1

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 524
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSendHeartBeatTime(J)V
    .locals 1

    .prologue
    .line 495
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    monitor-exit p0

    return-void

    .line 495
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLastSendInitPacketTime(J)V
    .locals 1

    .prologue
    .line 509
    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->e:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 510
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLinkNotifier(Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;)V
    .locals 1

    .prologue
    .line 440
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->k:Lcom/alipay/mobile/rome/syncsdk/service/ILongLinkNotifer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setProtocolVersion(I)V
    .locals 1

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    monitor-exit p0

    return-void

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toInitState()V
    .locals 1

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->i:Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnStateFsm;->toInitState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    monitor-exit p0

    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
