.class final Lcom/alipay/android/phone/home/ui/ap;
.super Ljava/lang/Thread;
.source "HomeFrameLayout.java"


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    .line 478
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/home/ui/ap;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 481
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$9(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$9(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    move-result-object v0

    const-string/jumbo v1, "homepage_toptips"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;)V

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$10(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->b:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v2, v2, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->k:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 485
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$10(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;

    move-result-object v0

    sget-object v1, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->c:Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;

    invoke-virtual {v1}, Lcom/alipay/android/phone/home/ads/AdSpaceCodeEnum;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    iget-object v2, v2, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->l:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService;->getSpaceInfoByCode(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 486
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ap;->a:Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$2(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/phone/home/ui/aq;

    invoke-direct {v1, p0}, Lcom/alipay/android/phone/home/ui/aq;-><init>(Lcom/alipay/android/phone/home/ui/ap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 492
    return-void
.end method
