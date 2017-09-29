.class Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;
.super Ljava/lang/Object;
.source "APAdvertisementView.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;->b:Landroid/app/Activity;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    return-object v0
.end method


# virtual methods
.method public onFail()V
    .locals 1

    .prologue
    .line 181
    const-string/jumbo v0, "APAdvertisementView.getSpaceInfoByCode  onFail"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;->b:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;->b:Landroid/app/Activity;

    invoke-direct {v1, p0, v2, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method
