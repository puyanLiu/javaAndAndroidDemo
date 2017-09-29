.class public final Lcom/alipay/android/phone/businesscommon/advertisement/c/c;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/graphics/Bitmap$Config;

.field private f:Landroid/graphics/drawable/Drawable;

.field private g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;-><init>(Landroid/content/Context;B)V

    .line 62
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;B)V
    .locals 1

    .prologue
    const/16 v0, 0xf0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->b:I

    .line 41
    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->c:I

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->e:Landroid/graphics/Bitmap$Config;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->h:Ljava/util/Map;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->d:Landroid/content/res/Resources;

    .line 73
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/b;->b(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 74
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->f:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->f:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 240
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/d;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 270
    invoke-static {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 254
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 258
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/e;-><init>(Lcom/alipay/android/phone/businesscommon/advertisement/c/c;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 266
    :cond_2
    invoke-static {p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 271
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 272
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/android/phone/businesscommon/advertisement/c/c;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 94
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u52a0\u8f7d\u56fe\u7247\uff0cpath\u4e3a\u7a7a\uff0c\u8bbe\u7f6e\u9ed8\u8ba4icon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->f:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    iput-object p1, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->f:Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput p4, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    iput p3, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    iput-object v2, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    move-object v0, p2

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->imageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->g:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->a(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getTaskId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/c/c;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
