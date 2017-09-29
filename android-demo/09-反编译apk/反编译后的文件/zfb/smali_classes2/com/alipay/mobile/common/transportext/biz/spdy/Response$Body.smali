.class public abstract Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;
.super Ljava/lang/Object;
.source "Response.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract byteStream()Ljava/io/InputStream;
.end method

.method public bytes()[B
    .locals 5

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;->contentLength()J

    move-result-wide v0

    .line 126
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 127
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Cannot buffer entire body for content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 130
    :cond_0
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 131
    long-to-int v0, v0

    new-array v0, v0, [B

    .line 132
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    .line 133
    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readFully(Ljava/io/InputStream;[B)V

    .line 134
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Content-Length and stream length disagree"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 140
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public charStream()Ljava/io/Reader;
    .locals 3

    .prologue
    .line 150
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public contentLength()J
    .locals 2

    .prologue
    .line 119
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 3

    .prologue
    .line 159
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Body;->bytes()[B

    move-result-object v1

    const-string/jumbo v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
