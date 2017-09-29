.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;
.super Ljava/lang/Object;
.source "Spdy3.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;


# instance fields
.field private final client:Z

.field private final in:Ljava/io/DataInputStream;

.field private final nameValueBlockReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    .line 111
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->nameValueBlockReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    .line 112
    iput-boolean p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->client:Z

    .line 113
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 313
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readGoAway(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readGoAway:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 283
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    .line 284
    const-string/jumbo v0, "TYPE_GOAWAY length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 286
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 287
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->fromSpdyGoAway(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v2

    .line 288
    if-nez v2, :cond_1

    .line 289
    const-string/jumbo v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 291
    :cond_1
    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 292
    return-void
.end method

.method private readHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readHeaders:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 257
    const v2, 0x7fffffff

    and-int v3, v0, v2

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->nameValueBlockReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 259
    sget-object v7, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->SPDY_HEADERS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    move v2, v1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V

    .line 261
    return-void
.end method

.method private readPing(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 274
    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    .line 275
    const-string/jumbo v2, "TYPE_PING length: %d != 4"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 276
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 277
    iget-boolean v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->client:Z

    rem-int/lit8 v2, v3, 0x2

    if-ne v2, v0, :cond_1

    move v2, v0

    :goto_0
    if-ne v4, v2, :cond_2

    .line 278
    :goto_1
    invoke-interface {p1, v0, v3, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 279
    return-void

    :cond_1
    move v2, v1

    .line 277
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private readRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "readRstStream:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 243
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    .line 244
    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 246
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 247
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->fromSpdy3Rst(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v2

    .line 248
    if-nez v2, :cond_1

    .line 249
    const-string/jumbo v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 251
    :cond_1
    invoke-interface {p1, v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 252
    return-void
.end method

.method private readSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readSettings:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 297
    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_0

    .line 298
    const-string/jumbo v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 300
    :cond_0
    new-instance v4, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    invoke-direct {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;-><init>()V

    move v2, v1

    .line 301
    :goto_0
    if-ge v2, v3, :cond_1

    .line 302
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 303
    iget-object v6, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    .line 304
    const/high16 v7, -0x1000000

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    .line 305
    const v8, 0xffffff

    and-int/2addr v5, v8

    .line 306
    invoke-virtual {v4, v5, v7, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->set(III)V

    .line 301
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 308
    :cond_1
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_2

    .line 309
    :goto_1
    invoke-interface {p1, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->settings(ZLcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 310
    return-void

    :cond_2
    move v0, v1

    .line 308
    goto :goto_1
.end method

.method private readSynReply(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "readSynReply:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 233
    const v2, 0x7fffffff

    and-int v3, v0, v2

    .line 234
    invoke-interface {p1, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->preReadSynReplyHeaders(I)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->nameValueBlockReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    add-int/lit8 v2, p3, -0x4

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 236
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 237
    :goto_0
    sget-object v7, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->SPDY_REPLY:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V

    .line 239
    return-void

    :cond_0
    move v2, v1

    .line 236
    goto :goto_0
.end method

.method private readSynStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 8

    .prologue
    const v6, 0x7fffffff

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "readSynStream:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 216
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 217
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    .line 218
    and-int v3, v2, v6

    .line 219
    and-int/2addr v4, v6

    .line 220
    const v2, 0xe000

    and-int/2addr v2, v5

    ushr-int/lit8 v5, v2, 0xd

    .line 222
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->nameValueBlockReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    add-int/lit8 v6, p3, -0xa

    invoke-virtual {v2, v6}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;->readNameValueBlock(I)Ljava/util/List;

    move-result-object v6

    .line 224
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_0

    move v2, v1

    .line 225
    :goto_0
    and-int/lit8 v7, p2, 0x2

    if-eqz v7, :cond_1

    .line 226
    :goto_1
    sget-object v7, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->SPDY_SYN_STREAM:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V

    .line 228
    return-void

    :cond_0
    move v2, v0

    .line 224
    goto :goto_0

    :cond_1
    move v1, v0

    .line 225
    goto :goto_1
.end method

.method private readWindowUpdate(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V
    .locals 4

    .prologue
    const v2, 0x7fffffff

    const/4 v3, 0x0

    .line 264
    const/16 v0, 0x8

    if-eq p3, v0, :cond_0

    .line 265
    const-string/jumbo v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 268
    and-int/2addr v0, v2

    .line 269
    and-int/2addr v1, v2

    .line 270
    invoke-interface {p1, v0, v1, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->windowUpdate(IIZ)V

    .line 271
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->nameValueBlockReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/NameValueBlockReader;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->closeAll(Ljava/io/Closeable;Ljava/io/Closeable;)V

    .line 319
    return-void
.end method

.method public final nextFrame(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 135
    const/high16 v0, -0x80000000

    and-int/2addr v0, v3

    if-eqz v0, :cond_1

    move v0, v1

    .line 136
    :goto_0
    const/high16 v5, -0x1000000

    and-int/2addr v5, v4

    ushr-int/lit8 v5, v5, 0x18

    .line 137
    const v6, 0xffffff

    and-int/2addr v4, v6

    .line 139
    if-eqz v0, :cond_4

    .line 140
    const/high16 v0, 0x7fff0000

    and-int/2addr v0, v3

    ushr-int/lit8 v0, v0, 0x10

    .line 141
    const v6, 0xffff

    and-int/2addr v3, v6

    .line 143
    const/4 v6, 0x6

    if-eq v3, v6, :cond_0

    .line 144
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3;->notifyNetworkActive(I)V

    .line 147
    :cond_0
    const/4 v6, 0x3

    if-eq v0, v6, :cond_2

    .line 148
    sget-object v3, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->SPDY_VERSION_ERROR:[Ljava/lang/String;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/mwallet/ErrorMsgHelper;->getMessage([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 149
    new-instance v4, Ljava/net/ProtocolException;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 128
    :catch_0
    move-exception v0

    .line 129
    const-string/jumbo v1, "MWALLET_SPDY_LOG"

    const-string/jumbo v3, "Spdy3#Reader#nextFrame Exception."

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v1, v2

    .line 209
    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 135
    goto :goto_0

    .line 152
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 200
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unexpected frame"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :sswitch_0
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readSynStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 158
    :sswitch_1
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readSynReply(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 162
    :sswitch_2
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 166
    :sswitch_3
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 170
    :sswitch_4
    if-eqz v4, :cond_3

    .line 171
    const-string/jumbo v0, "TYPE_NOOP length: %d != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 172
    :cond_3
    invoke-interface {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->noop()V

    goto :goto_1

    .line 176
    :sswitch_5
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readPing(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 180
    :sswitch_6
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readGoAway(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 184
    :sswitch_7
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 188
    :sswitch_8
    invoke-direct {p0, p1, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->readWindowUpdate(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;II)V

    goto :goto_1

    .line 192
    :sswitch_9
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    int-to-long v1, v4

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    .line 193
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :sswitch_a
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-interface {p1, v0, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->tcpData(Ljava/io/InputStream;I)V

    goto :goto_1

    .line 203
    :cond_4
    const v0, 0x7fffffff

    and-int/2addr v3, v0

    .line 204
    and-int/lit8 v0, v5, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    .line 205
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "readData:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/transportext/util/InnerLogUtil;->log4AtlsTest(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3$Reader;->in:Ljava/io/DataInputStream;

    invoke-interface {p1, v0, v3, v5, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->data(ZILjava/io/InputStream;I)V

    .line 208
    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Spdy3;->notifyNetworkActive(I)V

    goto :goto_1

    :cond_5
    move v0, v2

    .line 204
    goto :goto_2

    .line 152
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x6 -> :sswitch_5
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_8
        0x10 -> :sswitch_9
        0x64 -> :sswitch_a
    .end sparse-switch
.end method

.method public final readConnectionHeader()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method
