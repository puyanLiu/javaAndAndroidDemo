.class public final Lcom/alipay/mobile/common/transportext/biz/spdy/Response;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private final body:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

.field private final code:I

.field private final headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private final redirectedBy:Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

.field private final request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    .line 44
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->code:I

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 46
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

    .line 47
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->redirectedBy:Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$1;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)V

    return-void
.end method


# virtual methods
.method public final body()Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

    return-object v0
.end method

.method public final code()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->code:I

    return v0
.end method

.method public final header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final header(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    return-object p2
.end method

.method public final headerCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->length()I

    move-result v0

    return v0
.end method

.method public final headerName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

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
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->names()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final headerValue(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

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
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final redirectedBy()Lcom/alipay/mobile/common/transportext/biz/spdy/Response;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->redirectedBy:Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    return-object v0
.end method

.method public final request()Lcom/alipay/mobile/common/transportext/biz/spdy/Request;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    return-object v0
.end method
