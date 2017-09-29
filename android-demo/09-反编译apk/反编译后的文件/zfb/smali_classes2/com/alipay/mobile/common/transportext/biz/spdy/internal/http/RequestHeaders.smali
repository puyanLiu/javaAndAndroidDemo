.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;
.super Ljava/lang/Object;
.source "RequestHeaders.java"


# instance fields
.field private acceptEncoding:Ljava/lang/String;

.field private connection:Ljava/lang/String;

.field private contentLength:J

.field private contentType:Ljava/lang/String;

.field private hasAuthorization:Z

.field private final headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private host:Ljava/lang/String;

.field private ifModifiedSince:Ljava/lang/String;

.field private ifNoneMatch:Ljava/lang/String;

.field private maxAgeSeconds:I

.field private maxStaleSeconds:I

.field private minFreshSeconds:I

.field private noCache:Z

.field private onlyIfCached:Z

.field private proxyAuthorization:Ljava/lang/String;

.field private transferEncoding:Ljava/lang/String;

.field private final uri:Ljava/net/URI;

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v0, -0x1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->maxAgeSeconds:I

    .line 35
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->maxStaleSeconds:I

    .line 36
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->minFreshSeconds:I

    .line 54
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->uri:Ljava/net/URI;

    .line 67
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 69
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)V

    .line 86
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v2

    if-ge v0, v2, :cond_d

    .line 87
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    const-string/jumbo v4, "Cache-Control"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    invoke-static {v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->parseCacheControl(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser$CacheControlHandler;)V

    .line 86
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_1
    const-string/jumbo v4, "Pragma"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    const-string/jumbo v2, "no-cache"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    iput-boolean v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->noCache:Z

    goto :goto_1

    .line 95
    :cond_2
    const-string/jumbo v4, "If-None-Match"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    goto :goto_1

    .line 97
    :cond_3
    const-string/jumbo v4, "If-Modified-Since"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 98
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    goto :goto_1

    .line 99
    :cond_4
    const-string/jumbo v4, "Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 100
    iput-boolean v8, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->hasAuthorization:Z

    goto :goto_1

    .line 101
    :cond_5
    const-string/jumbo v4, "Content-Length"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 103
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 105
    :catch_0
    move-exception v2

    goto :goto_1

    .line 106
    :cond_6
    const-string/jumbo v4, "Transfer-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 107
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    goto :goto_1

    .line 108
    :cond_7
    const-string/jumbo v4, "User-Agent"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "MWALLET_SPDY_LOG"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u521d\u59cbhttpEngine,\u8bbe\u7f6eUA\uff1a"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_8
    const-string/jumbo v4, "Host"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 112
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->host:Ljava/lang/String;

    goto/16 :goto_1

    .line 113
    :cond_9
    const-string/jumbo v4, "Connection"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 114
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    goto/16 :goto_1

    .line 115
    :cond_a
    const-string/jumbo v4, "Accept-Encoding"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 116
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    goto/16 :goto_1

    .line 117
    :cond_b
    const-string/jumbo v4, "Content-Type"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 118
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    goto/16 :goto_1

    .line 119
    :cond_c
    const-string/jumbo v4, "Proxy-Authorization"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    iput-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    goto/16 :goto_1

    .line 123
    :cond_d
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->noCache:Z

    return p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->maxAgeSeconds:I

    return p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->maxStaleSeconds:I

    return p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;I)I
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->minFreshSeconds:I

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;Z)Z
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->onlyIfCached:Z

    return p1
.end method

.method private buildCookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 315
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    :goto_0
    return-object v0

    .line 316
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v0

    .line 317
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 318
    if-lez v1, :cond_1

    .line 319
    const-string/jumbo v0, "; "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 322
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final addCookies(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 300
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    const-string/jumbo v2, "Cookie"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "Cookie2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->buildCookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_2
    return-void
.end method

.method public final getAcceptEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getConnection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    return-object v0
.end method

.method public final getContentLength()J
    .locals 2

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J

    return-wide v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfModifiedSince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    return-object v0
.end method

.method public final getIfNoneMatch()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxAgeSeconds()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->maxAgeSeconds:I

    return v0
.end method

.method public final getMaxStaleSeconds()I
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->maxStaleSeconds:I

    return v0
.end method

.method public final getMinFreshSeconds()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->minFreshSeconds:I

    return v0
.end method

.method public final getProxyAuthorization()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->proxyAuthorization:Ljava/lang/String;

    return-object v0
.end method

.method public final getTransferEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Ljava/net/URI;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public final hasAuthorization()Z
    .locals 1

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->hasAuthorization:Z

    return v0
.end method

.method public final hasConditions()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasConnectionClose()Z
    .locals 2

    .prologue
    .line 130
    const-string/jumbo v0, "close"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isChunked()Z
    .locals 2

    .prologue
    .line 126
    const-string/jumbo v0, "chunked"

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isNoCache()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->noCache:Z

    return v0
.end method

.method public final isOnlyIfCached()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->onlyIfCached:Z

    return v0
.end method

.method public final removeContentLength()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 227
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 229
    iput-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J

    .line 231
    :cond_0
    return-void
.end method

.method public final setAcceptEncoding(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->acceptEncoding:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public final setChunked()V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Transfer-Encoding"

    const-string/jumbo v2, "chunked"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "chunked"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->transferEncoding:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public final setConnection(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Connection"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Connection"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->connection:Ljava/lang/String;

    .line 255
    return-void
.end method

.method public final setContentLength(J)V
    .locals 4

    .prologue
    .line 214
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Length"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iput-wide p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentLength:J

    .line 219
    return-void
.end method

.method public final setContentType(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->contentType:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public final setHost(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->host:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "Host"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->host:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public final setIfModifiedSince(Ljava/util/Date;)V
    .locals 3

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "If-Modified-Since"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 277
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpDate;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v2, "If-Modified-Since"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifModifiedSince:Ljava/lang/String;

    .line 280
    return-void
.end method

.method public final setIfNoneMatch(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "If-None-Match"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->ifNoneMatch:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->userAgent:Ljava/lang/String;

    .line 239
    return-void
.end method
