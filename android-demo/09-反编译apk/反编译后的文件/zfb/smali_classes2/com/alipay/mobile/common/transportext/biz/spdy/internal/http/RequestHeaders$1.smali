.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;
.super Ljava/lang/Object;
.source "RequestHeaders.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser$CacheControlHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 72
    const-string/jumbo v0, "no-cache"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->access$002(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;Z)Z

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string/jumbo v0, "max-age"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->access$102(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;I)I

    goto :goto_0

    .line 76
    :cond_2
    const-string/jumbo v0, "max-stale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->access$202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;I)I

    goto :goto_0

    .line 78
    :cond_3
    const-string/jumbo v0, "min-fresh"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-static {p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->access$302(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;I)I

    goto :goto_0

    .line 80
    :cond_4
    const-string/jumbo v0, "only-if-cached"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders$1;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;->access$402(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RequestHeaders;Z)Z

    goto :goto_0
.end method
