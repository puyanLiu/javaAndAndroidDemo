.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-interface {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onFail()V

    .line 535
    return-void
.end method

.method public final onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    if-eqz p1, :cond_0

    .line 526
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-interface {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 530
    :cond_0
    return-void
.end method
