.class public Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private body:Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

.field private final headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

.field private method:Ljava/lang/String;

.field private tag:Ljava/lang/Object;

.field private url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 189
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->url(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    const-string/jumbo v0, "GET"

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method:Ljava/lang/String;

    .line 184
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    .line 193
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->url(Ljava/net/URL;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;

    .line 194
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->tag:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    return-object p0
.end method

.method public build()Lcom/alipay/mobile/common/transportext/biz/spdy/Request;
    .locals 2

    .prologue
    .line 275
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$1;)V

    return-object v0
.end method

.method public get()Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 2

    .prologue
    .line 240
    const-string/jumbo v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 2

    .prologue
    .line 244
    const-string/jumbo v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-object p0
.end method

.method public method(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 2

    .prologue
    .line 256
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 257
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "method == null || method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_1
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method:Ljava/lang/String;

    .line 260
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->body:Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;

    .line 261
    return-object p0
.end method

.method public post(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 1

    .prologue
    .line 248
    const-string/jumbo v0, "POST"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 1

    .prologue
    .line 252
    const-string/jumbo v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->method(Ljava/lang/String;Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->headers:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->removeAll(Ljava/lang/String;)V

    .line 236
    return-object p0
.end method

.method public tag(Ljava/lang/Object;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->tag:Ljava/lang/Object;

    .line 271
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 3

    .prologue
    .line 198
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->url:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    return-object p0

    .line 201
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Malformed URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url(Ljava/net/URL;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;
    .locals 2

    .prologue
    .line 206
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Builder;->url:Ljava/net/URL;

    .line 208
    return-object p0
.end method
