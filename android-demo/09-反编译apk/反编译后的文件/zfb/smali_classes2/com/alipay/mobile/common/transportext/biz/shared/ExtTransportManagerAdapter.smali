.class public Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportManagerAdapter;
.super Ljava/lang/Object;
.source "ExtTransportManagerAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtTransportClient(Landroid/content/Context;Lcom/alipay/mobile/common/transport/context/TransportContext;)Lcom/alipay/mobile/common/transport/ext/ExtTransportClient;
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    return v0
.end method
