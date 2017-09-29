.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;
.super Ljava/lang/Object;
.source "APNotifyView.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    return-object v0
.end method


# virtual methods
.method public final onFail()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .line 141
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    invoke-direct {v1, p0, v2, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
