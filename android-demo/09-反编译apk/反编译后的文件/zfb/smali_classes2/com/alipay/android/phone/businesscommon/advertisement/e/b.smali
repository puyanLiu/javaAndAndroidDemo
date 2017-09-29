.class final Lcom/alipay/android/phone/businesscommon/advertisement/e/b;
.super Ljava/lang/Object;
.source "AdExcutorService.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

.field private final synthetic b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/e/a;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/b;->a:Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/b;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 0

    .prologue
    .line 317
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 2

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/e/b;->b:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;

    invoke-interface {v0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdDataChangeCallBack;->onChange(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AdExcutorService.init\u5b8c\u6bd5\uff0c\u5b8c\u6210\u6570\u636e\u56de\u8c03:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 311
    iget-object v1, p1, Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method
