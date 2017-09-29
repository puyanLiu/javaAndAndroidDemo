.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;


# static fields
.field private static final DEFAULT_TRANSPORTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

.field private clientLock:Ljava/util/concurrent/locks/Lock;

.field private connectTimeout:I

.field private connectionPool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

.field private context:Landroid/content/Context;

.field private cookieHandler:Ljava/net/CookieHandler;

.field private final dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

.field private followProtocolRedirects:Z

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mRequestRetryHandler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;

.field private mStreamReadTimeout:I

.field private netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

.field private proxy:Ljava/net/Proxy;

.field private proxySelector:Ljava/net/ProxySelector;

.field private readTimeout:I

.field private responseCache:Ljava/net/ResponseCache;

.field private final routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private transports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "spdy/3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "http/1.1"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->DEFAULT_TRANSPORTS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->followProtocolRedirects:Z

    .line 62
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    .line 63
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    .line 64
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->clientLock:Ljava/util/concurrent/locks/Lock;

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->followProtocolRedirects:Z

    .line 69
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    .line 70
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    .line 71
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->clientLock:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->clientLock:Ljava/util/concurrent/locks/Lock;

    .line 72
    iget-object v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->context:Landroid/content/Context;

    .line 73
    return-void
.end method

.method private copyWithDefaults()Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 2

    .prologue
    .line 402
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    :goto_0
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    :goto_1
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 405
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    :goto_2
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 406
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    :goto_3
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    .line 408
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    :goto_4
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    :goto_5
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    :goto_6
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectionPool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectionPool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    :goto_7
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectionPool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    .line 417
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->followProtocolRedirects:Z

    iput-boolean v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->followProtocolRedirects:Z

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->transports:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->transports:Ljava/util/List;

    :goto_8
    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->transports:Ljava/util/List;

    .line 419
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectTimeout:I

    iput v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectTimeout:I

    .line 420
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->readTimeout:I

    iput v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->readTimeout:I

    .line 421
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mStreamReadTimeout:I

    iput v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mStreamReadTimeout:I

    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mRequestRetryHandler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setRequestRetryHandler(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;)V

    .line 423
    return-object v1

    .line 403
    :cond_0
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0

    .line 404
    :cond_1
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    goto :goto_1

    .line 405
    :cond_2
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v0

    goto :goto_2

    .line 406
    :cond_3
    invoke-static {}, Ljava/net/ResponseCache;->getDefault()Ljava/net/ResponseCache;

    move-result-object v0

    goto :goto_3

    .line 408
    :cond_4
    invoke-static {}, Ljavax/net/ssl/HttpsURLConnection;->getDefaultSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_4

    .line 411
    :cond_5
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/tls/OkHostnameVerifier;

    goto :goto_5

    .line 413
    :cond_6
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpAuthenticator;->SYSTEM_DEFAULT:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    goto :goto_6

    .line 415
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;->getDefault()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    move-result-object v0

    goto :goto_7

    .line 418
    :cond_8
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->DEFAULT_TRANSPORTS:Ljava/util/List;

    goto :goto_8
.end method


# virtual methods
.method public final cancel(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->cancel(Ljava/lang/Object;)V

    .line 378
    return-void
.end method

.method public final createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1

    .prologue
    .line 437
    const-string/jumbo v0, "http"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "https"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 438
    const/4 v0, 0x0

    .line 440
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final enqueue(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->dispatcher:Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->url()Ljava/net/URL;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher;->enqueue(Ljava/net/HttpURLConnection;Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;)V

    .line 368
    return-void
.end method

.method public final getAuthenticator()Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    return-object v0
.end method

.method public final getClientLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->clientLock:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public final getConnectTimeout()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public final getConnectionPool()Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectionPool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method public final getCookieHandler()Ljava/net/CookieHandler;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    return-object v0
.end method

.method public final getFollowProtocolRedirects()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->followProtocolRedirects:Z

    return v0
.end method

.method public final getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public final getNetContext()Lcom/alipay/mobile/common/transport/context/TransportContext;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    return-object v0
.end method

.method public final getOkResponseCache()Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    instance-of v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    check-cast v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->okResponseCache:Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

    .line 226
    :goto_0
    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    if-eqz v0, :cond_1

    .line 224
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/OkResponseCacheAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/OkResponseCacheAdapter;-><init>(Ljava/net/ResponseCache;)V

    goto :goto_0

    .line 226
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getProxy()Ljava/net/Proxy;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public final getProxySelector()Ljava/net/ProxySelector;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public final getReadTimeout()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public final getRequestRetryHandler()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mRequestRetryHandler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;

    return-object v0
.end method

.method public final getResponseCache()Ljava/net/ResponseCache;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    return-object v0
.end method

.method public final getRoutesDatabase()Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->routeDatabase:Lcom/alipay/mobile/common/transportext/biz/spdy/RouteDatabase;

    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public final getStreamReadTimeout()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mStreamReadTimeout:I

    return v0
.end method

.method public final getTransports()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->transports:Ljava/util/List;

    return-object v0
.end method

.method public final open(Ljava/net/URL;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    invoke-virtual {p0, p1, v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->open(Ljava/net/URL;Ljava/net/Proxy;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method final open(Ljava/net/URL;Ljava/net/Proxy;Lcom/alipay/mobile/common/transport/context/TransportContext;)Ljava/net/HttpURLConnection;
    .locals 4

    .prologue
    .line 385
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->copyWithDefaults()Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-result-object v1

    .line 387
    iput-object p2, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 388
    iput-object p3, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 390
    const-string/jumbo v2, "http"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V

    .line 393
    :goto_0
    return-object v0

    .line 392
    :cond_0
    const-string/jumbo v2, "https"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 393
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V

    goto :goto_0

    .line 394
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Unexpected protocol: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final setAuthenticator(Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->authenticator:Lcom/alipay/mobile/common/transportext/biz/spdy/OkAuthenticator;

    .line 270
    return-object p0
.end method

.method public final setClientLock(Ljava/util/concurrent/locks/Lock;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->clientLock:Ljava/util/concurrent/locks/Lock;

    .line 81
    return-void
.end method

.method public final setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 89
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    if-nez p3, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 96
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectTimeout:I

    .line 100
    return-void
.end method

.method public final setConnectionPool(Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->connectionPool:Lcom/alipay/mobile/common/transportext/biz/spdy/ConnectionPool;

    .line 285
    return-object p0
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 474
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->context:Landroid/content/Context;

    .line 475
    return-void
.end method

.method public final setCookieHandler(Ljava/net/CookieHandler;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->cookieHandler:Ljava/net/CookieHandler;

    .line 198
    return-object p0
.end method

.method public final setFollowProtocolRedirects(Z)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 300
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->followProtocolRedirects:Z

    .line 301
    return-object p0
.end method

.method public final setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 254
    return-object p0
.end method

.method public final setNetContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->netContext:Lcom/alipay/mobile/common/transport/context/TransportContext;

    .line 479
    return-void
.end method

.method public final setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 164
    return-object p0
.end method

.method public final setProxySelector(Ljava/net/ProxySelector;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 182
    return-object p0
.end method

.method public final setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 114
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    if-nez p3, :cond_1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 121
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->readTimeout:I

    .line 125
    return-void
.end method

.method public final setRequestRetryHandler(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;)V
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mRequestRetryHandler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/SpdyRequestRetryHandler;

    .line 491
    return-void
.end method

.method public final setResponseCache(Ljava/net/ResponseCache;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->responseCache:Ljava/net/ResponseCache;

    .line 213
    return-object p0
.end method

.method public final setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 0

    .prologue
    .line 237
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 238
    return-object p0
.end method

.method public final setStreamReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 4

    .prologue
    .line 133
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    if-nez p3, :cond_1

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unit == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 140
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Timeout too large."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_2
    long-to-int v0, v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->mStreamReadTimeout:I

    .line 144
    return-void
.end method

.method public final setTransports(Ljava/util/List;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;"
        }
    .end annotation

    .prologue
    .line 340
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 341
    const-string/jumbo v1, "http/1.1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "transports doesn\'t contain http/1.1: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 344
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 345
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transports must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1
    const-string/jumbo v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "transports contains an empty string"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_2
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->transports:Ljava/util/List;

    .line 351
    return-object p0
.end method
