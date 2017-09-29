.class public Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;
.super Ljava/lang/Object;
.source "Failure.java"


# instance fields
.field private exception:Ljava/lang/Throwable;

.field private request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->exception:Ljava/lang/Throwable;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$1;)V

    return-object v0
.end method

.method public exception(Ljava/lang/Throwable;)Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->exception:Ljava/lang/Throwable;

    .line 54
    return-object p0
.end method

.method public request(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;)Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    .line 49
    return-object p0
.end method
