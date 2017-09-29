.class Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$1;
.super Ljava/lang/Object;
.source "APAdvertisementView.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$1;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    .line 100
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$1;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->access$0(Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;)Ljava/lang/String;

    move-result-object v0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView$1;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/APAdvertisementView;->updateSpaceCode(Ljava/lang/String;)V

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "APAdvertisementView onChange callback! spaceCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 105
    return-void

    .line 101
    :cond_0
    iget-object v0, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    goto :goto_0
.end method
