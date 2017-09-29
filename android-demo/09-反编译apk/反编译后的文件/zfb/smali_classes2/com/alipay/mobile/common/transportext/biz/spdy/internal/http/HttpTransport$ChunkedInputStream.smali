.class Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/AbstractHttpInputStream;
.source "HttpTransport.java"


# static fields
.field private static final NO_CHUNK_YET:I = -0x1


# instance fields
.field private bytesRemainingInChunk:I

.field private hasMoreChunks:Z

.field private final transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/net/CacheRequest;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;)V
    .locals 1

    .prologue
    .line 431
    invoke-static {p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/AbstractHttpInputStream;-><init>(Ljava/io/InputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/net/CacheRequest;)V

    .line 426
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->hasMoreChunks:Z

    .line 432
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;

    .line 433
    return-void
.end method

.method private readChunkSize()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 460
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    if-eq v0, v2, :cond_0

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readAsciiLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 464
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 465
    if-eq v1, v2, :cond_1

    .line 466
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 469
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    if-nez v0, :cond_2

    .line 475
    iput-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->hasMoreChunks:Z

    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->responseHeaders:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/ResponseHeaders;->getHeaders()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;

    move-result-object v0

    .line 477
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->transport:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;->readHeaders(Ljava/io/InputStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    .line 478
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;->receiveHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RawHeaders;)V

    .line 479
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->endOfInput()V

    .line 481
    :cond_2
    return-void

    .line 471
    :catch_0
    move-exception v1

    new-instance v1, Ljava/net/ProtocolException;

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->CHUNK_SIZE_IS_NOT_NUM:[Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->checkNotClosed()V

    .line 485
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 486
    :cond_0
    const/4 v0, 0x0

    .line 488
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 499
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->httpEngine:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;

    invoke-static {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpEngine;Ljava/io/InputStream;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->unexpectedEndOfInput()V

    .line 498
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->closed:Z

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 436
    array-length v1, p1

    invoke-static {v1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 437
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->checkNotClosed()V

    .line 439
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->hasMoreChunks:Z

    if-nez v1, :cond_1

    .line 455
    :cond_0
    :goto_0
    return v0

    .line 442
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    if-ne v1, v0, :cond_3

    .line 443
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->readChunkSize()V

    .line 444
    iget-boolean v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->hasMoreChunks:Z

    if-eqz v1, :cond_0

    .line 448
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->in:Ljava/io/InputStream;

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 449
    if-ne v1, v0, :cond_4

    .line 450
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->unexpectedEndOfInput()V

    .line 451
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 453
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->bytesRemainingInChunk:I

    .line 454
    invoke-virtual {p0, p1, p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedInputStream;->cacheWrite([BII)V

    move v0, v1

    .line 455
    goto :goto_0
.end method
