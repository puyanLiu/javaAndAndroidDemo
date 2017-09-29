.class final Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$2;
.super Ljava/io/FilterInputStream;
.source "HttpResponseCache.java"


# instance fields
.field final synthetic val$snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;)V
    .locals 0

    .prologue
    .line 621
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$2;->val$snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 623
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/HttpResponseCache$2;->val$snapshot:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/DiskLruCache$Snapshot;->close()V

    .line 624
    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    .line 625
    return-void
.end method
