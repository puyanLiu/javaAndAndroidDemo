.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-interface {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onFail()V

    .line 514
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    if-eqz v0, :cond_0

    .line 506
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    .line 507
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    .line 506
    invoke-interface {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 509
    :cond_0
    return-void
.end method
