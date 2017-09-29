.class public Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;
.super Ljava/lang/Object;
.source "ImagesDownloader.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 30
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 28
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/image/e;->a()Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downloadImageEx(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;I)V
    .locals 3

    .prologue
    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a:Ljava/lang/String;

    const-string/jumbo v2, "downloadImageEx"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    new-instance v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 55
    iput-object p1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 56
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/image/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/api/image/a;-><init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;I)V

    iput-object v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    .line 64
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/image/b;

    invoke-direct {v1, p0, p2, p3}, Lcom/alipay/mobile/socialsdk/api/image/b;-><init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;I)V

    iput-object v1, v0, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 83
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->getMultimediaImageService()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method public downloadImageMultimedia(Ljava/lang/String;IILcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;)V
    .locals 7

    .prologue
    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->a:Ljava/lang/String;

    const-string/jumbo v2, "downloadImage"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p4, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    new-instance v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 93
    iput p2, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    .line 94
    iput p3, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    .line 95
    iput-object p1, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->isBackground:Z

    .line 97
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/image/c;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/api/image/c;-><init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Ljava/lang/String;IILcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;)V

    iput-object v0, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    .line 109
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/image/d;

    invoke-direct {v0, p0, p4}, Lcom/alipay/mobile/socialsdk/api/image/d;-><init>(Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;Lcom/alipay/mobile/socialsdk/api/image/ImagesLoadCallBack;)V

    iput-object v0, v6, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 128
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->getMultimediaImageService()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto :goto_0
.end method

.method public drawable2BimapFor(Landroid/graphics/drawable/BitmapDrawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v0, 0x0

    .line 144
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 137
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 138
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    int-to-float v2, p2

    int-to-float v6, v3

    div-float/2addr v2, v6

    .line 140
    int-to-float v6, p3

    int-to-float v7, v4

    div-float/2addr v6, v7

    .line 141
    invoke-virtual {v5, v2, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 142
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 143
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public getMultimediaImageService()Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 37
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 35
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/image/ImagesDownloader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    return-object v0
.end method
