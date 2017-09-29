.class public Lcom/alipay/mobile/common/transportext/api/ExtTransportSystem;
.super Ljava/lang/Object;
.source "ExtTransportSystem.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getExtTransportManager()Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;
    .locals 1

    .prologue
    .line 13
    const-string/jumbo v0, "com.alipay.mobile.common.transportext.biz.shared.ExtTransportManagerImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transportext/api/ExtTransportManager;

    return-object v0
.end method
