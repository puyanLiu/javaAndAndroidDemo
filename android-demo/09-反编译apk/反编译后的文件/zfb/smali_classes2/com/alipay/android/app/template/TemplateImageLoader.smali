.class public Lcom/alipay/android/app/template/TemplateImageLoader;
.super Ljava/lang/Object;
.source "TemplateImageLoader.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "TemplateImageLoader"

.field private static a:Lcom/alipay/android/app/template/TemplateImageLoader;


# instance fields
.field private b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    .line 54
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 55
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 56
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/template/TemplateImageLoader;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    return v0
.end method

.method static synthetic a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Z)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 77
    invoke-static {p0, p1, p2, p3, p4}, Lcom/alipay/android/app/template/TemplateImageLoader;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 85
    const-string/jumbo v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 86
    if-eq v1, v4, :cond_4

    .line 87
    invoke-virtual {p1, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 91
    :cond_0
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 94
    const-string/jumbo v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 95
    if-ltz v3, :cond_1

    .line 96
    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_1
    const-string/jumbo v3, "drawable"

    invoke-static {p0, v1, v3, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 100
    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_6

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    if-eqz p4, :cond_5

    .line 103
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_5

    .line 104
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    invoke-static {v0}, Lcom/alipay/android/app/template/util/UiUtil;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 106
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v1, v0

    .line 111
    :goto_0
    if-eqz p5, :cond_2

    .line 112
    if-eqz p2, :cond_3

    .line 113
    invoke-virtual {p3, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    :goto_1
    instance-of v0, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 118
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 125
    :cond_2
    :goto_2
    return-object v1

    .line 115
    :cond_3
    check-cast p3, Landroid/widget/ImageView;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 125
    goto :goto_2

    :cond_5
    move-object v1, v0

    goto :goto_0

    :cond_6
    move-object v1, v2

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Z)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 78
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/alipay/android/app/template/TemplateImageLoader;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/android/app/template/TemplateImageLoader;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/android/app/template/TemplateImageLoader;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateImageLoader;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateImageLoader;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    .line 62
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateImageLoader;->a:Lcom/alipay/android/app/template/TemplateImageLoader;

    return-object v0
.end method


# virtual methods
.method public clearCache(I)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public loadNetImage(Landroid/view/View;Ljava/lang/String;[IZLjava/lang/String;Ljava/lang/String;ILcom/flybird/ILayoutListener;Z)V
    .locals 10

    .prologue
    .line 133
    if-nez p1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    if-gez v1, :cond_2

    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "alipay_msp_image_loader_view_tag"

    const-string/jumbo v3, "id"

    .line 139
    const-string/jumbo v4, "com.alipay.android.app.template"

    .line 138
    invoke-static {v1, v2, v3, v4}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    .line 142
    :cond_2
    const/16 v2, 0x64

    .line 143
    const/16 v1, 0x64

    .line 144
    if-eqz p3, :cond_3

    .line 145
    const/4 v1, 0x0

    aget v2, p3, v1

    .line 146
    const/4 v1, 0x1

    aget v1, p3, v1

    .line 149
    :cond_3
    if-gtz v2, :cond_e

    .line 150
    const/16 v2, 0x64

    move v9, v2

    .line 153
    :goto_1
    if-gtz v1, :cond_d

    .line 154
    const/16 v1, 0x64

    move v7, v1

    .line 158
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 163
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    const-string/jumbo v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 165
    const-string/jumbo v2, "www"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 166
    const-string/jumbo v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 167
    move/from16 v0, p9

    invoke-static {v1, p2, p4, p1, v0}, Lcom/alipay/android/app/template/TemplateImageLoader;->b(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_0

    .line 172
    :cond_4
    const-string/jumbo v2, ""

    .line 173
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 174
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string/jumbo v2, ""

    .line 175
    :goto_3
    if-eqz p9, :cond_c

    .line 176
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "?gray=1"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    .line 182
    :goto_4
    iget v2, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    if-lez v2, :cond_5

    .line 183
    iget v2, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    invoke-virtual {p1, v2, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 187
    :cond_5
    const/4 v6, 0x0

    move-object v2, p5

    move v3, p4

    move-object v4, p1

    move/from16 v5, p9

    invoke-static/range {v1 .. v6}, Lcom/alipay/android/app/template/TemplateImageLoader;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/view/View;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 189
    new-instance v2, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;B)V

    .line 190
    instance-of v3, p1, Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Z)V

    .line 191
    invoke-static {v2, p4}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->b(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Z)V

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;I)V

    .line 193
    move-object/from16 v0, p8

    invoke-static {v2, v0}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Lcom/flybird/ILayoutListener;)V

    .line 195
    new-instance v3, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    .line 196
    iput-object v2, v3, Lcom/alipay/android/app/template/TemplateImageLoader$TDisplayer;->a:Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;

    .line 198
    new-instance v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;

    invoke-direct {v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;-><init>()V

    .line 199
    if-gtz p7, :cond_6

    if-eqz p9, :cond_7

    .line 200
    :cond_6
    new-instance v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;

    invoke-direct {v5, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    .line 201
    iput-object p1, v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->b:Landroid/view/View;

    .line 202
    move/from16 v0, p7

    iput v0, v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->a:I

    .line 203
    move/from16 v0, p9

    iput-boolean v0, v5, Lcom/alipay/android/app/template/TemplateImageLoader$TImagePlugin;->c:Z

    .line 204
    iput-object v5, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->plugin:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;

    .line 206
    :cond_7
    iput-object v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    iput-object v3, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->displayer:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APDisplayer;

    .line 208
    iput v9, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->width:I

    .line 209
    iput v7, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->height:I

    .line 210
    iput-object v8, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->path:Ljava/lang/String;

    .line 211
    invoke-static {v2, p1}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->a(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;Landroid/view/View;)V

    .line 212
    invoke-static {v2}, Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;->d(Lcom/alipay/android/app/template/TemplateImageLoader$ImageRequest;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, p1

    .line 213
    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->imageView:Landroid/widget/ImageView;

    .line 216
    :cond_8
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 217
    iget v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->c:I

    invoke-virtual {p1, v1, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 218
    new-instance v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;-><init>(Lcom/alipay/android/app/template/TemplateImageLoader;)V

    .line 219
    iput-object v8, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->a:Ljava/lang/String;

    .line 220
    iput-object p1, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->b:Landroid/view/View;

    .line 221
    move-object/from16 v0, p6

    iput-object v0, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->c:Ljava/lang/String;

    .line 222
    move/from16 v0, p9

    iput-boolean v0, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->e:Z

    .line 223
    iput-boolean p4, v1, Lcom/alipay/android/app/template/TemplateImageLoader$TImageDownloadCallback;->d:Z

    .line 224
    iput-object v1, v4, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;->callback:Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;

    .line 226
    :cond_9
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateImageLoader;->b:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageLoadRequest;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string/jumbo v2, "[pixelWidth]"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "[pixelWidth]"

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_b
    move-object v2, p2

    goto/16 :goto_3

    :cond_c
    move-object v8, v2

    goto/16 :goto_4

    :cond_d
    move v7, v1

    goto/16 :goto_2

    :cond_e
    move v9, v2

    goto/16 :goto_1
.end method
