.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;
.source "RetryableOutputStream.java"


# instance fields
.field private final content:Ljava/io/ByteArrayOutputStream;

.field private final limit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;-><init>()V

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    .line 45
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;-><init>()V

    .line 39
    iput p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    .line 41
    return-void
.end method


# virtual methods
.method public final declared-synchronized close()V
    .locals 5

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->closed:Z

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    if-ge v0, v1, :cond_0

    .line 54
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->CONTENT_LENGTH_NO_EQ_LIMIT:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    new-instance v1, Ljava/net/ProtocolException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized contentLength()I
    .locals 1

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->close()V

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized write([BII)V
    .locals 5

    .prologue
    .line 61
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->checkNotClosed()V

    .line 62
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 63
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    sub-int/2addr v1, p3

    if-le v0, v1, :cond_0

    .line 64
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->EXCEEDED_CONTENT_LENGTH_LIMIT:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    new-instance v1, Ljava/net/ProtocolException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->limit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 67
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    monitor-exit p0

    return-void
.end method

.method public final writeToSocket(Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/RetryableOutputStream;->content:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 77
    return-void
.end method
