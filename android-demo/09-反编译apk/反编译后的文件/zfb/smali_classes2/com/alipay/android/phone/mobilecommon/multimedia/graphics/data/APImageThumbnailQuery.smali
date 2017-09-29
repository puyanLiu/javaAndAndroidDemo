.class public Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageThumbnailQuery;
.super Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;


# instance fields
.field public expectHeight:Ljava/lang/Integer;

.field public expectWidth:Ljava/lang/Integer;

.field public minHeight:Ljava/lang/Integer;

.field public minWidth:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageQuery;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageThumbnailQuery;->expectWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageThumbnailQuery;->expectHeight:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageThumbnailQuery;->minWidth:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageThumbnailQuery;->minHeight:Ljava/lang/Integer;

    return-void
.end method
