.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine$GatewayTimeoutResponse;
.super Ljava/net/CacheResponse;
.source "HttpEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 866
    invoke-direct {p0}, Ljava/net/CacheResponse;-><init>()V

    .line 868
    return-void
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 880
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->EMPTY_BYTE_ARRAY:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
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
    .line 873
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 874
    const/4 v1, 0x0

    const-string/jumbo v2, "HTTP/1.1 504 Gateway Timeout"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    return-object v0
.end method
