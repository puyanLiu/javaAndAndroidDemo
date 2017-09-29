.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
.super Ljava/lang/Object;
.source "Connection.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final HTTP_11:[B

.field private static final NPN_PROTOCOLS:[B

.field private static final SPDY3:[B


# instance fields
.field private connected:Z

.field private httpMinorVersion:I

.field private idleStartTimeNs:J

.field private in:Ljava/io/InputStream;

.field private mCanReconn:Z

.field private mConnectTimeout:I

.field private mContext:Landroid/content/Context;

.field private mNetContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field private mReadTimeout:I

.field private mTunnelRequest:Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;

.field private out:Ljava/io/OutputStream;

.field private final route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

.field private socket:Ljava/net/Socket;

.field private spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->NPN_PROTOCOLS:[B

    .line 91
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->SPDY3:[B

    .line 92
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->HTTP_11:[B

    return-void

    .line 89
    nop

    :array_0
    .array-data 1
        0x6t
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
        0x8t
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data

    .line 91
    :array_1
    .array-data 1
        0x73t
        0x70t
        0x64t
        0x79t
        0x2ft
        0x33t
    .end array-data

    .line 92
    nop

    :array_2
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x2ft
        0x31t
        0x2et
        0x31t
    .end array-data
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Route;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->httpMinorVersion:I

    .line 109
    iput-boolean v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mCanReconn:Z

    .line 111
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mConnectTimeout:I

    .line 113
    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mReadTimeout:I

    .line 121
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    .line 122
    return-void
.end method

.method private createSocket()Ljava/net/Socket;
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-direct {v0, v1}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    .line 177
    :goto_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setKeepAlive(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    :goto_1
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private getStreamAndSpdyConnection()V
    .locals 5

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->streamWrapper()V

    .line 254
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getUriHost()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->connection(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->build()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->sendConnectionHeader()V

    .line 257
    return-void
.end method

.method private isSelectATls()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method private makeTunnel(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;)V
    .locals 7

    .prologue
    .line 537
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;->getRequestHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v3

    move-object v0, v3

    .line 539
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 540
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->fromBytes(Ljava/io/InputStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v2

    .line 542
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 557
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected response code for CONNECT: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 546
    :sswitch_0
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    .line 547
    new-instance v5, Ljava/net/URL;

    const-string/jumbo v0, "https"

    iget-object v1, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;->host:Ljava/lang/String;

    iget v4, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;->port:I

    const-string/jumbo v6, "/"

    invoke-direct {v5, v0, v1, v4, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    const/16 v1, 0x197

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator;->processAuthHeader(Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;ILcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/net/Proxy;Ljava/net/URL;)Z

    move-result v0

    .line 551
    if-nez v0, :cond_0

    .line 552
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Failed to authenticate with proxy"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :sswitch_1
    return-void

    :cond_0
    move-object v0, v3

    goto :goto_0

    .line 542
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private recordInParams(IILcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 1

    .prologue
    .line 192
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mConnectTimeout:I

    .line 193
    iput p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mReadTimeout:I

    .line 194
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mTunnelRequest:Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;

    .line 195
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mNetContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mCanReconn:Z

    .line 197
    return-void
.end method

.method private setSoTimeout(Ljava/net/Socket;I)V
    .locals 1

    .prologue
    .line 368
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    invoke-virtual {p1, p2}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private streamWrapper()V
    .locals 4

    .prologue
    const/16 v0, 0x2000

    const/16 v1, 0x400

    .line 565
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->getMtu(Ljava/net/Socket;)I

    move-result v2

    .line 566
    if-ge v2, v1, :cond_1

    .line 568
    :goto_0
    if-le v1, v0, :cond_0

    .line 570
    :goto_1
    new-instance v1, Ljava/io/BufferedInputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    .line 571
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/shared/io/ExtBufferedOutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/shared/io/ExtBufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    .line 572
    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private upgradeToTls(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 307
    const-string/jumbo v0, "ATLS_TEST_LOG"

    const-string/jumbo v1, "TLS HandShake!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v1

    .line 312
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->makeTunnel(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v3, v3, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v4, v4, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget v4, v4, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriPort:I

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 320
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-boolean v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->modernTls:Z

    if-eqz v2, :cond_2

    .line 321
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, "SSL modernTls"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->uriHost:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->enableTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;)V

    .line 328
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getHandshakTimeout()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setSoTimeout(Ljava/net/Socket;I)V

    .line 332
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "SSL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 334
    :try_start_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    invoke-direct {p0, v0, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setSoTimeout(Ljava/net/Socket;I)V

    .line 338
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "SSL_TIME"

    invoke-interface {v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 345
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    .line 346
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    .line 349
    sget-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getStreamAndSpdyConnection()V

    .line 364
    :cond_1
    return-void

    .line 324
    :cond_2
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, "SSL V3"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->supportTlsIntolerantServer(Ljavax/net/ssl/SSLSocket;)V

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v1

    invoke-direct {p0, v0, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setSoTimeout(Ljava/net/Socket;I)V

    throw v1
.end method

.method private upgradeToTlsSelector(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->upgradeToTls(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string/jumbo v1, "upgradeToAtls \u53d1\u751f\u5f02\u5e38,\u964d\u7ea7\u901a\u8fc7upgradeToTls\u5c1d\u8bd5\u63e1\u624b\u3002"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->logError4AtlsTest(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 236
    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 238
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 243
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getStreamAndSpdyConnection()V

    goto :goto_0
.end method

.method private whenATLSHandShakeFail(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 271
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isDowngradeTLS()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 275
    :cond_0
    const-string/jumbo v0, "Try downgrade to tls."

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 278
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 283
    :goto_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    .line 284
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mConnectTimeout:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mNetContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socketConnect(ILcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->upgradeToTls(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 292
    const/4 v0, 0x1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 287
    throw v0

    .line 293
    :catch_1
    move-exception v0

    .line 294
    const-string/jumbo v1, "ATLS_CORE_LOG"

    const-string/jumbo v2, "TLS HandShake Fail!"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    throw v0

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final close()V
    .locals 3

    .prologue
    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 394
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    if-eqz v0, :cond_0

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    .line 398
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;-><init>(ILcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 399
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    const-string/jumbo v1, "Connection. invoked close() "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 404
    :cond_1
    :goto_0
    return-void

    .line 401
    :catch_0
    move-exception v0

    .line 402
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final connect(IILcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 4

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    if-eqz v0, :cond_0

    .line 128
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;-><init>(ILcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->recordInParams(IILcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 137
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    .line 138
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    .line 143
    :try_start_0
    invoke-virtual {p0, p1, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socketConnect(ILcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->putSecureSeed([B)V

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setSoTimeout(Ljava/net/Socket;I)V

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    .line 155
    invoke-direct {p0, p3, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->upgradeToTlsSelector(Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 166
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable$ConnectionEvent;-><init>(ILcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionObservable;->notifyObservers(Ljava/lang/Object;)V

    .line 167
    return-void

    .line 145
    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->putSecureSeed([B)V

    throw v0
.end method

.method public final getHttpMinorVersion()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->httpMinorVersion:I

    return v0
.end method

.method public final getIdleStartTimeNs()J
    .locals 2

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->idleStartTimeNs:J

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->getIdleStartTimeNs()J

    move-result-wide v0

    goto :goto_0
.end method

.method public final getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    return-object v0
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    return-object v0
.end method

.method public final getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 584
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isAlive()Z
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isConnected()Z
    .locals 1

    .prologue
    .line 385
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    return v0
.end method

.method public final isExpired(J)Z
    .locals 4

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getIdleStartTimeNs()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isIdle()Z
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isReadable()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    move v0, v1

    .line 453
    :goto_0
    return v0

    .line 433
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isSpdy()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 434
    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    check-cast v0, Ljava/io/BufferedInputStream;

    .line 438
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getSoTimeout()I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 440
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 441
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 442
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->read()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    .line 443
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v2

    goto :goto_0

    .line 445
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->reset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 446
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v0, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 451
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0

    .line 453
    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public final isSpdy()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final newTransport(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyTransport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyTransport;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->in:Ljava/io/InputStream;

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final requiresTunnel()Z
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->address:Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final resetIdleStartTime()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->spdyConnection:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "spdyConnection != null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->idleStartTimeNs:J

    .line 462
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 575
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->mContext:Landroid/content/Context;

    .line 576
    return-void
.end method

.method public final setHttpMinorVersion(I)V
    .locals 0

    .prologue
    .line 513
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->httpMinorVersion:I

    .line 514
    return-void
.end method

.method public final socketConnect(ILcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 207
    const-string/jumbo v0, "ATLS SOCKET CONNECTION!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ATLS SOCKET IPCONNECTION,MODE2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "TCP_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->route:Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    iget-object v2, v2, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->inetSocketAddress:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, v1, v2, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V

    .line 215
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "TCP_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 217
    const-string/jumbo v0, "ATLS SOCKET CONNECTION OVER!"

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method public final updateReadTimeout(I)V
    .locals 2

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connected:Z

    if-nez v0, :cond_0

    .line 527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "updateReadTimeout - not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->socket:Ljava/net/Socket;

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setSoTimeout(Ljava/net/Socket;I)V

    .line 529
    return-void
.end method
