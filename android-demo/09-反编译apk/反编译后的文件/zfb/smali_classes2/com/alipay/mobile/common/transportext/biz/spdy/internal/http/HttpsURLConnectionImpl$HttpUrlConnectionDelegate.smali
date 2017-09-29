.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;
.source "HttpsURLConnectionImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    .line 349
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;-><init>(Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$1;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;Ljava/net/URL;Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;)V

    return-void
.end method


# virtual methods
.method public final getHttpConnectionToCache()Ljava/net/HttpURLConnection;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    return-object v0
.end method

.method public final getSecureCacheResponse()Ljava/net/SecureCacheResponse;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    instance-of v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl$HttpUrlConnectionDelegate;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getCacheResponse()Ljava/net/CacheResponse;

    move-result-object v0

    check-cast v0, Ljava/net/SecureCacheResponse;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
