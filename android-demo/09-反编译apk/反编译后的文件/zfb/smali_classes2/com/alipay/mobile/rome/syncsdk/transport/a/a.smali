.class public final Lcom/alipay/mobile/rome/syncsdk/transport/a/a;
.super Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;
.source "LongLinkConnection.java"


# instance fields
.field private volatile d:Landroid/content/Context;

.field private volatile e:Ljava/net/Socket;

.field private volatile f:Z

.field private volatile g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

.field private volatile h:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->f:Z

    .line 62
    iput-object p2, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->d:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    .locals 4

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->f:Z

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not connected to server"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    if-nez p1, :cond_1

    .line 96
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "Packet is null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a(Lcom/alipay/mobile/rome/syncsdk/transport/c/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "LongLinkConnection"

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

    .line 103
    throw v0
.end method

.method public final a(Ljava/lang/Exception;)V
    .locals 5

    .prologue
    .line 295
    const-string/jumbo v0, "LongLinkConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyError: [ Exception"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    const-string/jumbo v1, "connectionErr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v1, "EXP_LL"

    .line 302
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v4

    .line 301
    invoke-static {v1, v2, v0, v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 306
    const-string/jumbo v0, "LongLinkConnection"

    const-string/jumbo v1, "onConnectionError: [ LongLinkConnection ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->f()V

    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startDelayedConnectTimer(I)V

    .line 307
    :cond_1
    return-void
.end method

.method public final c()V
    .locals 9

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->b()I

    move-result v2

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->d()Z

    move-result v3

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    move-result-object v4

    .line 145
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getFailCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 148
    const-string/jumbo v5, "LongLinkConnection"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "getIpByHost host:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, " ip:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v0

    .line 153
    :cond_0
    const-string/jumbo v0, "LongLinkConnection"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "connect: [ host="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ port="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ sslUsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 154
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ][ proxyInfo="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 153
    invoke-static {v0, v5}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->b()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-nez v3, :cond_3

    .line 159
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->e()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    .line 162
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 163
    const-string/jumbo v2, "CONN_TCP"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    if-nez v0, :cond_6

    .line 207
    new-instance v0, Ljava/lang/Exception;

    const-string/jumbo v1, "socket=null create socket failed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    :catch_0
    move-exception v0

    .line 212
    const-string/jumbo v1, "LongLinkConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "connect: [ connectUsingConfiguration failed ][ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 217
    :cond_1
    throw v0

    .line 146
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 166
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->c:Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->e()Ljavax/net/SocketFactory;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 170
    const-string/jumbo v7, "CONN_TCP"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v3, v0}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 175
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocketFactory;

    .line 178
    iget-object v3, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v1, v2, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 180
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setUseClientMode(Z)V

    .line 182
    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->c()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 184
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 185
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 187
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 188
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    .line 190
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/EnvConfigHelper;->isDebugMode()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/EnvConfigHelper;->isSandbox()Z

    move-result v5

    if-nez v5, :cond_5

    .line 191
    const-string/jumbo v5, "mobilepmgw.alipay.com"

    invoke-interface {v3, v5, v2}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 192
    const-string/jumbo v0, "LongLinkConnection"

    const-string/jumbo v3, "ssl hostname verify failed!"

    invoke-static {v0, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "proxyHost:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, " proxyPort:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;->b()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " hostname:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string/jumbo v1, " err:hostname verify failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " PeerPrincipal:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 201
    :cond_4
    const-string/jumbo v1, "LongLinkConnection"

    const-string/jumbo v2, "ssl hostname verify success!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :cond_5
    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    goto/16 :goto_1

    .line 210
    :cond_6
    const-string/jumbo v0, "LongLinkConnection"

    const-string/jumbo v1, "connect: [ connectUsingConfiguration success ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "LongLinkConnection"

    const-string/jumbo v1, "setConnected=true ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->f:Z

    .line 82
    return-void
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 114
    const-string/jumbo v0, "LongLinkConnection"

    const-string/jumbo v1, "initReaderWriter"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->a:Ljava/io/DataInputStream;

    .line 118
    new-instance v0, Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->b:Ljava/io/DataOutputStream;

    .line 120
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    .line 121
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->h:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->h:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    const-string/jumbo v1, "LongLinkConnection"

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

    .line 128
    throw v0
.end method

.method public final f()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 238
    const-string/jumbo v0, "LongLinkConnection"

    const-string/jumbo v1, "disconnect: "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->f:Z

    .line 242
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/d/a;)V

    .line 243
    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->g()V

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->h:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->h:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;->b()V

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->h:Lcom/alipay/mobile/rome/syncsdk/transport/connection/c;

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;->a()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->g:Lcom/alipay/mobile/rome/syncsdk/transport/connection/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->a:Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    .line 261
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->a:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    :goto_1
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->a:Ljava/io/DataInputStream;

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->b:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_3

    .line 270
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->b:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 274
    :goto_2
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->b:Ljava/io/DataOutputStream;

    .line 278
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    if-eqz v0, :cond_4

    .line 279
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 284
    :cond_4
    :goto_3
    iput-object v4, p0, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;->e:Ljava/net/Socket;

    .line 285
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    const-string/jumbo v1, "LongLinkConnection"

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

    .line 262
    :catch_1
    move-exception v0

    .line 263
    const-string/jumbo v1, "LongLinkConnection"

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

    .line 271
    :catch_2
    move-exception v0

    .line 272
    const-string/jumbo v1, "LongLinkConnection"

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

    .line 281
    :catch_3
    move-exception v0

    .line 282
    const-string/jumbo v1, "LongLinkConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "disconnect: socket close[ Exception "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
