.class public Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;
.super Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;
.source "SpdyTransportManager.java"


# instance fields
.field private initd:Z

.field private mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->initd:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getAndroidSpdyHttpClient()Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    .line 87
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->newInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mAndroidSpdyHttpClient:Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    goto :goto_0
.end method

.method private initSpdyLongLinkConnManager()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isPushProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getInstance()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManager;->attch(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private preCreateSpdyonnection()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->getAndroidSpdyHttpClient()Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->isExecutedPreConnect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager$1;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transport/utils/AppStartNetWorkingHelper;->runOnAppStart(Ljava/lang/Runnable;Landroid/content/Context;)V

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->initd:Z

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->init(Landroid/content/Context;)V

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->getAndroidSpdyHttpClient()Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->initd:Z

    if-eqz v0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 32
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->initd:Z

    .line 34
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->preCreateSpdyonnection()V

    .line 36
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/SpdyTransportManager;->initSpdyLongLinkConnManager()V

    goto :goto_0
.end method
