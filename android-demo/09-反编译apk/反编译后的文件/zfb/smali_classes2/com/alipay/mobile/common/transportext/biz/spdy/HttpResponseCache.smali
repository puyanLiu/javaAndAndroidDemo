.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;
.super Ljava/net/ResponseCache;
.source "HttpResponseCache.java"


# static fields
.field private static final ENTRY_BODY:I = 0x1

.field private static final ENTRY_COUNT:I = 0x2

.field private static final ENTRY_METADATA:I = 0x0

.field private static final VERSION:I = 0x31191


# instance fields
.field private final cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

.field private hitCount:I

.field private networkCount:I

.field final okResponseCache:Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

.field private requestCount:I

.field private writeAbortCount:I

.field private writeSuccessCount:I


# direct methods
.method public constructor <init>(Ljava/io/File;J)V
    .locals 2

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/net/ResponseCache;-><init>()V

    .line 118
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->okResponseCache:Lcom/alipay/mobile/common/transportext/biz/spdy/OkResponseCache;

    .line 147
    const v0, 0x31191

    const/4 v1, 0x2

    invoke-static {p1, v0, v1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->open(Ljava/io/File;IIJ)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    .line 148
    return-void
.end method

.method private abortQuietly(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V
    .locals 1

    .prologue
    .line 268
    if-eqz p1, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Ljava/lang/String;Ljava/net/URI;)Z
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->maybeRemove(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 96
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->newBodyInputStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->trackConditionalCacheHit()V

    return-void
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->trackResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V

    return-void
.end method

.method static synthetic access$808(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->writeSuccessCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->writeSuccessCount:I

    return v0
.end method

.method static synthetic access$908(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)I
    .locals 2

    .prologue
    .line 96
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->writeAbortCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->writeAbortCount:I

    return v0
.end method

.method private getHttpEngine(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;
    .locals 1

    .prologue
    .line 276
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;

    if-eqz v0, :cond_0

    .line 277
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    .line 281
    :goto_0
    return-object v0

    .line 278
    :cond_0
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    if-eqz v0, :cond_1

    .line 279
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpsURLConnectionImpl;->getHttpEngine()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    goto :goto_0

    .line 281
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private maybeRemove(Ljava/lang/String;Ljava/net/URI;)Z
    .locals 2

    .prologue
    .line 230
    const-string/jumbo v0, "POST"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "PUT"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "DELETE"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->remove(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    const/4 v0, 0x1

    .line 239
    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static newBodyInputStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 621
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$2;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$2;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)V

    return-object v0
.end method

.method private declared-synchronized trackConditionalCacheHit()V
    .locals 1

    .prologue
    .line 341
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 341
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized trackResponse(Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;)V
    .locals 2

    .prologue
    .line 327
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->requestCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->requestCount:I

    .line 329
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$3;->$SwitchMap$com$alipay$mobile$common$transportext$biz$spdy$ResponseSource:[I

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/ResponseSource;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    :pswitch_0
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->hitCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 335
    :pswitch_1
    :try_start_2
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->networkCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->networkCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private update(Ljava/net/CacheResponse;Ljava/net/HttpURLConnection;)V
    .locals 3

    .prologue
    .line 244
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->getHttpEngine(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getUri()Ljava/net/URI;

    move-result-object v1

    .line 246
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v2

    .line 247
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    .line 249
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-direct {v2, v1, v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 250
    instance-of v0, p1, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;->access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    move-result-object v0

    .line 253
    :goto_0
    const/4 v1, 0x0

    .line 255
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;->edit()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    if-eqz v0, :cond_0

    .line 257
    :try_start_1
    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->writeTo(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V

    .line 258
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->commit()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 263
    :cond_0
    :goto_1
    return-void

    .line 250
    :cond_1
    check-cast p1, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;->access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    move-result-object v0

    goto :goto_0

    .line 261
    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->abortQuietly(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private uriToKey(Ljava/net/URI;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->close()V

    .line 316
    return-void
.end method

.method public final delete()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->delete()V

    .line 292
    return-void
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->flush()V

    .line 312
    return-void
.end method

.method public final get(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Ljava/net/CacheResponse;
    .locals 4
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
    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v1

    .line 160
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->get(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    move-result-object v1

    .line 161
    if-nez v1, :cond_0

    .line 175
    :goto_0
    return-object v0

    .line 164
    :cond_0
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    invoke-virtual {v2, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->matches(Ljava/net/URI;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;->close()V

    goto :goto_0

    .line 175
    :cond_1
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntrySecureCacheResponse;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$EntryCacheResponse;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)V

    goto :goto_0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->getDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized getHitCount()I
    .locals 1

    .prologue
    .line 349
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->hitCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getMaxSize()J
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->getMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized getNetworkCount()I
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getRequestCount()I
    .locals 1

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->requestCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSize()J
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->size()J

    move-result-wide v0

    return-wide v0
.end method

.method public final declared-synchronized getWriteAbortCount()I
    .locals 1

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->writeAbortCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getWriteSuccessCount()I
    .locals 1

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->writeSuccessCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final isClosed()Z
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->isClosed()Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/net/URI;Ljava/net/URLConnection;)Ljava/net/CacheRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 180
    instance-of v1, p2, Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-object v0

    .line 184
    :cond_1
    check-cast p2, Ljava/net/HttpURLConnection;

    .line 185
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->maybeRemove(Ljava/lang/String;Ljava/net/URI;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 190
    const-string/jumbo v2, "GET"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->getHttpEngine(Ljava/net/URLConnection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v1

    .line 198
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getResponseHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    move-result-object v2

    .line 204
    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->hasVaryAll()Z

    move-result v3

    if-nez v3, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->getRequestHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v1

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getVaryFields()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getAll(Ljava/util/Set;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v1

    .line 210
    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;

    invoke-direct {v3, p1, v1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;-><init>(Ljava/net/URI;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;Ljava/net/HttpURLConnection;)V

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->cache:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->uriToKey(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->edit(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 214
    if-eqz v2, :cond_0

    .line 217
    :try_start_1
    invoke-virtual {v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$Entry;->writeTo(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V

    .line 218
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->abortQuietly(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_1
.end method
