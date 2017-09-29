.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private final body:Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

.field private final headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private final method:Ljava/lang/String;

.field private final tag:Ljava/lang/Object;

.field private final url:Ljava/net/URL;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->url:Ljava/net/URL;

    .line 45
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->method:Ljava/lang/String;

    .line 46
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

    .line 48
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->tag:Ljava/lang/Object;

    .line 49
    return-void

    :cond_0
    move-object v0, p0

    .line 48
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)V

    return-void
.end method


# virtual methods
.method public final body()Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

    return-object v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headerCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    return v0
.end method

.method public final headerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getFieldName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headerNames()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->names()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final headerValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->getValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final method()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final tag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method public final url()Ljava/net/URL;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->url:Ljava/net/URL;

    return-object v0
.end method

.method public final urlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;->url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
