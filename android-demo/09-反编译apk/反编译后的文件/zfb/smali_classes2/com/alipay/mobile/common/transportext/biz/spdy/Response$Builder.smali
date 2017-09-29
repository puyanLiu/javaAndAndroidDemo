.class public Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;
.super Ljava/lang/Object;
.source "Response.java"


# instance fields
.field private body:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

.field private final code:I

.field private final headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private redirectedBy:Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

.field private final request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;I)V
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 176
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "request == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_0
    if-gtz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "code <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    .line 179
    iput p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->code:I

    .line 180
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)I
    .locals 1

    .prologue
    .line 168
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->code:I

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->redirectedBy:Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object p0
.end method

.method public body(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;

    .line 202
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/common/transportext/biz/spdy/Response;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Response has no request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->code:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Response has no code."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 213
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$1;)V

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object p0
.end method

.method public redirectedBy(Lcom/alipay/mobile/common/transportext/biz/spdy/Response;)Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Builder;->redirectedBy:Lcom/alipay/mobile/common/transportext/biz/spdy/Response;

    .line 207
    return-object p0
.end method
