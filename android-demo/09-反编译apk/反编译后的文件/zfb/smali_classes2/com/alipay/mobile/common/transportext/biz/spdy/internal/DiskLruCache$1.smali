.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    monitor-enter v1

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    monitor-exit v1

    .line 165
    :goto_0
    return-object v3

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;->access$402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache;I)I

    .line 164
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
