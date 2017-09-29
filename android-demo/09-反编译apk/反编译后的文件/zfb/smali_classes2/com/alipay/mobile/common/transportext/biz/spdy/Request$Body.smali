.class public abstract Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
.super Ljava/lang/Object;
.source "Request.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;Ljava/io/File;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
    .locals 2

    .prologue
    .line 150
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "contentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$2;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
    .locals 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 122
    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;->create(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;[B)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "; charset=utf-8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;->parse(Ljava/lang/String;)Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;

    move-result-object p0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static create(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;[B)Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body;
    .locals 2

    .prologue
    .line 130
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "contentType == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Request$Body$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;[B)V

    return-object v0
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .prologue
    .line 106
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public contentType()Lcom/alipay/mobile/common/transportext/biz/spdy/MediaType;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract writeTo(Ljava/io/OutputStream;)V
.end method
