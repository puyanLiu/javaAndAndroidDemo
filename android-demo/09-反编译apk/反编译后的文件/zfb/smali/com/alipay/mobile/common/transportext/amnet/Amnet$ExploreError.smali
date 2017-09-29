.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;
.source "Amnet.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V
    .locals 0

    .prologue
    .line 2417
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    .line 2418
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 1

    .prologue
    .line 2423
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreError;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatError()V

    .line 2424
    return-void
.end method
