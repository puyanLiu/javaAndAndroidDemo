.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;
.super Ljava/io/InputStream;
.source "SpdyStream.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final buffer:[B

.field private closed:Z

.field private finished:Z

.field private limit:I

.field private pos:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

.field private unacknowledgedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 378
    const-class v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V
    .locals 1

    .prologue
    .line 378
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 391
    const/high16 v0, 0x10000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 413
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->unacknowledgedBytes:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$1;)V
    .locals 0

    .prologue
    .line 378
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V

    return-void
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z

    return v0
.end method

.method static synthetic access$202(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;Z)Z
    .locals 0

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;)Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->closed:Z

    return v0
.end method

.method private checkNotClosed()V
    .locals 3

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 584
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 587
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "stream was reset:3 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 589
    :cond_1
    return-void
.end method

.method private waitUntilReadable()V
    .locals 10

    .prologue
    const-wide/32 v4, 0xf4240

    const-wide/16 v2, 0x0

    .line 488
    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 491
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    div-long v4, v0, v4

    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)J

    move-result-wide v0

    .line 495
    :goto_0
    :try_start_0
    iget v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    iget-boolean v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->closed:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v6

    if-nez v6, :cond_2

    .line 496
    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    .line 497
    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 508
    :catch_0
    move-exception v0

    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 498
    :cond_0
    cmp-long v6, v0, v2

    if-lez v6, :cond_1

    .line 499
    :try_start_1
    const-string/jumbo v6, "MWALLET_SPDY_LOG"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "START waitUntilReadable remaining="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v6, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 501
    const-string/jumbo v6, "MWALLET_SPDY_LOG"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "END waitUntilReadable remaining="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$900(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)J

    move-result-wide v0

    add-long/2addr v0, v4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    sub-long/2addr v0, v6

    goto :goto_0

    .line 504
    :cond_1
    new-instance v0, Ljava/net/SocketTimeoutException;

    invoke-direct {v0}, Ljava/net/SocketTimeoutException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 509
    :cond_2
    return-void

    :cond_3
    move-wide v0, v2

    move-wide v4, v2

    goto :goto_0
.end method


# virtual methods
.method public final available()I
    .locals 4

    .prologue
    .line 417
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 418
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->checkNotClosed()V

    .line 419
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 420
    const/4 v0, 0x0

    monitor-exit v1

    .line 424
    :goto_0
    return v0

    .line 421
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    if-le v0, v2, :cond_1

    .line 422
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    sub-int/2addr v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 424
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public final close()V
    .locals 2

    .prologue
    .line 575
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 576
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->closed:Z

    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 578
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V

    .line 580
    return-void

    .line 578
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final read()I
    .locals 1

    .prologue
    .line 431
    invoke-static {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readSingleByte(Ljava/io/InputStream;)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 6

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 436
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v2

    .line 437
    :try_start_0
    array-length v3, p1

    invoke-static {v3, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 438
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->waitUntilReadable()V

    .line 439
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->checkNotClosed()V

    .line 441
    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    if-ne v3, v0, :cond_0

    .line 442
    monitor-exit v2

    .line 478
    :goto_0
    return v0

    .line 448
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    if-gt v0, v3, :cond_5

    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    sub-int/2addr v0, v1

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 450
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 451
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 452
    add-int/lit8 v0, v0, 0x0

    .line 453
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    array-length v3, v3

    if-ne v1, v3, :cond_1

    .line 454
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 459
    :cond_1
    :goto_1
    if-ge v0, p3, :cond_2

    .line 460
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    sub-int/2addr v1, v3

    sub-int v3, p3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 461
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    add-int v5, p2, v0

    invoke-static {v3, v4, p1, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 463
    add-int/2addr v0, v1

    .line 467
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->unacknowledgedBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->unacknowledgedBytes:I

    .line 468
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->unacknowledgedBytes:I

    const v3, 0x8000

    if-lt v1, v3, :cond_3

    .line 469
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v1

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)I

    move-result v3

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->unacknowledgedBytes:I

    invoke-virtual {v1, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->writeWindowUpdateLater(II)V

    .line 470
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->unacknowledgedBytes:I

    .line 473
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    iget v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    if-ne v1, v3, :cond_4

    .line 474
    const/4 v1, -0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 475
    const/4 v1, 0x0

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    .line 478
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 479
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    move v0, v1

    goto :goto_1
.end method

.method final receive(Ljava/io/InputStream;I)V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 514
    sget-boolean v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 516
    :cond_0
    if-nez p2, :cond_1

    .line 570
    :goto_0
    return-void

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v3

    .line 526
    :try_start_0
    iget-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->finished:Z

    .line 527
    iget v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 528
    iget v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    .line 529
    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    .line 530
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    array-length v2, v2

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->available()I

    move-result v7

    sub-int/2addr v2, v7

    if-le p2, v2, :cond_2

    const/4 v2, 0x1

    .line 531
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    if-eqz v2, :cond_3

    .line 535
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 536
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->FLOW_CONTROL_ERROR:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->closeLater(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    goto :goto_0

    :cond_2
    move v2, v0

    .line 530
    goto :goto_1

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    .line 541
    :cond_3
    if-eqz v4, :cond_4

    .line 542
    int-to-long v0, p2

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    goto :goto_0

    .line 549
    :cond_4
    if-ge v5, v1, :cond_7

    .line 550
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 551
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    invoke-static {p1, v3, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readFully(Ljava/io/InputStream;[BII)V

    .line 552
    add-int/2addr v1, v2

    .line 553
    sub-int/2addr p2, v2

    .line 554
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_7

    .line 558
    :goto_2
    if-lez p2, :cond_5

    .line 559
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->buffer:[B

    invoke-static {p1, v1, v0, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->readFully(Ljava/io/InputStream;[BII)V

    .line 560
    add-int/2addr v0, p2

    .line 563
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    monitor-enter v1

    .line 565
    :try_start_1
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->limit:I

    .line 566
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_6

    .line 567
    iput v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->pos:I

    .line 568
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream$SpdyDataInputStream;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 570
    :cond_6
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_7
    move v0, v1

    goto :goto_2
.end method
