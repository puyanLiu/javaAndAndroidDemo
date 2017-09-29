.class Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;
.super Ljava/net/CacheResponse;
.source "HttpResponseCache.java"


# instance fields
.field private final entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

.field private final in:Ljava/io/InputStream;

.field private final snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)V
    .locals 1

    .prologue
    .line 634
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 635
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    .line 636
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    .line 637
    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->in:Ljava/io/InputStream;

    .line 638
    return-void
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 641
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->entry:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->toMultimap(Z)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
