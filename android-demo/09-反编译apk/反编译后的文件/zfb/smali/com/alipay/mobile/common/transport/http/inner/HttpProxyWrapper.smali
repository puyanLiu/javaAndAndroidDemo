.class public Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;
.super Ljava/lang/Object;
.source "HttpProxyWrapper.java"


# instance fields
.field public lastGoodProxy:B

.field public proxy:Lorg/apache/http/HttpHost;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->proxy:Lorg/apache/http/HttpHost;

    .line 13
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/alipay/mobile/common/transport/http/inner/HttpProxyWrapper;->lastGoodProxy:B

    return-void
.end method
