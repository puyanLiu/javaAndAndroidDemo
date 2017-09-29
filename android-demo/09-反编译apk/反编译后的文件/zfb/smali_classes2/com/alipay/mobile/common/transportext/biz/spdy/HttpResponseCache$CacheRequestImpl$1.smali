.class Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;
.super Ljava/io/FilterOutputStream;
.source "HttpResponseCache.java"


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

.field final synthetic val$editor:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

.field final synthetic val$this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->val$this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->val$editor:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

    iget-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    monitor-enter v1

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    monitor-exit v1

    .line 376
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->access$702(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;Z)Z

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;->access$808(Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache;)I

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->val$editor:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Editor;->commit()V

    goto :goto_0

    .line 373
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public write([BII)V
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$CacheRequestImpl$1;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 382
    return-void
.end method
