.class public final Lcom/alipay/mobile/rome/syncsdk/transport/b/a;
.super Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
.source "SyncSpdyConnection.java"


# instance fields
.field private volatile d:Landroid/content/Context;

.field private volatile e:Z

.field private volatile f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

.field private volatile g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

.field private h:Ljava/io/PipedInputStream;

.field private i:Ljava/io/PipedOutputStream;

.field private j:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    .line 66
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 4

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not connected to server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_0
    if-nez p1, :cond_1

    .line 131
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Packet is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    throw v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 263
    const-string/jumbo v0, "LongSpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyError: [ LongSpdyConnection ] [ Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    const-string/jumbo v1, "connectionErr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    const-string/jumbo v1, "EXP_SPDY"

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 273
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 270
    invoke-static {v1, v2, v0, v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 276
    :cond_0
    const-string/jumbo v0, "LongSpdyConnection"

    const-string/jumbo v1, "onError: [ LongSpdyConnection ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->d()V

    :cond_2
    const-string/jumbo v0, "spdy"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isMobileNetType(Landroid/content/Context;)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v1

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getSpdyWaitTimeout(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startSpdyWaitTimer(I)V

    .line 277
    :goto_0
    return-void

    .line 276
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "switch"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto :goto_0
.end method

.method public final a([B)V
    .locals 4

    .prologue
    .line 77
    const-string/jumbo v0, "LongSpdyConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onRecvData[ data.len="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/PipedOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onRecvData: [ IOException="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 4

    .prologue
    .line 200
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->a()Z

    move-result v0

    .line 201
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connect: spdy [ ret="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "LongSpdyConnection"

    const-string/jumbo v1, "setConnected:true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    .line 118
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 168
    const-string/jumbo v0, "LongSpdyConnection"

    const-string/jumbo v1, "initReaderWriter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h:Ljava/io/PipedInputStream;

    new-instance v0, Ljava/io/PipedOutputStream;

    invoke-direct {v0}, Ljava/io/PipedOutputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i:Ljava/io/PipedOutputStream;

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h:Ljava/io/PipedInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->i:Ljava/io/PipedOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/c;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/c;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j:Ljava/io/OutputStream;

    .line 177
    :try_start_1
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->h:Ljava/io/PipedInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    .line 178
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->j:Ljava/io/OutputStream;

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    .line 180
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    .line 181
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 171
    :catch_0
    move-exception v0

    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sendPacket: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initReaderWriter: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    throw v0
.end method

.method public final f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 211
    const-string/jumbo v0, "LongSpdyConnection"

    const-string/jumbo v1, "disconnect"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->b()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a()V

    .line 221
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->f:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    .line 230
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 234
    :goto_1
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a:Ljava/io/DataInputStream;

    .line 237
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_3

    .line 239
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 243
    :goto_2
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->b:Ljava/io/DataOutputStream;

    .line 248
    :cond_3
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->b()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    :goto_3
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: shutdown[ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :catch_1
    move-exception v0

    .line 232
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: reader close[ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 240
    :catch_2
    move-exception v0

    .line 241
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: writer close[ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 249
    :catch_3
    move-exception v0

    .line 250
    const-string/jumbo v1, "LongSpdyConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: [ call SpdyConnectionAdaptor ][ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 251
    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 92
    const-string/jumbo v0, "LongSpdyConnection"

    const-string/jumbo v1, "onDisconnected"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, " onDisconnected LongSpdyConnection "

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->a(Ljava/lang/Exception;)V

    .line 98
    return-void
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;->e:Z

    return v0
.end method
