.class Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;
.source "Dispatcher.java"


# instance fields
.field private final connection:Ljava/net/HttpURLConnection;

.field private final in:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;->connection:Ljava/net/HttpURLConnection;

    .line 66
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;->in:Ljava/io/InputStream;

    .line 67
    return-void
.end method


# virtual methods
.method public byteStream()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Dispatcher$RealResponseBody;->connection:Ljava/net/HttpURLConnection;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
