.class public Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/android/app/ui/quickpay/util/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClipsInfo"
.end annotation


# instance fields
.field private a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

.field private b:I

.field private c:[I

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->d:Z

    .line 306
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 355
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 357
    :goto_1
    int-to-float v3, p1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v3, v0

    .line 358
    int-to-float v3, p2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 359
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 360
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 361
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 363
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 364
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 367
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, p2

    div-int/lit8 v10, v10, 0x2

    invoke-direct {v9, v0, v2, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 370
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 371
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 372
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 373
    const v0, -0xbdbdbe

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 374
    div-int/lit8 v3, p1, 0x2

    .line 375
    div-int/lit8 v2, p2, 0x2

    .line 377
    if-le v3, v2, :cond_2

    move v0, v2

    .line 380
    :goto_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 381
    int-to-float v1, v3

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 383
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 384
    invoke-virtual {v7, v4, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 386
    return-object v5

    .line 354
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto/16 :goto_0

    .line 355
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method

.method public static a(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 401
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 403
    :goto_1
    int-to-float v3, p2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v3, v0

    .line 404
    int-to-float v3, p3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 405
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 406
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 407
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 411
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 414
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 417
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 418
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 419
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 420
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 421
    int-to-float v6, p1

    int-to-float v7, p1

    invoke-virtual {v3, v1, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 424
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 427
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 428
    return-object v2

    .line 400
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 401
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;)[I
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->c:[I

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 341
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->b:I

    .line 342
    return-void
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    .line 334
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->d:Z

    .line 314
    return-void
.end method

.method public final a([I)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->c:[I

    .line 326
    return-void
.end method

.method public final a()[I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->c:[I

    return-object v0
.end method

.method public final b()Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->a:Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsType;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 337
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/util/ImageLoader$ClipsInfo;->b:I

    return v0
.end method
