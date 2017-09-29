.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
.source "HttpsEngine.java"


# instance fields
.field private sslSocket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct/range {p0 .. p6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    .line 44
    return-void
.end method


# virtual methods
.method protected final acceptCacheResponseType(Ljava/net/CacheResponse;)Z
    .locals 1

    .prologue
    .line 54
    instance-of v0, p1, Ljava/net/SecureCacheResponse;

    return v0
.end method

.method protected final connected(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->connected(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)V

    .line 50
    return-void
.end method

.method public final getSslSocket()Ljavax/net/ssl/SSLSocket;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->sslSocket:Ljavax/net/ssl/SSLSocket;

    return-object v0
.end method

.method protected final getTunnelConfig()Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;
    .locals 5

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 70
    if-nez v0, :cond_0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->getDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->policy:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;

    invoke-interface {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/Policy;->getURL()Ljava/net/URL;

    move-result-object v1

    .line 75
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->getEffectivePort(Ljava/net/URL;)I

    move-result v1

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;->requestHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-virtual {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getProxyAuthorization()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/TunnelRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method protected final includeAuthorityInRequestLine()Z
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method
