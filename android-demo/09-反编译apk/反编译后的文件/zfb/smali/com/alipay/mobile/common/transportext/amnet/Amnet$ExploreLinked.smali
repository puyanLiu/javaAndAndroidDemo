.class Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreLinked;
.super Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;
.source "Amnet.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V
    .locals 0

    .prologue
    .line 2430
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreNotice;-><init>(Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;J)V

    .line 2431
    return-void
.end method


# virtual methods
.method protected exe()V
    .locals 1

    .prologue
    .line 2436
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$ExploreLinked;->owner()Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/amnet/Amnet$Explorer;->treatLinked()V

    .line 2437
    return-void
.end method
