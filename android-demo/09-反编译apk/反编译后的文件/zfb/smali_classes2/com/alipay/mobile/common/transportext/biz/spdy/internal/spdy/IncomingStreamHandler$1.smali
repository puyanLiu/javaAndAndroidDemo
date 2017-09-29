.class final Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler$1;
.super Ljava/lang/Object;
.source "IncomingStreamHandler.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final receive(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;->REFUSED_STREAM:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;->close(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/ErrorCode;)V

    .line 26
    return-void
.end method
