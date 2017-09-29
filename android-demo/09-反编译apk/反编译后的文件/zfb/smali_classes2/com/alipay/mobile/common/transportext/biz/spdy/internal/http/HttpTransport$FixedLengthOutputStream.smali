.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;
.super Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;
.source "HttpTransport.java"


# instance fields
.field private bytesRemaining:J

.field private final socketOut:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;J)V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/AbstractOutputStream;-><init>()V

    .line 232
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    .line 233
    iput-wide p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:J

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/OutputStream;JLcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$1;)V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;-><init>(Ljava/io/OutputStream;J)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 4

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_1

    .line 262
    :cond_0
    return-void

    .line 258
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    .line 259
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 260
    new-instance v0, Ljava/net/ProtocolException;

    sget-object v1, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->UNEXPECTED_END_STREAM:[Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final flush()V
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->closed:Z

    if-eqz v0, :cond_0

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method

.method public final write([BII)V
    .locals 6

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->checkNotClosed()V

    .line 238
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->checkOffsetAndCount(III)V

    .line 239
    int-to-long v0, p3

    iget-wide v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 240
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->BYTES_REMAIN_NO_EQ_COUNT:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    new-instance v1, Ljava/net/ProtocolException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->socketOut:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 244
    iget-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/http/HttpTransport$FixedLengthOutputStream;->bytesRemaining:J

    .line 245
    return-void
.end method
