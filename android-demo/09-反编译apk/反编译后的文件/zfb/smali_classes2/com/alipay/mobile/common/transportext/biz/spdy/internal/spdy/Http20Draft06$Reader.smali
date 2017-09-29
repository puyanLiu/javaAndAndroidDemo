.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;
.super Ljava/lang/Object;
.source "Http20Draft06.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;


# instance fields
.field private final client:Z

.field private final hpackReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;

.field private final in:Ljava/io/DataInputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    .line 73
    iput-boolean p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->client:Z

    .line 74
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-direct {v0, v1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;-><init>(Ljava/io/DataInputStream;Z)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->hpackReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;

    .line 75
    return-void
.end method

.method private static varargs ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 279
    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readData(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 2

    .prologue
    .line 189
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 190
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-interface {p1, v0, p4, v1, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->data(ZILjava/io/InputStream;I)V

    .line 191
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private readGoAway(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 254
    const/16 v0, 0x8

    if-ge p3, v0, :cond_0

    .line 255
    const-string/jumbo v0, "TYPE_GOAWAY length < 8: %s"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 257
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 258
    add-int/lit8 v2, p3, -0x8

    .line 259
    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v3

    .line 260
    if-nez v3, :cond_1

    .line 261
    const-string/jumbo v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v4

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    int-to-long v4, v2

    invoke-static {v1, v4, v5}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/Util;->skipByReading(Ljava/io/InputStream;J)J

    move-result-wide v4

    int-to-long v1, v2

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    .line 264
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "TYPE_GOAWAY opaque data was truncated"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_2
    invoke-interface {p1, v0, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->goAway(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 267
    return-void
.end method

.method private readHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v1, 0x0

    .line 148
    if-nez p4, :cond_0

    .line 149
    const-string/jumbo v0, "TYPE_HEADERS streamId == 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 151
    :cond_0
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_2

    move v0, v3

    :goto_0
    move v2, v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->hpackReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;

    invoke-virtual {v0, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->readHeaders(I)V

    .line 156
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_3

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->hpackReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->emitReferenceSet()V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->hpackReader:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Hpack$Reader;->getAndReset()Ljava/util/List;

    move-result-object v6

    .line 159
    sget-object v7, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;->HTTP_20_HEADERS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;

    move-object v0, p1

    move v3, p4

    move v5, v4

    invoke-interface/range {v0 .. v7}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->headers(ZZIIILjava/util/List;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/HeadersMode;)V

    .line 162
    return-void

    :cond_2
    move v0, v1

    .line 151
    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 167
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 169
    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    shr-int/lit8 p3, v2, 0x10

    .line 170
    const v2, 0xff00

    and-int/2addr v2, v0

    shr-int/lit8 v6, v2, 0x8

    .line 171
    and-int/lit16 p2, v0, 0xff

    .line 174
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4

    move v2, v3

    .line 177
    :goto_1
    const v0, 0x7fffffff

    and-int/2addr v0, v5

    .line 179
    const/16 v5, 0xa

    if-eq v6, v5, :cond_5

    .line 180
    const-string/jumbo v0, "TYPE_CONTINUATION didn\'t have FLAG_END_HEADERS"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_4
    move v2, v1

    .line 174
    goto :goto_1

    .line 182
    :cond_5
    if-eq v0, p4, :cond_1

    .line 183
    const-string/jumbo v0, "TYPE_CONTINUATION streamId changed"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readPing(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 242
    const/16 v2, 0x8

    if-eq p3, v2, :cond_0

    .line 243
    const-string/jumbo v2, "TYPE_PING length != 8: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 244
    :cond_0
    if-eqz p4, :cond_1

    .line 245
    const-string/jumbo v0, "TYPE_PING streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 246
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 247
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 248
    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_2

    .line 249
    :goto_0
    invoke-interface {p1, v0, v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->ping(ZII)V

    .line 250
    return-void

    :cond_2
    move v0, v1

    .line 248
    goto :goto_0
.end method

.method private readPriority(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 195
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 196
    const-string/jumbo v0, "TYPE_PRIORITY length: %d != 4"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 197
    :cond_0
    if-nez p4, :cond_1

    .line 198
    const-string/jumbo v0, "TYPE_PRIORITY streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 201
    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 202
    invoke-interface {p1, p4, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->priority(II)V

    .line 203
    return-void
.end method

.method private readPushPromise(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method private readRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 207
    const/4 v0, 0x4

    if-eq p3, v0, :cond_0

    .line 208
    const-string/jumbo v0, "TYPE_RST_STREAM length: %d != 4"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 209
    :cond_0
    if-nez p4, :cond_1

    .line 210
    const-string/jumbo v0, "TYPE_RST_STREAM streamId == 0"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 212
    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->fromHttp2(I)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    move-result-object v1

    .line 213
    if-nez v1, :cond_2

    .line 214
    const-string/jumbo v1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 216
    :cond_2
    invoke-interface {p1, p4, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->rstStream(ILcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 217
    return-void
.end method

.method private readSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 221
    rem-int/lit8 v0, p3, 0x8

    if-eqz v0, :cond_0

    .line 222
    const-string/jumbo v0, "TYPE_SETTINGS length %% 8 != 0: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 223
    :cond_0
    if-eqz p4, :cond_1

    .line 224
    const-string/jumbo v0, "TYPE_SETTINGS streamId != 0"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 225
    :cond_1
    new-instance v2, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;-><init>()V

    move v0, v1

    .line 226
    :goto_0
    if-ge v0, p3, :cond_2

    .line 227
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 228
    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 230
    const v5, 0xffffff

    and-int/2addr v3, v5

    .line 231
    invoke-virtual {v2, v3, v1, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;->set(III)V

    .line 226
    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 233
    :cond_2
    invoke-interface {p1, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->settings(ZLcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Settings;)V

    .line 234
    return-void
.end method

.method private readWindowUpdate(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 273
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    .line 274
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 275
    :goto_0
    invoke-interface {p1, p4, v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;->windowUpdate(IIZ)V

    .line 276
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final close()V
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 285
    return-void
.end method

.method public final nextFrame(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 99
    const/high16 v3, -0x10000

    and-int/2addr v3, v1

    shr-int/lit8 v3, v3, 0x10

    .line 100
    const v4, 0xff00

    and-int/2addr v4, v1

    shr-int/lit8 v4, v4, 0x8

    .line 101
    and-int/lit16 v1, v1, 0xff

    .line 103
    const v5, 0x7fffffff

    and-int/2addr v2, v5

    .line 105
    packed-switch v4, :pswitch_data_0

    .line 143
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "TODO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    .line 107
    :pswitch_1
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readData(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 111
    :pswitch_2
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readHeaders(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 115
    :pswitch_3
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readPriority(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 119
    :pswitch_4
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readRstStream(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 123
    :pswitch_5
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readSettings(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 127
    :pswitch_6
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readPushPromise(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 131
    :pswitch_7
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readPing(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 135
    :pswitch_8
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readGoAway(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 139
    :pswitch_9
    invoke-direct {p0, p1, v1, v3, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->readWindowUpdate(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader$Handler;III)V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public final readConnectionHeader()V
    .locals 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->client:Z

    if-eqz v0, :cond_1

    .line 87
    :cond_0
    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;->access$000()[B

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [B

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->in:Ljava/io/DataInputStream;

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;->access$000()[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Expected a connection header but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;->ioException(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
