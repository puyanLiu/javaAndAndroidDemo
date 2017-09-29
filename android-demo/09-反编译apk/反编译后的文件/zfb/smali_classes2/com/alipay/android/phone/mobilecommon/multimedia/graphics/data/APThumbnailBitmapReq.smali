.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APThumbnailBitmapReq;
.super Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;


# instance fields
.field public minHeight:Ljava/lang/Integer;

.field public minWidth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;-><init>(Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APThumbnailBitmapReq;->minWidth:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APThumbnailBitmapReq;->minHeight:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APCacheBitmapReq;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APThumbnailBitmapReq;->minWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APThumbnailBitmapReq;->minHeight:Ljava/lang/Integer;

    return-void
.end method
