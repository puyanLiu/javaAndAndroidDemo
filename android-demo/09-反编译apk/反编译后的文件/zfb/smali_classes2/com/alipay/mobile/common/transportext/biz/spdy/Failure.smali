.class public Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;
.super Ljava/lang/Object;
.source "Failure.java"


# instance fields
.field private final exception:Ljava/lang/Throwable;

.field private final request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;)Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    .line 32
    invoke-static {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;)Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;->exception:Ljava/lang/Throwable;

    .line 33
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/Failure$Builder;)V

    return-void
.end method


# virtual methods
.method public exception()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;->exception:Ljava/lang/Throwable;

    return-object v0
.end method

.method public request()Lcom/alipay/mobile/common/transportext/biz/spdy/Request;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/Failure;->request:Lcom/alipay/mobile/common/transportext/biz/spdy/Request;

    return-object v0
.end method
