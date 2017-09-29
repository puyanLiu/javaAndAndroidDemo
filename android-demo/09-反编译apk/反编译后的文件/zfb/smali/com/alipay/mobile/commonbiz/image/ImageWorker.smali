.class public Lcom/alipay/mobile/commonbiz/image/ImageWorker;
.super Ljava/lang/Object;
.source "ImageWorker.java"


# static fields
.field private static a:Landroid/os/Handler;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/content/res/Resources;

.field private e:Landroid/graphics/Bitmap$Config;

.field private f:I

.field private g:Z

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private j:Ljava/util/Map;
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
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 72
    if-lez p2, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    .line 75
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    const/16 v0, 0xf0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    .line 47
    iput v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    .line 52
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->e:Landroid/graphics/Bitmap$Config;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->d:Landroid/content/res/Resources;

    .line 79
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->d:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    .line 83
    :cond_0
    return-void
.end method

.method static synthetic a()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/image/ImageWorker;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 284
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 288
    sget-object v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/image/ImageWorker$4;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$4;-><init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 296
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 318
    invoke-static {p0, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)V
    .locals 2

    .prologue
    .line 268
    if-eqz p3, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$3;-><init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;->onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 185
    if-eqz p2, :cond_0

    .line 186
    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->url_tag:I

    invoke-virtual {p2, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 188
    :cond_0
    invoke-static {p1}, Lcom/alipay/mobile/common/utils/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 189
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ImageWorker"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u52a0\u8f7d\u56fe\u7247\uff0cpath\u4e3a\u7a7a\uff0c\u8bbe\u7f6e\u9ed8\u8ba4icon="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 191
    if-eqz p2, :cond_1

    .line 192
    sget v1, Lcom/alipay/mobile/base/commonbiz/R$id;->url_tag:I

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 194
    :cond_1
    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Landroid/view/View;)V

    .line 245
    :cond_2
    :goto_0
    return-void

    .line 199
    :cond_3
    if-eqz p5, :cond_4

    .line 200
    invoke-interface {p5, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;->onStart(Ljava/lang/String;)V

    .line 201
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$1;

    invoke-direct {v0, p0, p2, p5, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$1;-><init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Landroid/view/View;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Ljava/lang/String;)V

    .line 220
    :cond_4
    new-instance v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 221
    iput-object p1, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 222
    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 224
    iput p4, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    .line 225
    iput p3, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    .line 226
    iput-object p6, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    .line 227
    const-string/jumbo v0, "imageWorker"

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->caller:Ljava/lang/String;

    .line 228
    instance-of v0, p2, Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    move-object v0, p2

    .line 229
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->imageView:Landroid/widget/ImageView;

    .line 233
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_5

    .line 234
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_2

    .line 241
    invoke-direct {p0, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Landroid/view/View;)V

    .line 242
    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getTaskId()Ljava/lang/String;

    move-result-object v0

    .line 243
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 231
    :cond_6
    new-instance v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;

    invoke-direct {v0, p0, p5, p2, p1}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$2;-><init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Landroid/view/View;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/commonbiz/image/ImageWorker;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private b(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 302
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 306
    sget-object v0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker$5;-><init>(Lcom/alipay/mobile/commonbiz/image/ImageWorker;Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 314
    :cond_2
    invoke-static {p1, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static c(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 319
    instance-of v0, p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    if-eqz v0, :cond_1

    .line 320
    check-cast p0, Lcom/alipay/mobile/commonui/widget/APAbsTableView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APAbsTableView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    instance-of v0, p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    if-eqz v0, :cond_2

    .line 322
    check-cast p0, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;->setLeftImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 323
    :cond_2
    instance-of v0, p0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 324
    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, p1, v0, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->cancel(Ljava/lang/String;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    .line 364
    return-object p0
.end method

.method public cancel(Ljava/lang/String;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_0

    .line 350
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_2

    .line 359
    :cond_1
    :goto_0
    return-object p0

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 356
    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->cancelLoad(Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public cancelAll()Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_0

    .line 373
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_1

    .line 383
    :goto_0
    return-object p0

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 379
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0

    .line 379
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 380
    iget-object v2, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v2, v0}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->cancelLoad(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCachePeriod()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->f:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    return v0
.end method

.method public getInPreferredConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->e:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    return v0
.end method

.method public isFastToRecycle()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->g:Z

    return v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 6

    .prologue
    .line 120
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    .line 132
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 133
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    .line 95
    iget v3, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    iget v4, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 96
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 6

    .prologue
    .line 150
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;

    move-result-object v0

    return-object v0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;IILcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    .line 155
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 156
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    .line 115
    const/4 v2, 0x0

    iget v3, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    iget v4, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 116
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APAbsTableView;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 100
    iget v3, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    iget v4, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 101
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APAbsTableView;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 138
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 139
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 105
    iget v3, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    iget v4, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 106
    return-object p0
.end method

.method public loadImage(Ljava/lang/String;Lcom/alipay/mobile/commonui/widget/APBankCardListItemView;II)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->a(Ljava/lang/String;Landroid/view/View;IILcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)V

    .line 145
    return-object p0
.end method

.method public optimizeListView(Landroid/widget/AbsListView;Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 2

    .prologue
    .line 160
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->optimizeListView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    .line 161
    return-void
.end method

.method public optimizeListView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_0

    .line 166
    const-class v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-static {v0}, Lcom/alipay/mobile/common/androidannotations/MicroServiceUtil;->getMicroService(Ljava/lang/Class;)Lcom/alipay/mobile/framework/service/MicroService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-nez v0, :cond_1

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->i:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->optimizeView(Landroid/widget/AbsListView;ZZLandroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0
.end method

.method public setCachePeriod(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 0

    .prologue
    .line 424
    iput p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->f:I

    .line 425
    return-object p0
.end method

.method public setDefaultImage(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 1

    .prologue
    .line 342
    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->d:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    .line 345
    :cond_0
    return-object p0
.end method

.method public setDefaultImage(Landroid/graphics/Bitmap;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 2

    .prologue
    .line 333
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->d:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->h:Landroid/graphics/drawable/Drawable;

    .line 334
    return-object p0
.end method

.method public setFastToRecycle(Z)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 0

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->g:Z

    .line 434
    return-object p0
.end method

.method public setHeight(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 0

    .prologue
    .line 402
    if-lez p1, :cond_0

    .line 403
    iput p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->c:I

    .line 405
    :cond_0
    return-object p0
.end method

.method public setInPreferredConfig(Landroid/graphics/Bitmap$Config;)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 0

    .prologue
    .line 417
    if-eqz p1, :cond_0

    .line 418
    iput-object p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->e:Landroid/graphics/Bitmap$Config;

    .line 420
    :cond_0
    return-object p0
.end method

.method public setWidth(I)Lcom/alipay/mobile/commonbiz/image/ImageWorker;
    .locals 0

    .prologue
    .line 391
    if-lez p1, :cond_0

    .line 392
    iput p1, p0, Lcom/alipay/mobile/commonbiz/image/ImageWorker;->b:I

    .line 394
    :cond_0
    return-object p0
.end method
