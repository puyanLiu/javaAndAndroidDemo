.class public Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;
.super Ljava/lang/Object;
.source "AsyncOkHttpClient.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOkHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mOkHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 32
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method public enqueue(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;)V
    .locals 3

    .prologue
    .line 38
    new-instance v1, Lcom/alipay/mobile/common/transport/context/TransportContext;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/context/TransportContext;-><init>()V

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net0:I

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->net1:I

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;-><init>()V

    .line 46
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->use:Z

    .line 47
    const-string/jumbo v2, "spdy"

    iput-object v2, v0, Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;->protocol:Ljava/lang/String;

    .line 48
    iput-object v0, v1, Lcom/alipay/mobile/common/transport/context/TransportContext;->currentReqInfo:Lcom/alipay/mobile/common/transport/context/TransportContext$SingleRPCReqConfig;

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mContext:Landroid/content/Context;

    const-string/jumbo v2, ""

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/transport/TransportStrategy;->configInit(Landroid/content/Context;Ljava/lang/String;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mOkHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->enqueue(Lcom/alipay/mobile/common/transportext/biz/spdy/Request;Lcom/alipay/mobile/common/transportext/biz/spdy/Response$Receiver;Lcom/alipay/mobile/common/transport/context/TransportContext;)V

    .line 51
    return-void
.end method

.method public getOkHttpClient()Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mOkHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    return-object v0
.end method

.method public setFollowProtocolRedirects(Z)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mOkHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setFollowProtocolRedirects(Z)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    .line 60
    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/AsyncOkHttpClient;->mOkHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;->setProxy(Ljava/net/Proxy;)Lcom/alipay/mobile/common/transportext/biz/spdy/OkHttpClient;

    move-result-object v0

    return-object v0
.end method
