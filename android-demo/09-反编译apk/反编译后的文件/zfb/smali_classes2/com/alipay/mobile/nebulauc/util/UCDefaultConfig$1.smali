.class Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig$1;
.super Ljava/util/HashMap;
.source "UCDefaultConfig.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string/jumbo v0, "h5_ucKernelConfig"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/nebulauc/util/UCDefaultConfig$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    return-void
.end method
