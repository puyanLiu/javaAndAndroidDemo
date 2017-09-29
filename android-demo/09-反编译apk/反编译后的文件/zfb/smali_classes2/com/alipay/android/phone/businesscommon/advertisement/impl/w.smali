.class final Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;
.super Ljava/lang/Object;
.source "AdvertisementServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z

.field private final synthetic d:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

.field private final synthetic e:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Ljava/lang/String;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->c:Z

    iput-object p4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->d:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    iput-object p5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->e:Ljava/util/Map;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AdvertisementService getSpaceInfoByCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    .line 490
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/g/a;

    move-result-object v0

    .line 491
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/a;->a(Ljava/lang/String;)Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    move-result-object v0

    .line 494
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->c:Z

    if-nez v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->d:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    if-eqz v1, :cond_0

    .line 497
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    .line 496
    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->b(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;

    move-result-object v1

    .line 498
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->d:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-interface {v2, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;->onSuccess(Lcom/alipay/cdp/common/service/facade/space/domain/SpaceInfo;)V

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->a:Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->e:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->c:Z

    .line 501
    new-instance v4, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->d:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/x;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 500
    invoke-static {v1, v0, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;->a(Lcom/alipay/android/phone/businesscommon/advertisement/impl/AdvertisementServiceImpl;Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 537
    :goto_0
    return-void

    .line 520
    :cond_1
    invoke-static {}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a()Lcom/alipay/android/phone/businesscommon/advertisement/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->b:Ljava/lang/String;

    .line 521
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->e:Ljava/util/Map;

    iget-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->c:Z

    new-instance v4, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;

    iget-object v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;->d:Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;

    invoke-direct {v4, p0, v5}, Lcom/alipay/android/phone/businesscommon/advertisement/impl/y;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/impl/w;Lcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSingleSpaceInfoCallBack;)V

    .line 520
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alipay/android/phone/businesscommon/advertisement/e/a;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/alipay/android/phone/businesscommon/advertisement/AdvertisementService$IAdGetSpaceInfoCallBack;)V

    goto :goto_0
.end method
