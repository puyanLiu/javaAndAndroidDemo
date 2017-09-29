.class public Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;
.super Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;
.source "ZClientConnectionOperator.java"


# static fields
.field private static final a:Lorg/apache/http/conn/scheme/PlainSocketFactory;


# instance fields
.field private b:B

.field private c:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lorg/apache/http/conn/scheme/PlainSocketFactory;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/PlainSocketFactory;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 38
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    .line 40
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    .line 49
    return-void
.end method

.method private static a(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;
    .locals 1

    .prologue
    .line 257
    const-string/jumbo v0, "NET_CONTEXT"

    invoke-interface {p0, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;

    return-object v0
.end method

.method private a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 11

    .prologue
    .line 111
    if-nez p1, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    if-nez p2, :cond_1

    .line 116
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Target host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1
    if-nez p5, :cond_2

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Parameters must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/conn/OperatedClientConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Connection must not be open."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->getScheme(Ljava/lang/String;)Lorg/apache/http/conn/scheme/Scheme;

    move-result-object v6

    .line 131
    invoke-virtual {v6}, Lorg/apache/http/conn/scheme/Scheme;->getSocketFactory()Lorg/apache/http/conn/scheme/SocketFactory;

    move-result-object v7

    .line 134
    instance-of v0, v7, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    if-eqz v0, :cond_4

    .line 135
    sget-object v8, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a:Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-object v0, v7

    .line 136
    check-cast v0, Lorg/apache/http/conn/scheme/LayeredSocketFactory;

    move-object v9, v0

    .line 142
    :goto_0
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 144
    const/4 v0, 0x1

    new-array v10, v0, [Ljava/net/InetAddress;

    const/4 v0, 0x0

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->ipToBytesByReg(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    aput-object v1, v10, v0

    :goto_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 150
    :try_start_0
    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_2
    return-void

    .line 139
    :cond_4
    const/4 v9, 0x0

    move-object v8, v7

    goto :goto_0

    .line 146
    :cond_5
    invoke-static {p2, p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)[Ljava/net/InetAddress;

    move-result-object v10

    goto :goto_1

    .line 151
    :catch_0
    move-exception v0

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 154
    throw v0

    .line 157
    :cond_6
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 158
    throw v0

    .line 161
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByNameFromHttpDns(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_8

    array-length v1, v1

    if-nez v1, :cond_9

    .line 163
    :cond_8
    throw v0

    .line 166
    :cond_9
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v10

    .line 167
    if-eqz v10, :cond_a

    array-length v1, v10

    if-nez v1, :cond_b

    .line 168
    :cond_a
    throw v0

    :cond_b
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    .line 171
    invoke-direct/range {v0 .. v10}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V

    .line 173
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->setErrorByHost(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/Scheme;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/SocketFactory;Lorg/apache/http/conn/scheme/LayeredSocketFactory;[Ljava/net/InetAddress;)V
    .locals 10

    .prologue
    .line 178
    const/4 v1, 0x0

    move v8, v1

    :goto_0
    move-object/from16 v0, p10

    array-length v1, v0

    if-ge v8, v1, :cond_2

    .line 179
    invoke-interface/range {p8 .. p8}, Lorg/apache/http/conn/scheme/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    .line 180
    invoke-interface {p1, v2, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 184
    :try_start_0
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v9

    .line 185
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v3, "TCP_TIME"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1

    .line 187
    :try_start_1
    aget-object v1, p10, v8

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    move-object/from16 v0, p6

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v4

    .line 189
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v5, "TARGET_HOST"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v6, 0x0

    move-object/from16 v1, p8

    move-object v5, p3

    move-object v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/http/conn/scheme/SocketFactory;->connectSocket(Ljava/net/Socket;Ljava/lang/String;ILjava/net/InetAddress;ILorg/apache/http/params/HttpParams;)Ljava/net/Socket;

    move-result-object v1

    .line 194
    if-eq v2, v1, :cond_0

    .line 196
    invoke-interface {p1, v1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 199
    :cond_0
    :try_start_2
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v3, "TCP_TIME"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 202
    const-string/jumbo v1, "HttpClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ZClientConnectionOperator connect succee. host=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p10, v8

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, v2, p4, p5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->prepareSocket(Ljava/net/Socket;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 215
    if-eqz p9, :cond_3

    .line 216
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v3, "SSL_TIME"

    invoke-interface {v1, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1

    .line 217
    :try_start_3
    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Lorg/apache/http/conn/scheme/Scheme;->resolvePort(I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p9

    invoke-interface {v0, v2, v1, v3, v4}, Lorg/apache/http/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v1

    .line 224
    :try_start_4
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    const-string/jumbo v4, "SSL_TIME"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 226
    if-eq v1, v2, :cond_1

    .line 227
    invoke-interface {p1, v1, p2}, Lorg/apache/http/conn/OperatedClientConnection;->opening(Ljava/net/Socket;Lorg/apache/http/HttpHost;)V

    .line 229
    :cond_1
    move-object/from16 v0, p7

    invoke-interface {v0, v1}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v1

    invoke-interface {p1, v1, p5}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V

    .line 254
    :cond_2
    :goto_1
    return-void

    .line 199
    :catchall_0
    move-exception v1

    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string/jumbo v3, "TCP_TIME"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_1

    .line 236
    :catch_0
    move-exception v1

    .line 237
    move-object/from16 v0, p10

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_5

    .line 238
    instance-of v2, v1, Ljava/net/ConnectException;

    if-eqz v2, :cond_4

    .line 240
    check-cast v1, Ljava/net/ConnectException;

    .line 245
    :goto_2
    new-instance v2, Lorg/apache/http/conn/HttpHostConnectException;

    invoke-direct {v2, p2, v1}, Lorg/apache/http/conn/HttpHostConnectException;-><init>(Lorg/apache/http/HttpHost;Ljava/net/ConnectException;)V

    throw v2

    .line 224
    :catchall_1
    move-exception v1

    :try_start_5
    invoke-virtual {v9}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v2

    const-string/jumbo v3, "SSL_TIME"

    invoke-interface {v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catch Ljava/net/SocketException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5 .. :try_end_5} :catch_1

    .line 248
    :catch_1
    move-exception v1

    .line 249
    move-object/from16 v0, p10

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ne v8, v2, :cond_5

    .line 250
    throw v1

    .line 231
    :cond_3
    :try_start_6
    move-object/from16 v0, p7

    invoke-interface {v0, v2}, Lorg/apache/http/conn/scheme/SocketFactory;->isSecure(Ljava/net/Socket;)Z

    move-result v1

    invoke-interface {p1, v1, p5}, Lorg/apache/http/conn/OperatedClientConnection;->openCompleted(ZLorg/apache/http/params/HttpParams;)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 242
    :cond_4
    new-instance v2, Ljava/net/ConnectException;

    invoke-virtual {v1}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2, v1}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-object v1, v2

    goto :goto_2

    .line 178
    :cond_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_0
.end method

.method private static a(Lorg/apache/http/HttpHost;Lorg/apache/http/protocol/HttpContext;)[Ljava/net/InetAddress;
    .locals 5

    .prologue
    .line 261
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v2, "DNS_TIME"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 264
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_2

    .line 268
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    .line 269
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 270
    :cond_0
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 285
    :goto_0
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "DNS_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 287
    :goto_1
    return-object v0

    .line 272
    :cond_1
    :try_start_1
    const-string/jumbo v2, "HTTP_DNS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ZClientConnectionOperator addresses len = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 285
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "DNS_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    throw v0

    .line 276
    :cond_2
    :try_start_3
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v2, "ZClientConnectionOperator dnsClient is null"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 281
    :catch_1
    move-exception v0

    .line 282
    :try_start_4
    const-string/jumbo v2, "HTTP_DNS"

    const-string/jumbo v3, "ZClientConnectionOperator Exception"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    invoke-virtual {p0}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 285
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "DNS_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 55
    iget-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    if-ne v0, v2, :cond_2

    .line 58
    :try_start_0
    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 59
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :try_start_1
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "ORIGHC"

    const-string/jumbo v2, "T"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 66
    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "ZClientConnectionOperator. isNetworkAvailable == false "

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    throw v0

    .line 70
    :cond_0
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    if-ge v1, v5, :cond_1

    .line 71
    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ZClientConnectionOperator. orig err count : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    throw v0

    .line 75
    :cond_1
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    .line 76
    const-string/jumbo v0, "HttpWorker"

    const-string/jumbo v1, "ZClientConnectionOperator. use cust retry!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 78
    iput-byte v4, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    goto :goto_0

    .line 85
    :cond_2
    :try_start_2
    invoke-direct/range {p0 .. p5}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 86
    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 87
    :catch_1
    move-exception v0

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 90
    const-string/jumbo v1, "HttpWorker"

    const-string/jumbo v2, "ZClientConnectionOperator. isNetworkAvailable == false "

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    throw v0

    .line 94
    :cond_3
    iget-byte v1, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    if-ge v1, v5, :cond_4

    .line 95
    const-string/jumbo v1, "HttpWorker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ZClientConnectionOperator. cust err count : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v3, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    throw v0

    .line 99
    :cond_4
    iput-byte v3, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->b:B

    .line 100
    const-string/jumbo v0, "HttpWorker"

    const-string/jumbo v1, "ZClientConnectionOperator. use origin retry!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-super/range {p0 .. p5}, Lorg/apache/http/impl/conn/DefaultClientConnectionOperator;->openConnection(Lorg/apache/http/conn/OperatedClientConnection;Lorg/apache/http/HttpHost;Ljava/net/InetAddress;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/params/HttpParams;)V

    .line 102
    iput-byte v2, p0, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->c:B

    .line 105
    :try_start_3
    invoke-static {p4}, Lcom/alipay/mobile/common/transport/http/ZClientConnectionOperator;->a(Lorg/apache/http/protocol/HttpContext;)Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "ORIGHC"

    const-string/jumbo v2, "T"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 108
    :catch_2
    move-exception v0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    goto/16 :goto_0
.end method
