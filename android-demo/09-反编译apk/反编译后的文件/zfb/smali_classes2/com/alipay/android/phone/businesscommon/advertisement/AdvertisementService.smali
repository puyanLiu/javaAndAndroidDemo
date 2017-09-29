.class public abstract Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;
.super Lcom/alipay/mobile/framework/service/ext/ExternalService;
.source "AdvertisementService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/ExternalService;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract UpdateAdSync(Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addAnnouncement(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
.end method

.method public abstract addAnnouncement(Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract addAnnouncement(Landroid/app/Activity;Ljava/lang/String;Z)V
.end method

.method public abstract checkAndShowAd()V
.end method

.method public abstract checkAndShowAd(Landroid/app/Activity;)V
.end method

.method public abstract feedback(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceFeedbackReq;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getActionExecutor()Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;
.end method

.method public abstract getAdvertisementViewCallBackMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAppId(Landroid/app/Activity;)Ljava/lang/String;
.end method

.method public abstract getSpaceInfoByCode(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
.end method

.method public abstract getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getSpaceInfoByCode(Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSpaceInfoByPage(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V
.end method

.method public abstract getSyncDataChangeCallBackMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUseId()Ljava/lang/String;
.end method

.method public abstract isMatchSpaceInfo(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract registerAdvertisementViewCallBack(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V
.end method

.method public abstract registerDataChangeListener(Ljava/lang/String;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V
.end method

.method public abstract removeAdvertisement(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract removeAnnouncement(Landroid/app/Activity;)V
.end method

.method public abstract setActionExecutor(Lcom/alipay/android/phone/businesscommon/advertisement/ActionExecutor;)V
.end method

.method public abstract showSpaceInfoAd(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
.end method

.method public abstract unregisterAdvertisementViewCallBack(Ljava/lang/String;)V
.end method

.method public abstract unregisterAdvertisementViewCallBackByActivity(Landroid/app/Activity;)V
.end method

.method public abstract unregisterDataChangeListener(Ljava/lang/String;)V
.end method

.method public abstract userFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
