.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/AbstractHttpInputStream;
.source "HttpTransport.java"


# instance fields
.field private bytesRemaining:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;I)V
    .locals 1

    .prologue
    .line 380
    invoke-direct {p0, p1, p3, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 381
    iput p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    .line 382
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput()V

    .line 385
    :cond_0
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    .line 408
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 415
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 418
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->closed:Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 388
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 389
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->checkNotClosed()V

    .line 390
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v1, :cond_0

    .line 403
    :goto_0
    return v0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 394
    if-ne v1, v0, :cond_1

    .line 395
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->unexpectedEndOfInput()V

    .line 396
    new-instance v0, Ljava/net/ProtocolException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->UNEXPECTED_END_STREAM:[Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 398
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    .line 399
    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->cacheWrite([BII)V

    .line 400
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->bytesRemaining:I

    if-nez v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthInputStream;->endOfInput()V

    :cond_2
    move v0, v1

    .line 403
    goto :goto_0
.end method
