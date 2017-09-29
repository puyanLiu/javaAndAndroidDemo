.class public interface abstract Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;
.super Ljava/lang/Object;
.source "IncomingStreamHandler.java"


# static fields
.field public static final REFUSE_INCOMING_STREAMS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler$1;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler$1;-><init>()V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;->REFUSE_INCOMING_STREAMS:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/IncomingStreamHandler;

    return-void
.end method


# virtual methods
.method public abstract receive(Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyStream;)V
.end method
