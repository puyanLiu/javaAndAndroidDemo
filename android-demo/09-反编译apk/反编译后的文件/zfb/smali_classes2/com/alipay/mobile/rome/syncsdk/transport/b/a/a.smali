.class public final Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;
.super Ljava/lang/Object;
.source "SpdyCallBackImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;


# instance fields
.field private a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/b/a;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    .line 29
    return-void
.end method


# virtual methods
.method public final declared-synchronized onConnected()V
    .locals 3

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, "SpdyCallBackImpl"

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnected:  [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    .line 70
    if-nez v0, :cond_1

    .line 71
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onConnected: [ connManager=null ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 76
    :cond_1
    :try_start_2
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onConnected: [ already connected ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->isSpdyWaitTimerSubmitted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 83
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->stopSpdyWaitTimer()V

    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized onConnecting()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onConnecting"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onDisconnected()V
    .locals 3

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "SpdyCallBackImpl"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnected:  [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 110
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onRecvData([B)V
    .locals 3

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onRecvData"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    const-string/jumbo v0, "SpdyCallBackImpl"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvData: [ channel="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    .line 46
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i()Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    const-string/jumbo v0, "SpdyCallBackImpl"

    const-string/jumbo v1, "onRecvData: [ SpdyCallBackImpl ] [ isConnected=false ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 51
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;->a:Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
