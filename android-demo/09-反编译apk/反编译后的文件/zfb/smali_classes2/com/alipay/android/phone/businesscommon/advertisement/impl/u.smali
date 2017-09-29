.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;->b:Landroid/app/Activity;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFail()V
    .locals 0

    .prologue
    .line 315
    return-void
.end method

.method public final onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V
    .locals 3

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/u;->b:Landroid/app/Activity;

    .line 309
    invoke-static {p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Landroid/app/Activity;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)V

    .line 311
    return-void
.end method
