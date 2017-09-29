.class public Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;
.super Ljava/lang/Object;
.source "AndroidSpdyHttpClient.java"

# interfaces
.implements Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;


# static fields
.field private static mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;


# instance fields
.field private executedPreConnect:Z

.field private mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

.field private mContext:Landroid/content/Context;

.field private mTrustAllSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final params:Lorg/apache/http/params/HttpParams;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->executedPreConnect:Z

    .line 89
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$SpdyHttpParams;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$SpdyHttpParams;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->params:Lorg/apache/http/params/HttpParams;

    .line 102
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/AlipayOkHttpClientConfig;->isNotUseNpn:Z

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    .line 104
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setContext(Landroid/content/Context;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/http/ZSpdyRequestRetryHandler;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/ZSpdyRequestRetryHandler;-><init>()V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setRequestRetryHandler(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;)V

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->putSecureSeed([B)V

    .line 111
    :try_start_0
    const-string/jumbo v0, "http.keepAliveDuration"

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->CONN_KEEP_ALIVE_DURATION:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getStringValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    return-object v0
.end method

.method private add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V
    .locals 2

    .prologue
    .line 460
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    invoke-interface {p1}, Lorg/apache/http/HeaderIterator;->nextHeader()Lorg/apache/http/Header;

    move-result-object v0

    .line 463
    :try_start_0
    invoke-interface {p2, v0, p3}, Lorg/apache/http/cookie/CookieSpec;->parse(Lorg/apache/http/Header;Lorg/apache/http/cookie/CookieOrigin;)Ljava/util/List;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/cookie/Cookie;
    :try_end_0
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_0 .. :try_end_0} :catch_1

    .line 466
    :try_start_1
    invoke-interface {p2, v0, p3}, Lorg/apache/http/cookie/CookieSpec;->validate(Lorg/apache/http/cookie/Cookie;Lorg/apache/http/cookie/CookieOrigin;)V

    .line 467
    invoke-interface {p4, v0}, Lorg/apache/http/client/CookieStore;->addCookie(Lorg/apache/http/cookie/Cookie;)V
    :try_end_1
    .catch Lorg/apache/http/cookie/MalformedCookieException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 470
    :catch_0
    move-exception v0

    goto :goto_1

    .line 474
    :cond_1
    return-void

    .line 473
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private addRequestProperties(Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 301
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 302
    invoke-interface {v4}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v5, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getHttpEntity(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 306
    if-nez v0, :cond_1

    .line 333
    :goto_1
    return-void

    .line 311
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentType()Lorg/apache/http/Header;

    move-result-object v2

    .line 312
    if-eqz v2, :cond_2

    .line 313
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_2
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v2

    .line 317
    if-eqz v2, :cond_3

    .line 318
    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->isChunked()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    .line 322
    :cond_4
    invoke-virtual {p2, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_1

    .line 323
    :cond_5
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v1

    const-wide/16 v3, 0x2000

    cmp-long v1, v1, v3

    if-gtz v1, :cond_6

    .line 328
    const-string/jumbo v1, "Content-Length"

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_1
.end method

.method private getHttpEntity(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpEntity;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 337
    instance-of v1, p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-nez v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-object v0

    .line 342
    :cond_1
    check-cast p1, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-interface {p1}, Lorg/apache/http/HttpEntityEnclosingRequest;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 343
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 346
    goto :goto_0
.end method

.method private getRequestURI(Lorg/apache/http/HttpRequest;)Ljava/net/URI;
    .locals 4

    .prologue
    .line 506
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v0, :cond_0

    .line 508
    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v0

    .line 517
    :goto_0
    return-object v0

    .line 511
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    .line 513
    new-instance v1, Lorg/apache/http/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid request URI: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/http/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private declared-synchronized getTrustAllSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    .prologue
    .line 402
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mTrustAllSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getTrustAllSslSocketFactory(Landroid/content/Context;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mTrustAllSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 404
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getTrustAllSslSocketFactory  New SslSocketFactory=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mTrustAllSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mTrustAllSslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 402
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static declared-synchronized newInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;
    .locals 3

    .prologue
    .line 124
    const-class v1, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :goto_0
    monitor-exit v1

    return-object v0

    .line 128
    :cond_0
    :try_start_1
    const-class v2, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    .line 132
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    :try_start_3
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private obatinBasicHttpResponse(Ljava/net/HttpURLConnection;)Lorg/apache/http/message/BasicHttpResponse;
    .locals 6

    .prologue
    .line 263
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 264
    new-instance v2, Lorg/apache/http/message/BasicHttpResponse;

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lorg/apache/http/message/BasicHttpResponse;-><init>(Lorg/apache/http/ProtocolVersion;ILjava/lang/String;)V

    .line 267
    const/16 v0, 0x190

    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 271
    :goto_0
    const/16 v3, 0x130

    if-ne v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    if-eqz v1, :cond_5

    .line 274
    :cond_0
    new-instance v1, Lorg/apache/http/entity/InputStreamEntity;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {v1, v0, v3, v4}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    .line 278
    const/4 v0, 0x0

    .line 279
    :goto_1
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v3

    .line 280
    if-eqz v3, :cond_4

    .line 281
    new-instance v4, Lorg/apache/http/message/BasicHeader;

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v4}, Lorg/apache/http/message/BasicHttpResponse;->addHeader(Lorg/apache/http/Header;)V

    .line 285
    const-string/jumbo v5, "Content-Type"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 278
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 267
    :cond_1
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 287
    :cond_2
    const-string/jumbo v5, "Content-Encoding"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 288
    invoke-virtual {v1, v4}, Lorg/apache/http/entity/InputStreamEntity;->setContentEncoding(Lorg/apache/http/Header;)V

    goto :goto_2

    .line 289
    :cond_3
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    goto :goto_2

    .line 294
    :cond_4
    invoke-virtual {v2, v1}, Lorg/apache/http/message/BasicHttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 296
    :cond_5
    return-object v2
.end method

.method private postRequestBody(Lorg/apache/http/HttpRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;)V
    .locals 6

    .prologue
    .line 361
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getHttpEntity(Lorg/apache/http/HttpRequest;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 362
    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "REQ_SIZE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 374
    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private setRequestMethod(Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V
    .locals 1

    .prologue
    .line 389
    instance-of v0, p1, Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    .line 390
    check-cast p1, Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {p1}, Lorg/apache/http/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-interface {p1}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setStreamReadTimeout(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 4

    .prologue
    .line 229
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->isUseSpdyShortReadTimeout()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isSupportRetryRpc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getSpdyShortTimeout()I

    move-result v0

    .line 237
    :goto_0
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setStreamReadTimeout("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setStreamReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 240
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getReadTimeout(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private setUseCaches2False(Ljava/net/HttpURLConnection;)V
    .locals 4

    .prologue
    .line 666
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getUseCaches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setUseCaches2False exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public asynPreConnect(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 2

    .prologue
    .line 526
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->executedPreConnect:Z

    if-eqz v0, :cond_0

    .line 534
    :goto_0
    return-void

    .line 529
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->executedPreConnect:Z

    .line 530
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$ConnectionRunnable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient$ConnectionRunnable;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public connect()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 543
    :try_start_0
    new-instance v2, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    .line 544
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    iput-object v1, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->context:Landroid/content/Context;

    .line 546
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkUtils;->getSpdyLongLinkOperType()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 548
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->configInit(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 550
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    if-nez v1, :cond_0

    .line 551
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v2, " Current can\'t use spdy.  because by spdy swtich closed!."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    :goto_0
    return v0

    .line 555
    :cond_0
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    const-string/jumbo v3, "spdy"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 556
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v2, " Current can\'t use spdy.  because by protocol not equals spdy."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 594
    :catch_0
    move-exception v1

    .line 595
    const-string/jumbo v2, "MWALLET_SPDY_LOG"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 560
    :cond_1
    :try_start_1
    iget-object v1, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-boolean v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    if-nez v1, :cond_2

    .line 561
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v2, " Current can\'t use spdy."

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 566
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string/jumbo v3, "http.route.default-proxy"

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 570
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getClient()Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConnTimeout(Landroid/content/Context;)I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 574
    new-instance v1, Ljava/net/URL;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getSpdyUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->openConnection(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 578
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->setUseCaches2False(Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 582
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 583
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, " Spdy Connect success. "

    invoke-static {v1, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 584
    :try_start_3
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    .line 585
    :catch_1
    move-exception v1

    .line 586
    :try_start_4
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v3

    .line 587
    if-eqz v3, :cond_3

    .line 588
    const-string/jumbo v4, "ERROR"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Spdy connect fail. "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_3
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 592
    :catchall_0
    move-exception v1

    :try_start_5
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method public execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;
    .locals 7

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    :try_start_0
    const-string/jumbo v0, "NET_CONTEXT"

    invoke-interface {p3, v0}, Lorg/apache/http/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/context/TransportContext;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :try_start_1
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SPDY(ATLS) RPC REQUEST START!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getNetType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/shared/atls/algorithm/SecretKeyFactory;->putSecureSeed([B)V

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->getConnTimeout(Landroid/content/Context;)I

    move-result v1

    int-to-long v1, v1

    .line 168
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getClient()Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v1, v2, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 172
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string/jumbo v2, "http.route.default-proxy"

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->getProxyOfEnhanced(Landroid/content/Context;)Lorg/apache/http/HttpHost;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 174
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->setStreamReadTimeout(Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 177
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->callUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->openConnection(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 179
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->setUseCaches2False(Ljava/net/HttpURLConnection;)V

    .line 181
    invoke-direct {p0, p2, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->setRequestMethod(Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 183
    invoke-direct {p0, p2, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->addRequestProperties(Lorg/apache/http/HttpRequest;Ljava/net/HttpURLConnection;)V

    .line 186
    invoke-direct {p0, p2, v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->postRequestBody(Lorg/apache/http/HttpRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;Ljava/net/HttpURLConnection;)V

    .line 188
    invoke-direct {p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->obatinBasicHttpResponse(Ljava/net/HttpURLConnection;)Lorg/apache/http/message/BasicHttpResponse;

    move-result-object v1

    .line 190
    invoke-virtual {p0, p1, p2, v1, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->extractCookiesFromResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V

    .line 192
    const-string/jumbo v3, "MWALLET_SPDY_LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SPDY(ATLS)\u7ed3\u679c\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 220
    :goto_0
    return-object v0

    .line 196
    :catch_0
    move-exception v0

    .line 198
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v2, "AndroidSpdyHttpClient. isNetworkAvailable == false "

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    throw v0

    .line 204
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseAmnet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    throw v0

    .line 209
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->getInstance()Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/strategy/NetworkTunnelStrategy;->isCanUseSpdy()Z

    move-result v2

    if-nez v2, :cond_2

    .line 210
    throw v0

    .line 213
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/TransportStrategy;->isSupportRetryRpc(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 215
    const-string/jumbo v2, "spdyRetring"

    invoke-interface {p3, v2}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    if-nez v2, :cond_3

    .line 217
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v2, "RETRY"

    const-string/jumbo v3, "T"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "spdy full retry. api=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "spdyRetring"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p3, v0, v1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->execute(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v1

    const-string/jumbo v2, "ERROR"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    throw v0

    .line 196
    :catch_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto/16 :goto_1
.end method

.method public extractCookiesFromResponse(Lorg/apache/http/HttpHost;Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6

    .prologue
    .line 422
    const-string/jumbo v0, "http.cookie-store"

    invoke-interface {p4, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/client/CookieStore;

    .line 425
    if-nez v0, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 430
    :cond_1
    new-instance v1, Lorg/apache/http/cookie/CookieOrigin;

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v3

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->getRequestURI(Lorg/apache/http/HttpRequest;)Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/http/cookie/CookieOrigin;-><init>(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 433
    const-string/jumbo v2, "Set-Cookie"

    invoke-interface {p3, v2}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 436
    new-instance v3, Lorg/apache/http/impl/cookie/BestMatchSpec;

    invoke-direct {v3}, Lorg/apache/http/impl/cookie/BestMatchSpec;-><init>()V

    .line 439
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    .line 442
    invoke-interface {v3}, Lorg/apache/http/cookie/CookieSpec;->getVersion()I

    move-result v2

    if-lez v2, :cond_0

    .line 445
    const-string/jumbo v2, "Set-Cookie2"

    invoke-interface {p3, v2}, Lorg/apache/http/HttpResponse;->headerIterator(Ljava/lang/String;)Lorg/apache/http/HeaderIterator;

    move-result-object v2

    .line 446
    invoke-direct {p0, v2, v3, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->add2CookieStore(Lorg/apache/http/HeaderIterator;Lorg/apache/http/cookie/CookieSpec;Lorg/apache/http/cookie/CookieOrigin;Lorg/apache/http/client/CookieStore;)V

    goto :goto_0
.end method

.method public getClient()Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    return-object v0
.end method

.method public getModuleCategory()I
    .locals 1

    .prologue
    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method public getParams()Lorg/apache/http/params/HttpParams;
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->params:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method public isExecutedPreConnect()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->executedPreConnect:Z

    return v0
.end method

.method public openConnection(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->mClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->open(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method
