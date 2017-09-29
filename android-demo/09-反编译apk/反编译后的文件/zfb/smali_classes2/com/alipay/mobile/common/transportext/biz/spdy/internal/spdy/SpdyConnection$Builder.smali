.class public Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;
.super Ljava/lang/Object;
.source "SpdyConnection.java"


# instance fields
.field private client:Z

.field private connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

.field private handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

.field private hostName:Ljava/lang/String;

.field private in:Ljava/io/InputStream;

.field private out:Ljava/io/OutputStream;

.field private variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    .line 443
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->SPDY3:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    .line 468
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;

    .line 469
    iput-boolean p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->client:Z

    .line 470
    iput-object p3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->in:Ljava/io/InputStream;

    .line 471
    iput-object p4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->out:Ljava/io/OutputStream;

    .line 472
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/net/Socket;)V
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 461
    return-void
.end method

.method public constructor <init>(ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .prologue
    .line 452
    const-string/jumbo v0, ""

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 453
    return-void
.end method

.method public constructor <init>(ZLjava/net/Socket;)V
    .locals 3

    .prologue
    .line 448
    const-string/jumbo v0, ""

    invoke-virtual {p2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;-><init>(Ljava/lang/String;ZLjava/io/InputStream;Ljava/io/OutputStream;)V

    .line 449
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->client:Z

    return v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->in:Ljava/io/InputStream;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/io/OutputStream;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->out:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$500(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->hostName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;
    .locals 2

    .prologue
    .line 495
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$1;)V

    return-object v0
.end method

.method public connection(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 0

    .prologue
    .line 490
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->connection:Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    .line 491
    return-object p0
.end method

.method public handler(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 0

    .prologue
    .line 475
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->handler:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    .line 476
    return-object p0
.end method

.method public http20Draft06()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 1

    .prologue
    .line 485
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->HTTP_20_DRAFT_06:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    .line 486
    return-object p0
.end method

.method public spdy3()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;
    .locals 1

    .prologue
    .line 480
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;->SPDY3:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection$Builder;->variant:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Variant;

    .line 481
    return-object p0
.end method
