.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;
.super Ljava/lang/Object;
.source "APNotifyView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

.field private final synthetic c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;->a(Lcom/alipay/android/phone/businesscommon/advertisement/ui/k;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APNotifyView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/l;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->showSpaceInfoAd(Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 151
    return-void
.end method
