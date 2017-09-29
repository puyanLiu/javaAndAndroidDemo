.class Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;
.super Ljava/lang/Object;
.source "APAdvertisementView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;->a(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$2$1;->c:Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;Landroid/app/Activity;Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 175
    return-void
.end method
