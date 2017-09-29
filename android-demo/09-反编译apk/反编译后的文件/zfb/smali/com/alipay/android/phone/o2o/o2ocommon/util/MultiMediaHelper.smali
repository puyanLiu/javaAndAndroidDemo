.class public Lcom/alipay/android/phone/o2o/o2ocommon/util/MultiMediaHelper;
.super Ljava/lang/Object;
.source "MultiMediaHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;II)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    invoke-direct {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;-><init>(II)V

    invoke-static {p0, v0}, Lcom/alipay/android/phone/o2o/o2ocommon/util/MultiMediaHelper;->getNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    return-object v0
.end method

.method public static getNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;
    .locals 2

    .prologue
    .line 13
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->getDjangoNearestImageSize(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;

    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/Size;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    move-object p1, v0

    .line 20
    :cond_0
    return-object p1
.end method
