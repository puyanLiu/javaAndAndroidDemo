.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/OkResponseCacheAdapter;
.super Ljava/lang/Object;
.source "OkResponseCacheAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;


# instance fields
.field private final responseCache:Ljava/net/ResponseCache;


# direct methods
.method public constructor <init>(Ljava/net/ResponseCache;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/OkResponseCacheAdapter;->responseCache:Ljava/net/ResponseCache;

    .line 30
    return-void
.end method


# virtual methods
.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URI;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/net/CacheResponse;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/OkResponseCacheAdapter;->responseCache:Ljava/net/ResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Ljava/net/ResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public final maybeRemove(Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/OkResponseCacheAdapter;->responseCache:Ljava/net/ResponseCache;

    invoke-virtual {v0, p1, p2}, Ljava/net/ResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public final trackConditionalCacheHit()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method public final trackResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 46
    return-void
.end method
