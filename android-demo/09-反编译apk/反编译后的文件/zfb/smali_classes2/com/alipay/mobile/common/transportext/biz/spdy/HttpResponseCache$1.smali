.class Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;
.super Ljava/lang/Object;
.source "HttpResponseCache.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
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
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;

    move-result-object v0

    return-object v0
.end method

.method public maybeRemove(Ljava/lang/String;Ljava/net/URI;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Ljava/lang/String;Ljava/net/URI;)Z

    .line 130
    return-void
.end method

.method public put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    return-object v0
.end method

.method public trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)V

    .line 139
    return-void
.end method

.method public trackResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V

    .line 143
    return-void
.end method

.method public update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-static {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    .line 135
    return-void
.end method
