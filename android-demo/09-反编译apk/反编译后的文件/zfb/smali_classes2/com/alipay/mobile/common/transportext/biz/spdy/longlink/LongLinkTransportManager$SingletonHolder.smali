.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager$SingletonHolder;
.super Ljava/lang/Object;
.source "LongLinkTransportManager.java"


# static fields
.field private static instance:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager$1;)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager$SingletonHolder;->instance:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager$SingletonHolder;->instance:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/LongLinkTransportManager;

    return-object v0
.end method
