.class public Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;
.super Ljava/lang/Object;
.source "LongLinkTransportManager.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpyLongLink;


# static fields
.field public static final TAG:Ljava/lang/String; = "LL_TRANSPORT"


# instance fields
.field private callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

.field private mPingFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private mPingLock:Ljava/lang/Object;

.field private mPingSuc:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingLock:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager$1;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;-><init>()V

    return-void
.end method

.method private getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    .line 209
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;
    .locals 1

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager$SingletonHolder;->access$100()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    move-result-object v0

    return-object v0
.end method

.method private isNetworkActive()Z
    .locals 3

    .prologue
    .line 306
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    .line 307
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->isNetworkActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const/4 v0, 0x1

    .line 311
    :goto_0
    return v0

    .line 310
    :cond_0
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isConnected == false, network not active   hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ping()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 97
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->justPing()Ljava/util/concurrent/Future;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingFuture:Ljava/util/concurrent/Future;

    .line 100
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    .line 101
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingFuture:Ljava/util/concurrent/Future;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPingTimeOut()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    if-nez v1, :cond_1

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 111
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingLock:Ljava/lang/Object;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPingTimeOut()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :cond_1
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    if-nez v1, :cond_2

    .line 120
    :goto_1
    return v0

    .line 103
    :catch_0
    move-exception v1

    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 120
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public asynConnect()V
    .locals 3

    .prologue
    .line 149
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->asynConnect()V

    .line 151
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "asynConnect hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public connect()Z
    .locals 3

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x1

    .line 144
    :goto_0
    return v0

    .line 142
    :cond_0
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "connect hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->connect()Z

    move-result v0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public getCallBack()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    return-object v0
.end method

.method public hasRegister()Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v1

    .line 71
    if-nez v1, :cond_0

    .line 72
    const-string/jumbo v1, "LL_TRANSPORT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected == false hasRegister="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :goto_0
    return v0

    .line 74
    :cond_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 75
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v1

    .line 76
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    :cond_1
    const-string/jumbo v1, "LL_TRANSPORT"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isConnected shutdown hasRegister="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isConnected == true hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_3
    const-string/jumbo v2, "LL_TRANSPORT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isConnected == false  hasRegister="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method public notifyNetworkConnectivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 198
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getNetworkConnectivityReceiver()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$NetworkConnectivityReceiver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$NetworkConnectivityReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 201
    const-string/jumbo v0, "LL_TRANSPORT"

    const-string/jumbo v1, "notifyNetworkConnectivity finish!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    const-string/jumbo v1, "LL_TRANSPORT"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyPingResponse()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 173
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    if-nez v0, :cond_0

    .line 174
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingSuc:Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->mPingLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :goto_1
    :try_start_2
    monitor-exit v1

    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    const-string/jumbo v2, "LL_TRANSPORT"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onConnected()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;->onConnected()V

    .line 231
    :cond_0
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnected, hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method public onConnecting()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;->onConnecting()V

    .line 251
    :cond_0
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onConnecting, hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public onDisconnected()V
    .locals 3

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;->onDisconnected()V

    .line 241
    :cond_0
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onDisconnected, hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public onRecvData([B)V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;->onRecvData([B)V

    .line 221
    :cond_0
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvData hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public register(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 125
    const-string/jumbo v2, "LL_TRANSPORT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u6ce8\u518c\uff1aLongLink callback register,current status:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    .line 127
    return v1

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCallBack(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    .line 284
    return-void
.end method

.method public spdyConnection()Z
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x1

    return v0
.end method

.method public unregister()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 132
    const-string/jumbo v2, "LL_TRANSPORT"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "\u6ce8\u9500\uff1aLongLink callback unregister,current status:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->callBack:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;

    .line 134
    return v1

    .line 132
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeData([B)I
    .locals 3

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    .line 162
    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Connection is close"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeTcpData([B)V

    .line 166
    const-string/jumbo v0, "LL_TRANSPORT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "writeData hasRegister="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;->hasRegister()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    array-length v0, p1

    return v0
.end method
