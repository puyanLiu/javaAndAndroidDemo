.class public Lcom/alipay/mobile/beehive/util/image/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWorker"

.field private static uiHandler:Landroid/os/Handler;


# instance fields
.field private cachePeriod:I

.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private fastToRecycle:Z

.field private height:I

.field private inPreferredConfig:Landroid/graphics/Bitmap$Config;

.field private multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private resources:Landroid/content/res/Resources;

.field private taskMap:Ljava/util/Map;
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

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->uiHandler:Landroid/os/Handler;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 66
    if-lez p2, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/16 v0, 0xf0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->width:I

    .line 41
    iput v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->height:I

    .line 46
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->resources:Landroid/content/res/Resources;

    .line 74
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/util/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 73
    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 75
    if-eqz p2, :cond_0

    .line 76
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 78
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setDefaultImage(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;)V
    .locals 0

    .prologue
    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->success(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$3()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/util/image/ImageWorker;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/util/image/ImageWorker;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 277
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private getDisplayer(Ljava/lang/String;Landroid/view/View;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;

    invoke-direct {v0, p0, p3, p2, p1}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$2;-><init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Landroid/view/View;Ljava/lang/String;)V

    .line 225
    return-object v0
.end method

.method private loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 153
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/beehive/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "\u52a0\u8f7d\u56fe\u7247\uff0cpath\u4e3a\u7a7a\uff0c\u8bbe\u7f6e\u9ed8\u8ba4icon="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 156
    if-eqz p2, :cond_1

    .line 157
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 159
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setDefaultImage(Landroid/view/View;)V

    .line 204
    :cond_2
    :goto_0
    return-void

    .line 164
    :cond_3
    if-eqz p5, :cond_4

    .line 165
    invoke-interface {p5, p1}, Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;->onStart(Ljava/lang/String;)V

    .line 166
    new-instance v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;

    invoke-direct {v0, p0, p2, p5, p1}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$1;-><init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Ljava/lang/String;)V

    .line 186
    :cond_4
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 187
    iput-object p1, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 188
    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iput p4, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    .line 191
    iput p3, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    .line 192
    iput-object p6, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    .line 193
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    move-object v0, p2

    .line 194
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->imageView:Landroid/widget/ImageView;

    .line 198
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_2

    .line 200
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setDefaultImage(Landroid/view/View;)V

    .line 201
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 196
    :cond_5
    invoke-direct {p0, p1, p2, p5}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->getDisplayer(Ljava/lang/String;Landroid/view/View;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;)Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    goto :goto_1
.end method

.method private setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 278
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    return-void
.end method

.method private setDefaultImage(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 244
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 248
    sget-object v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$4;-><init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setImageDrawable(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 261
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 265
    sget-object v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$5;-><init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 273
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->setBitmap(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private success(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;)V
    .locals 2

    .prologue
    .line 230
    if-eqz p3, :cond_0

    .line 231
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 232
    sget-object v0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->uiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker$3;-><init>(Lcom/alipay/mobile/beehive/util/image/ImageWorker;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->cancelLoad(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    :cond_0
    return-object p0
.end method

.method public cancel(Ljava/lang/String;II)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->cancelLoad(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_0
    return-object p0
.end method

.method public cancelAll()Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 3

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 326
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->taskMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 330
    return-object p0

    .line 326
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 327
    iget-object v2, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->cancelLoad(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCachePeriod()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->cachePeriod:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 345
    iget v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->height:I

    return v0
.end method

.method public getInPreferredConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->width:I

    return v0
.end method

.method public isFastToRecycle()Z
    .locals 1

    .prologue
    .line 376
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->fastToRecycle:Z

    return v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 6

    .prologue
    .line 98
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 7

    .prologue
    .line 111
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 112
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 7

    .prologue
    .line 92
    iget v3, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->width:I

    iget v4, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->height:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 93
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;II)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 6

    .prologue
    .line 117
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 7

    .prologue
    .line 122
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->loadImageAction(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/beehive/util/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 123
    return-object p0
.end method

.method public optimizeListView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2

    .prologue
    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->optimizeListView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 129
    return-void
.end method

.method public optimizeListView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->multimediaImageService:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 135
    return-void
.end method

.method public setCachePeriod(I)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 0

    .prologue
    .line 371
    iput p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->cachePeriod:I

    .line 372
    return-object p0
.end method

.method public setDefaultImage(I)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 1

    .prologue
    .line 297
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 300
    :cond_0
    return-object p0
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 2

    .prologue
    .line 287
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->resources:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 288
    return-object p0
.end method

.method public setFastToRecycle(Z)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 0

    .prologue
    .line 380
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->fastToRecycle:Z

    .line 381
    return-object p0
.end method

.method public setHeight(I)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 0

    .prologue
    .line 349
    if-lez p1, :cond_0

    .line 350
    iput p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->height:I

    .line 352
    :cond_0
    return-object p0
.end method

.method public setInPreferredConfig(Landroid/graphics/Bitmap$Config;)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 0

    .prologue
    .line 364
    if-eqz p1, :cond_0

    .line 365
    iput-object p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 367
    :cond_0
    return-object p0
.end method

.method public setWidth(I)Lcom/alipay/mobile/beehive/util/image/ImageWorker;
    .locals 0

    .prologue
    .line 338
    if-lez p1, :cond_0

    .line 339
    iput p1, p0, Lcom/alipay/mobile/beehive/util/image/ImageWorker;->width:I

    .line 341
    :cond_0
    return-object p0
.end method
