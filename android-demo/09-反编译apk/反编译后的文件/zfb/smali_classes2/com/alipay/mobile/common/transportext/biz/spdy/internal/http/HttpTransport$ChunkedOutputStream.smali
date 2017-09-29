.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;
.source "HttpTransport.java"


# static fields
.field private static final CRLF:[B

.field private static final FINAL_CHUNK:[B

.field private static final HEX_DIGITS:[B


# instance fields
.field private final bufferedChunk:Ljava/io/ByteArrayOutputStream;

.field private final hex:[B

.field private final maxChunkLength:I

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    .line 272
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->HEX_DIGITS:[B

    .line 275
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->FINAL_CHUNK:[B

    return-void

    .line 271
    :array_0
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 272
    nop

    :array_1
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data

    .line 275
    :array_2
    .array-data 1
        0x30t
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method

.method private constructor <init>(Ljava/io/OutputStream;I)V
    .locals 2

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;-><init>()V

    .line 278
    const/16 v0, 0xa

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    .line 285
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 286
    const/4 v0, 0x1

    invoke-direct {p0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->dataLength(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    .line 287
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    .line 288
    return-void

    .line 278
    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0xdt
        0xat
    .end array-data
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;ILcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$1;)V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private dataLength(I)I
    .locals 2

    .prologue
    .line 296
    const/4 v1, 0x4

    .line 297
    add-int/lit8 v0, p1, -0x4

    :goto_0
    if-lez v0, :cond_0

    .line 298
    add-int/lit8 v1, v1, 0x1

    .line 297
    shr-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 300
    :cond_0
    sub-int v0, p1, v1

    return v0
.end method

.method private writeBufferedChunkToSocket()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 363
    if-gtz v0, :cond_0

    .line 371
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->writeHex(I)V

    .line 368
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0
.end method

.method private writeHex(I)V
    .locals 4

    .prologue
    .line 337
    const/16 v0, 0x8

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->HEX_DIGITS:[B

    and-int/lit8 v3, p1, 0xf

    aget-byte v2, v2, v3

    aput-byte v2, v1, v0

    .line 340
    ushr-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->hex:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 342
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 2

    .prologue
    .line 353
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 356
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z

    .line 357
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->FINAL_CHUNK:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 353
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized flush()V
    .locals 1

    .prologue
    .line 345
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 350
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 3

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->checkNotClosed()V

    .line 306
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 308
    :goto_0
    if-lez p3, :cond_3

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    if-ge p3, v0, :cond_2

    .line 313
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 315
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->bufferedChunk:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    if-ne v1, v2, :cond_1

    .line 317
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->writeBufferedChunkToSocket()V

    .line 327
    :cond_1
    :goto_1
    add-int/2addr p2, v0

    .line 328
    sub-int/2addr p3, v0

    .line 329
    goto :goto_0

    .line 321
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->maxChunkLength:I

    .line 322
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->writeHex(I)V

    .line 323
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 324
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->socketOut:Ljava/io/OutputStream;

    sget-object v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$ChunkedOutputStream;->CRLF:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 330
    :cond_3
    monitor-exit p0

    return-void
.end method
