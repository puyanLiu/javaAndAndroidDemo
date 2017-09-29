.class public Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
.super Ljava/lang/Object;
.source "HttpEngine.java"


# static fields
.field private static final GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

.field public static final HTTP_CONTINUE:I = 0x64


# instance fields
.field private automaticallyReleaseConnectionToPool:Z

.field private cacheRequest:Ljava/net/CacheRequest;

.field private cacheResponse:Ljava/net/CacheResponse;

.field private cachedResponseBody:Ljava/io/InputStream;

.field private cachedResponseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

.field protected final client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

.field connected:Z

.field protected connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

.field private connectionReleased:Z

.field protected final method:Ljava/lang/String;

.field protected final policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

.field private requestBodyOut:Ljava/io/OutputStream;

.field final requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

.field private responseBodyIn:Ljava/io/InputStream;

.field responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

.field private responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

.field private responseTransferIn:Ljava/io/InputStream;

.field protected routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

.field sentRequestMillis:J

.field private transparentGzip:Z

.field private transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

.field final uri:Ljava/net/URI;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine$GatewayTimeoutResponse;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine$GatewayTimeoutResponse;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V
    .locals 3

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    .line 176
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 177
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    .line 178
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    .line 179
    iput-object p5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 180
    iput-object p6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    .line 183
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->get()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;

    move-result-object v0

    invoke-interface {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Platform;->toUriLenient(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v2, p4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    .line 189
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDefaultUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 760
    const-string/jumbo v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 761
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Java"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "java.version"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getDnsClient()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;
    .locals 2

    .prologue
    .line 447
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/http/DnsWrapper;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/DnsWrapper;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V

    return-object v0
.end method

.method public static getOriginAddress(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 765
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v1

    .line 766
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 767
    if-lez v1, :cond_0

    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getDefaultPort(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 768
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    :cond_0
    return-object v0
.end method

.method private initContentStream(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 616
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseTransferIn:Ljava/io/InputStream;

    .line 617
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transparentGzip:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isContentEncodingGzip()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->stripContentEncoding()V

    .line 626
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->stripContentLength()V

    .line 627
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    .line 631
    :goto_0
    return-void

    .line 629
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    goto :goto_0
.end method

.method private initResponseSource()V
    .locals 5

    .prologue
    .line 245
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

    move-result-object v0

    .line 250
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_0

    .line 258
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v1

    .line 259
    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    .line 260
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->acceptCacheResponseType(Ljava/net/CacheResponse;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-nez v2, :cond_3

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 266
    :cond_3
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v1

    .line 267
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v2, v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    iput-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    .line 268
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 269
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v3, v1, v2, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->chooseResponseSource(JLcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-ne v1, v2, :cond_4

    .line 271
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->setResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    goto :goto_0

    .line 273
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-ne v1, v2, :cond_5

    .line 274
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    goto :goto_0

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->NETWORK:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-ne v0, v1, :cond_6

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 278
    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private isConnected()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 391
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 395
    :cond_1
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 396
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 399
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private logLastInetAddress()V
    .locals 4

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 424
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    .line 425
    if-eqz v0, :cond_1

    .line 427
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "{operationType:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "InetAddress: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v0, "RouteSelector"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    goto :goto_0

    .line 434
    :cond_1
    const-string/jumbo v0, "RouteSelector"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "{operationType:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", InetAddress:null}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method private maybeCache()V
    .locals 4

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

    move-result-object v0

    .line 560
    if-eqz v0, :cond_0

    .line 563
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 566
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isCacheable(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 567
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;->maybeRemove(Ljava/lang/String;Ljava/net/URI;)V

    goto :goto_0

    .line 572
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    goto :goto_0
.end method

.method private prepareRawRequestHeaders()V
    .locals 5

    .prologue
    .line 667
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setUserAgent(Ljava/lang/String;)V

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getOriginAddress(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setHost(Ljava/lang/String;)V

    .line 682
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getHttpMinorVersion()I

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getConnection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 684
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "Keep-Alive"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setConnection(Ljava/lang/String;)V

    .line 687
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getAcceptEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 688
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transparentGzip:Z

    .line 689
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "gzip"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setAcceptEncoding(Ljava/lang/String;)V

    .line 692
    :cond_5
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getContentType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 693
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setContentType(Ljava/lang/String;)V

    .line 696
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getIfModifiedSince()J

    move-result-wide v0

    .line 697
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_7

    .line 698
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setIfModifiedSince(Ljava/util/Date;)V

    .line 701
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 702
    if-eqz v0, :cond_8

    .line 703
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->addCookies(Ljava/util/Map;)V

    .line 706
    :cond_8
    return-void
.end method

.method private recordIsProxy(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "PROXY"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :goto_0
    return-void

    .line 892
    :catch_0
    move-exception v0

    .line 893
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private recordProxyAndHost()V
    .locals 3

    .prologue
    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    .line 406
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    sget-object v2, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v1, v2, :cond_0

    .line 407
    const-string/jumbo v1, "T"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->recordIsProxy(Ljava/lang/String;)V

    .line 411
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->recordTargetHost(Ljava/net/InetSocketAddress;)V

    .line 415
    :goto_1
    return-void

    .line 409
    :cond_0
    const-string/jumbo v1, "F"

    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->recordIsProxy(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private recordTargetHost(Ljava/net/InetSocketAddress;)V
    .locals 4

    .prologue
    .line 899
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "TARGET_HOST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->putDataItem(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    :goto_0
    return-void

    .line 900
    :catch_0
    move-exception v0

    .line 901
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static requestPath(Ljava/net/URL;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 734
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    .line 735
    if-nez v0, :cond_1

    .line 736
    const-string/jumbo v0, "/"

    .line 740
    :cond_0
    :goto_0
    return-object v0

    .line 737
    :cond_1
    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private requestString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v0

    .line 721
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->includeAuthorityInRequestLine()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 722
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestPath(Ljava/net/URL;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private sendSocketRequest()V
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connect()V

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    if-eqz v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "\"transport != null\" is illegal state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 303
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->newTransport(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    .line 305
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasRequestBody()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->createRequestBody()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    .line 310
    :cond_2
    return-void
.end method

.method private sentTimeItemDot()V
    .locals 4

    .prologue
    .line 476
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "SENT_TIME"

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 486
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 488
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    .line 489
    if-eqz p2, :cond_1

    .line 490
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    .line 492
    :cond_1
    return-void
.end method


# virtual methods
.method protected acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 552
    const/4 v0, 0x1

    return v0
.end method

.method public final automaticallyReleaseConnectionToPool()V
    .locals 2

    .prologue
    .line 582
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connectionReleased:Z

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->recycle(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    .line 585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 587
    :cond_0
    return-void
.end method

.method protected final connect()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    if-nez v0, :cond_3

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Ljava/net/UnknownHostException;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 330
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    .line 335
    :goto_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URI;)I

    move-result v2

    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getAuthenticator()Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    move-result-object v5

    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v6

    iget-object v7, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getTransports()Ljava/util/List;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/Address;-><init>(Ljava/lang/String;ILjavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;Ljava/net/Proxy;Ljava/util/List;)V

    .line 338
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxySelector()Ljava/net/ProxySelector;

    move-result-object v4

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v5

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getDnsClient()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;

    move-result-object v6

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getRoutesDatabase()Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    move-result-object v7

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Address;Ljava/net/URI;Ljava/net/ProxySelector;Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Dns;Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    .line 354
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getClientLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->routeSelector:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RouteSelector;->next(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 357
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->logLastInetAddress()V

    .line 358
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->recordProxyAndHost()V

    .line 359
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "New connection object hashcode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 365
    const-string/jumbo v0, "MWALLET_SPDY_LOG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "New connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_4
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->setUseSpdyShortReadTimeout(Z)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->setContext(Landroid/content/Context;)V

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectTimeout()I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getReadTimeout()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getTunnelConfig()Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->connect(IILcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->maybeShare(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    .line 373
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getRoutesDatabase()Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;->connected(Lcom/alipay/mobile/common/transportext/biz/spdy/Route;)V

    .line 374
    const-string/jumbo v0, "ATLS_TEST_LOG"

    const-string/jumbo v1, "Spdy Connected"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getClientLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 383
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connected(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestLine()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->setRequestLine(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 376
    :cond_5
    :try_start_1
    const-string/jumbo v0, "ATLS_TEST_LOG"

    const-string/jumbo v1, "GET SpdyConnection."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->updateReadTimeout(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 380
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getClientLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_6
    move-object v3, v4

    goto/16 :goto_1
.end method

.method protected connected(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->setSelectedProxy(Ljava/net/Proxy;)V

    .line 456
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connected:Z

    .line 457
    return-void
.end method

.method public final getCacheResponse()Ljava/net/CacheResponse;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    return-object v0
.end method

.method public final getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    return-object v0
.end method

.method public getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;
    .locals 1

    .prologue
    .line 885
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    return-object v0
.end method

.method public final getRequestBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-nez v0, :cond_0

    .line 504
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    return-object v0
.end method

.method public final getRequestHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    return-object v0
.end method

.method getRequestLine()Ljava/lang/String;
    .locals 3

    .prologue
    .line 714
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getHttpMinorVersion()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "HTTP/1.1"

    .line 716
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 714
    :cond_1
    const-string/jumbo v0, "HTTP/1.0"

    goto :goto_0
.end method

.method public final getResponseBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    return-object v0
.end method

.method public final getResponseCode()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v0

    return v0
.end method

.method public final getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    return-object v0
.end method

.method protected getTunnelConfig()Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;
    .locals 1

    .prologue
    .line 854
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    return-object v0
.end method

.method hasRequestBody()Z
    .locals 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v1, "POST"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v1, "PUT"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v1, "PATCH"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method public final hasResponse()Z
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasResponseBody()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 638
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getResponseCode()I

    move-result v2

    .line 641
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->method:Ljava/lang/String;

    const-string/jumbo v4, "HEAD"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 658
    :cond_0
    :goto_0
    return v0

    .line 645
    :cond_1
    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_3

    :cond_2
    const/16 v3, 0xcc

    if-eq v2, v3, :cond_3

    const/16 v3, 0x130

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 648
    goto :goto_0

    .line 654
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getContentLength()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->isChunked()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    move v0, v1

    .line 655
    goto :goto_0
.end method

.method protected includeAuthorityInRequestLine()Z
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->usingProxy()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getRoute()Lcom/alipay/mobile/common/transportext/biz/spdy/Route;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Route;->getProxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final readResponse()V
    .locals 5

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 781
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->setResponseSource(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V

    .line 851
    :cond_0
    :goto_0
    return-void

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-nez v0, :cond_2

    .line 786
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "readResponse() without sendRequest()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "DATA_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 795
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 796
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->contentLength()I

    move-result v0

    .line 798
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->setContentLength(J)V

    .line 800
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->writeRequestHeaders()V

    .line 803
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    .line 804
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 805
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    instance-of v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    if-eqz v0, :cond_5

    .line 806
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->writeRequestBody(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V

    .line 810
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->flushRequest()V

    .line 813
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "SENT_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 816
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "WAIT_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemDot(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->readResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    .line 820
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getCurrentDataContainer()Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    move-result-object v0

    const-string/jumbo v1, "DATA_TIME"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->timeItemRelease(Ljava/lang/String;)V

    .line 822
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-wide v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->setLocalTimestamps(JJ)V

    .line 823
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->setResponseSource(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V

    .line 825
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-ne v0, v1, :cond_7

    .line 826
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->validate(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 827
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->release(Z)V

    .line 828
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->combine(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v0

    .line 829
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

    move-result-object v0

    .line 836
    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;->trackConditionalCacheHit()V

    .line 837
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getHttpConnectionToCache()Ljava/net/HttpURLConnection;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    .line 839
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0

    .line 842
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 846
    :cond_7
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->hasResponseBody()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 847
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->maybeCache()V

    .line 850
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheRequest:Ljava/net/CacheRequest;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->getTransferStream(Ljava/net/CacheRequest;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->initContentStream(Ljava/io/InputStream;)V

    goto/16 :goto_0
.end method

.method public receiveHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V
    .locals 3

    .prologue
    .line 858
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getCookieHandler()Ljava/net/CookieHandler;

    move-result-object v0

    .line 859
    if-eqz v0, :cond_0

    .line 860
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V

    .line 862
    :cond_0
    return-void
.end method

.method public final release(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 596
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    if-ne v0, v1, :cond_0

    .line 597
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseBodyIn:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 600
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connectionReleased:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_2

    .line 601
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connectionReleased:Z

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestBodyOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseTransferIn:Ljava/io/InputStream;

    invoke-interface {v0, p1, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Transport;->makeReusable(ZLjava/io/OutputStream;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 606
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 607
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 613
    :cond_2
    :goto_0
    return-void

    .line 608
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->automaticallyReleaseConnectionToPool:Z

    if-eqz v0, :cond_2

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->recycle(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    .line 610
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    goto :goto_0
.end method

.method public final sendRequest()V
    .locals 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->prepareRawRequestHeaders()V

    .line 210
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->initResponseSource()V

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getOkResponseCache()Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

    move-result-object v0

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getUseCaches()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;->trackResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V

    .line 221
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->isOnlyIfCached()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CONDITIONAL_CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    if-ne v0, v1, :cond_3

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cachedResponseBody:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 225
    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->CACHE:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    .line 226
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->GATEWAY_TIMEOUT_RESPONSE:Ljava/net/CacheResponse;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getHeaders()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->fromMultimap(Ljava/util/Map;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    .line 229
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->uri:Ljava/net/URI;

    invoke-direct {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->cacheResponse:Ljava/net/CacheResponse;

    invoke-virtual {v0}, Ljava/net/CacheResponse;->getBody()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->setResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;Ljava/io/InputStream;)V

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseSource:Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->requiresConnection()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 233
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sendSocketRequest()V

    goto :goto_0

    .line 234
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->client:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->getConnectionPool()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->recycle(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    goto :goto_0
.end method

.method public writingRequestHeaders()V
    .locals 4

    .prologue
    .line 464
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 465
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 467
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentRequestMillis:J

    .line 468
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->sentTimeItemDot()V

    .line 469
    return-void
.end method
