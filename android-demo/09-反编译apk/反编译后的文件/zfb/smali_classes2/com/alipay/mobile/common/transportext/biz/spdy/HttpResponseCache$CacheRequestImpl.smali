.class final Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;
.super Ljava/net/CacheRequest;
.source "HttpResponseCache.java"


# instance fields
.field private body:Ljava/io/OutputStream;

.field private cacheOut:Ljava/io/OutputStream;

.field private done:Z

.field private final editor:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V
    .locals 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 363
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->editor:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    .line 364
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    .line 365
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    .line 384
    return-void
.end method

.method static synthetic access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;)Z
    .locals 1

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;Z)Z
    .locals 0

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public final abort()V
    .locals 2

    .prologue
    .line 387
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    monitor-enter v1

    .line 388
    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_0

    .line 389
    monitor-exit v1

    .line 399
    :goto_0
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->done:Z

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$908(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)I

    .line 393
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->editor:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    goto :goto_0

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getBody()Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    return-object v0
.end method
