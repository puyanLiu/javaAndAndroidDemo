.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;
.super Ljava/lang/Object;
.source "Http20Draft06.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;


# static fields
.field private static final CONNECTION_HEADER:[B

.field static final FLAG_END_FLOW_CONTROL:I = 0x1

.field static final FLAG_END_HEADERS:I = 0x4

.field static final FLAG_END_STREAM:I = 0x1

.field static final FLAG_PONG:I = 0x1

.field static final FLAG_PRIORITY:I = 0x8

.field static final TYPE_CONTINUATION:I = 0xa

.field static final TYPE_DATA:I = 0x0

.field static final TYPE_GOAWAY:I = 0x7

.field static final TYPE_HEADERS:I = 0x1

.field static final TYPE_PING:I = 0x6

.field static final TYPE_PRIORITY:I = 0x2

.field static final TYPE_PUSH_PROMISE:I = 0x5

.field static final TYPE_RST_STREAM:I = 0x3

.field static final TYPE_SETTINGS:I = 0x4

.field static final TYPE_WINDOW_UPDATE:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    :try_start_0
    const-string/jumbo v0, "PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n"

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;->CONNECTION_HEADER:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 34
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    return-void
.end method

.method static synthetic access$000()[B
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06;->CONNECTION_HEADER:[B

    return-object v0
.end method


# virtual methods
.method public final newReader(Ljava/io/InputStream;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameReader;
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Reader;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method

.method public final newWriter(Ljava/io/OutputStream;Z)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/FrameWriter;
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;

    invoke-direct {v0, p1, p2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Http20Draft06$Writer;-><init>(Ljava/io/OutputStream;Z)V

    return-object v0
.end method
