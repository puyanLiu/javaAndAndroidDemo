.class public Lcom/alipay/android/phone/falcon/img/FalconImgCut;
.super Ljava/lang/Object;


# instance fields
.field private bDebug:Z

.field private callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

.field private maxHeight:I

.field private maxLen:I

.field private minLen:I

.field private scale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x190

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxLen:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->minLen:I

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->scale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->bDebug:Z

    const v0, 0xc350

    iput v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxHeight:I

    return-void
.end method

.method private CalcInSampleSize([I[I[II)I
    .locals 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v3, 0x0

    aget v3, p2, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aget v4, p3, v4

    int-to-float v4, v4

    div-float v5, v3, v4

    int-to-float v3, v1

    int-to-float v4, v0

    div-float v6, v3, v4

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p4, :cond_0

    const/16 v7, 0xb4

    if-ne p4, v7, :cond_2

    :cond_0
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_1

    const/4 v4, 0x1

    :cond_1
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_2

    const/4 v3, 0x1

    :cond_2
    const/16 v7, 0x5a

    if-eq p4, v7, :cond_3

    const/16 v7, 0x10e

    if-ne p4, v7, :cond_5

    :cond_3
    const/high16 v7, 0x40000000    # 2.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    const/4 v4, 0x2

    :cond_4
    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    const/4 v3, 0x2

    :cond_5
    if-gtz v4, :cond_6

    if-lez v3, :cond_10

    :cond_6
    const/4 v5, 0x1

    if-eq v4, v5, :cond_7

    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    :cond_7
    :goto_0
    div-int/lit8 v3, v1, 0x2

    const/4 v4, 0x0

    aget v4, p2, v4

    if-ge v3, v4, :cond_8

    iget v3, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxHeight:I

    if-lt v0, v3, :cond_9

    :cond_8
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_9
    const/4 v3, 0x1

    if-eq v2, v3, :cond_a

    const/4 v3, 0x0

    aget v3, p2, v3

    if-ge v1, v3, :cond_a

    div-int/lit8 v2, v2, 0x2

    :cond_a
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p2, v4

    int-to-float v4, v4

    int-to-float v1, v1

    div-float v1, v4, v1

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p3, v3

    :cond_b
    :goto_1
    return v2

    :cond_c
    :goto_2
    div-int/lit8 v3, v0, 0x2

    const/4 v4, 0x0

    aget v4, p3, v4

    if-ge v3, v4, :cond_d

    iget v3, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxHeight:I

    if-lt v1, v3, :cond_e

    :cond_d
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_e
    const/4 v3, 0x1

    if-eq v2, v3, :cond_f

    const/4 v3, 0x0

    aget v3, p3, v3

    if-ge v0, v3, :cond_f

    div-int/lit8 v2, v2, 0x2

    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p3, v4

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    aput v0, p2, v3

    goto :goto_1

    :cond_10
    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p2, v4

    if-gt v3, v4, :cond_11

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x0

    aget v4, p3, v4

    if-le v3, v4, :cond_b

    :cond_11
    cmpl-float v3, v6, v5

    if-lez v3, :cond_13

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p3, v3

    :cond_12
    :goto_3
    div-int/lit8 v0, v1, 0x2

    const/4 v3, 0x0

    aget v3, p2, v3

    if-lt v0, v3, :cond_14

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_13
    cmpg-float v3, v6, v5

    if-gez v3, :cond_12

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p3, v4

    int-to-float v4, v4

    int-to-float v0, v0

    div-float v0, v4, v0

    int-to-float v4, v1

    mul-float/2addr v0, v4

    float-to-int v0, v0

    aput v0, p2, v3

    goto :goto_3

    :cond_14
    const/4 v0, 0x1

    if-eq v2, v0, :cond_b

    const/4 v0, 0x0

    aget v0, p2, v0

    if-ge v1, v0, :cond_b

    div-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private CalcScale(IIII)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-le p1, p3, :cond_0

    if-le p2, p4, :cond_0

    int-to-float v0, p3

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_0
    return v0
.end method

.method private GetFactoryOption(Ljava/io/File;[I[II)Landroid/graphics/BitmapFactory$Options;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, p1, v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DecodeWidthHeight(Landroid/graphics/BitmapFactory$Options;Ljava/io/File;[I)V

    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DataFormattoType(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->CalcInSampleSize([I[I[II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-object v1
.end method

.method private closeQuietly(Ljava/io/Closeable;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private judgeBeyondRatio(IIF)I
    .locals 2

    int-to-float v0, p1

    int-to-float v1, p2

    div-float/2addr v0, v1

    cmpg-float v1, v0, p3

    if-gez v1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    return-void
.end method

.method private setBitmapFactoryBackgroud(Landroid/graphics/BitmapFactory$Options;I)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    iput-boolean v1, p1, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    return-void

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public calcultDesWidthHeight(III[I)V
    .locals 6

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    div-int/lit8 v3, p3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    move v0, p1

    move v1, p2

    move v2, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V

    :cond_0
    return-void
.end method

.method public calcultDesWidthHeight_new(Ljava/io/File;IIIF[I)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez p2, :cond_5

    if-lez p3, :cond_5

    if-lez p4, :cond_5

    int-to-float v0, p4

    mul-float/2addr v0, p5

    float-to-int v3, v0

    if-nez p1, :cond_0

    move v0, p2

    move v1, p3

    move v2, p4

    move v4, p5

    move-object v5, p6

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V

    :goto_0
    move v0, v6

    :goto_1
    move v7, v0

    :goto_2
    return v7

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Decode Fail ,AbsolutePath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->falconImgLog(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    :cond_3
    move v8, v0

    move v0, v1

    move v1, v8

    :cond_4
    move v2, p4

    move v4, p5

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method public calcultDesWidthHeight_new(Ljava/io/File;III[I)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez p2, :cond_5

    if-lez p3, :cond_5

    if-lez p4, :cond_5

    :try_start_0
    div-int/lit8 v3, p4, 0x2

    if-nez p1, :cond_0

    const/high16 v4, 0x3f000000    # 0.5f

    move v0, p2

    move v1, p3

    move v2, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V

    :goto_0
    move v0, v6

    :goto_1
    move v7, v0

    :goto_2
    return v7

    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v0, :cond_1

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Decode Fail ,AbsolutePath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->falconImgLog(Ljava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_1

    :cond_2
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v2

    const/16 v4, 0x5a

    if-eq v2, v4, :cond_3

    const/16 v4, 0x10e

    if-ne v2, v4, :cond_4

    :cond_3
    move v8, v0

    move v0, v1

    move v1, v8

    :cond_4
    const/high16 v4, 0x3f000000    # 0.5f

    move v2, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/JniFalconImg;->calcultDesWidthHeight(IIIIF[I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_5
    move v0, v7

    goto :goto_1
.end method

.method public calcultDesWidthHeight_new(Ljava/io/File;[I)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v3, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v3, :cond_2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Decode Fail ,AbsolutePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->falconImgLog(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    aput v4, p2, v3

    const/4 v3, 0x1

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    aput v2, p2, v3

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_3

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x0

    aget v2, p2, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    aget v4, p2, v4

    aput v4, p2, v3

    const/4 v3, 0x1

    aput v2, p2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public cutImage_backgroud(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 12

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v7, 0x0

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v8

    const/16 v0, 0x5a

    if-eq v8, v0, :cond_3

    const/16 v0, 0x10e

    if-ne v8, v0, :cond_8

    :cond_3
    int-to-float v0, p3

    int-to-float v1, p2

    div-float/2addr v0, v1

    move v3, v0

    move v4, p2

    move v6, p3

    :goto_1
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v9, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x352

    if-gt v4, v2, :cond_4

    const/16 v2, 0x352

    if-le v6, v2, :cond_9

    :cond_4
    const/4 v2, 0x1

    invoke-direct {p0, v9, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactoryBackgroud(Landroid/graphics/BitmapFactory$Options;I)V

    :goto_2
    int-to-float v2, v1

    int-to-float v5, v0

    div-float v5, v2, v5

    const/4 v2, 0x0

    cmpl-float v10, v5, v3

    if-lez v10, :cond_a

    const/4 v2, 0x1

    :cond_5
    :goto_3
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v2, :pswitch_data_0

    :goto_4
    move-object v0, v7

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne v1, p2, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-eq v1, p3, :cond_1

    :cond_6
    const/4 v1, 0x0

    invoke-static {v0, p2, p3, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_7
    move-object v0, v1

    goto :goto_0

    :cond_8
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    move v3, v0

    move v4, p3

    move v6, p2

    goto :goto_1

    :cond_9
    const/4 v2, 0x2

    :try_start_1
    invoke-direct {p0, v9, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactoryBackgroud(Landroid/graphics/BitmapFactory$Options;I)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_a
    cmpg-float v3, v5, v3

    if-gez v3, :cond_5

    const/4 v2, 0x2

    goto :goto_3

    :pswitch_0
    const/4 v2, 0x1

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_6
    div-int/lit8 v3, v2, 0x2

    if-lt v3, v6, :cond_b

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_6

    :cond_b
    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    if-ge v2, v6, :cond_c

    div-int/lit8 v0, v0, 0x2

    :cond_c
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :pswitch_1
    const/4 v2, 0x1

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_7
    div-int/lit8 v3, v1, 0x2

    if-lt v3, v4, :cond_d

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_d
    const/4 v3, 0x1

    if-eq v0, v3, :cond_e

    if-ge v1, v4, :cond_e

    div-int/lit8 v0, v0, 0x2

    :cond_e
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v6

    div-float/2addr v2, v1

    float-to-int v3, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_5

    :pswitch_2
    const/4 v2, 0x1

    move v11, v0

    move v0, v2

    move v2, v1

    move v1, v11

    :goto_8
    div-int/lit8 v3, v2, 0x2

    if-lt v3, v6, :cond_f

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_8

    :cond_f
    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    if-ge v2, v6, :cond_10

    div-int/lit8 v0, v0, 0x2

    :cond_10
    iput v0, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float v2, v4

    div-float/2addr v2, v1

    float-to-int v4, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_backgroud(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_backgroud_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_backgroud_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;
    .locals 15

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_2

    :cond_0
    const/4 v9, 0x0

    :cond_1
    :goto_0
    return-object v9

    :cond_2
    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/16 v4, 0x5a

    move/from16 v0, p4

    if-eq v0, v4, :cond_3

    const/16 v4, 0x10e

    move/from16 v0, p4

    if-ne v0, v4, :cond_9

    :cond_3
    move/from16 v0, p3

    int-to-float v4, v0

    move/from16 v0, p2

    int-to-float v5, v0

    div-float/2addr v4, v5

    move v5, v4

    move/from16 v6, p2

    move/from16 v8, p3

    :goto_1
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    iput-boolean v3, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v10, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v10, v3}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x0

    :try_start_2
    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v4, v3

    int-to-float v7, v2

    div-float v7, v4, v7

    const/4 v4, 0x0

    cmpl-float v13, v7, v5

    if-lez v13, :cond_a

    const/4 v4, 0x1

    :cond_4
    :goto_2
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    const/16 v5, 0x352

    if-gt v8, v5, :cond_5

    const/16 v5, 0x352

    if-le v6, v5, :cond_b

    :cond_5
    const/4 v5, 0x1

    invoke-direct {p0, v12, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactoryBackgroud(Landroid/graphics/BitmapFactory$Options;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_3
    packed-switch v4, :pswitch_data_0

    move-object v2, v9

    :goto_4
    move-object v9, v2

    :goto_5
    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :goto_6
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    move/from16 v0, p2

    if-ne v2, v0, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, p3

    if-eq v2, v0, :cond_1

    :cond_7
    const/4 v2, 0x0

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v9, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v2, v9, :cond_8

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_8
    move-object v9, v2

    goto/16 :goto_0

    :cond_9
    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    div-float/2addr v4, v5

    move v5, v4

    move/from16 v6, p3

    move/from16 v8, p2

    goto :goto_1

    :cond_a
    cmpg-float v5, v7, v5

    if-gez v5, :cond_4

    const/4 v4, 0x2

    goto :goto_2

    :cond_b
    const/4 v5, 0x2

    :try_start_3
    invoke-direct {p0, v12, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactoryBackgroud(Landroid/graphics/BitmapFactory$Options;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v2

    move-object v2, v10

    move-object v3, v11

    :goto_7
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_c
    invoke-direct {p0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :pswitch_0
    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v3

    move v3, v14

    :goto_8
    :try_start_4
    div-int/lit8 v5, v4, 0x2

    if-lt v5, v8, :cond_d

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_8

    :cond_d
    const/4 v5, 0x1

    if-eq v2, v5, :cond_e

    if-ge v4, v8, :cond_e

    div-int/lit8 v2, v2, 0x2

    :cond_e
    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v2, 0x0

    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_5

    :pswitch_1
    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v3

    move v3, v14

    :goto_9
    div-int/lit8 v5, v3, 0x2

    if-lt v5, v6, :cond_f

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_9

    :cond_f
    const/4 v5, 0x1

    if-eq v2, v5, :cond_10

    if-ge v3, v6, :cond_10

    div-int/lit8 v2, v2, 0x2

    :cond_10
    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v2, 0x0

    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v8

    div-float/2addr v4, v3

    float-to-int v5, v4

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    goto/16 :goto_5

    :pswitch_2
    const/4 v4, 0x1

    move v14, v2

    move v2, v4

    move v4, v3

    move v3, v14

    :goto_a
    div-int/lit8 v5, v4, 0x2

    if-lt v5, v8, :cond_11

    div-int/lit8 v4, v4, 0x2

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_a

    :cond_11
    const/4 v5, 0x1

    if-eq v2, v5, :cond_12

    if-ge v4, v8, :cond_12

    div-int/lit8 v2, v2, 0x2

    :cond_12
    iput v2, v12, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v2, 0x1

    invoke-virtual {p0, v4, v3, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v2, 0x0

    invoke-static {v10, v2, v12}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    int-to-float v3, v8

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v6

    div-float/2addr v4, v3

    float-to-int v6, v4

    invoke-virtual {v7, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p4

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v2

    goto/16 :goto_4

    :catchall_0
    move-exception v4

    move-object v10, v2

    move-object v11, v3

    move-object v2, v4

    :goto_b
    if-eqz v11, :cond_13

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_13
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v3

    move-object v10, v2

    move-object v2, v3

    goto :goto_b

    :catchall_2
    move-exception v2

    goto :goto_b

    :catch_1
    move-exception v4

    goto/16 :goto_7

    :catch_2
    move-exception v3

    move-object v3, v11

    goto/16 :goto_7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_common(Ljava/io/InputStream;IIFI)Landroid/graphics/Bitmap;
    .locals 15

    if-nez p1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    move/from16 v0, p2

    int-to-float v1, v0

    mul-float v1, v1, p4

    float-to-int v8, v1

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    :try_start_1
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v10, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v10, v4}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v5, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v0, p4

    invoke-direct {p0, v5, v4, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->judgeBeyondRatio(IIF)I

    move-result v1

    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/4 v12, 0x2

    invoke-direct {p0, v7, v12}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    packed-switch v1, :pswitch_data_0

    move/from16 p2, v2

    move v1, v3

    move-object v2, v9

    :goto_1
    move-object v3, v2

    move v2, v1

    move/from16 v1, p2

    :goto_2
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_2
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :goto_3
    if-nez v3, :cond_c

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    int-to-float v1, v5

    move/from16 v0, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    int-to-float v2, v4

    move/from16 v0, p2

    int-to-float v3, v0

    div-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v4

    mul-float/2addr v1, v2

    int-to-float v2, v5

    div-float/2addr v1, v2

    float-to-int v1, v1

    move/from16 v8, p2

    move/from16 p2, v1

    :goto_4
    const/4 v1, 0x1

    :goto_5
    :try_start_3
    div-int/lit8 v2, v5, 0x2

    if-lt v2, v8, :cond_4

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_3
    move/from16 v0, p2

    int-to-float v1, v0

    int-to-float v2, v5

    mul-float/2addr v1, v2

    int-to-float v2, v4

    div-float/2addr v1, v2

    float-to-int v1, v1

    move v8, v1

    goto :goto_4

    :cond_4
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    if-ge v5, v8, :cond_5

    div-int/lit8 v1, v1, 0x2

    :cond_5
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v1, 0x0

    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    int-to-float v2, v8

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v3

    move/from16 v1, p2

    move v2, v8

    goto :goto_2

    :pswitch_1
    const/4 v1, 0x1

    :goto_6
    :try_start_4
    div-int/lit8 v12, v4, 0x2

    int-to-float v12, v12

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v13, v13, p4

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_6

    :cond_6
    const/4 v12, 0x1

    if-eq v1, v12, :cond_7

    int-to-float v12, v4

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v13, v13, p4

    cmpg-float v12, v12, v13

    if-gez v12, :cond_7

    div-int/lit8 v1, v1, 0x2

    :cond_7
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v1, 0x0

    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p4

    float-to-int v4, v2

    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v4

    div-float/2addr v2, v3

    :try_start_5
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v3

    move v1, v8

    move/from16 v2, p2

    goto/16 :goto_2

    :pswitch_2
    const/4 v1, 0x1

    :goto_7
    :try_start_6
    div-int/lit8 v12, v5, 0x2

    int-to-float v12, v12

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v13, v13, p4

    cmpg-float v12, v12, v13

    if-ltz v12, :cond_8

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v1, v1, 0x2

    goto :goto_7

    :cond_8
    const/4 v12, 0x1

    if-eq v1, v12, :cond_9

    int-to-float v12, v5

    move/from16 v0, p2

    int-to-float v13, v0

    mul-float v13, v13, p4

    cmpg-float v12, v12, v13

    if-gez v12, :cond_9

    div-int/lit8 v1, v1, 0x2

    :cond_9
    iput v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-virtual {v10}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v1, 0x1

    invoke-virtual {p0, v5, v4, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    const/4 v1, 0x0

    invoke-static {v10, v1, v7}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result v2

    int-to-float v2, v2

    div-float v2, v2, p4

    float-to-int v5, v2

    move/from16 v0, p2

    int-to-float v2, v0

    int-to-float v3, v5

    div-float/2addr v2, v3

    :try_start_7
    invoke-virtual {v6, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    move/from16 v0, p5

    int-to-float v2, v0

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v2, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v1

    move-object v2, v1

    move v1, v8

    goto/16 :goto_1

    :catch_0
    move-exception v5

    move/from16 p2, v2

    move-object v2, v4

    :goto_8
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    invoke-direct {p0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    move/from16 v1, p2

    move v2, v3

    move-object v3, v9

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    move-object v10, v1

    move-object v11, v4

    move-object v1, v2

    :goto_9
    if-eqz v11, :cond_b

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v11}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_b
    invoke-direct {p0, v10}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    :cond_c
    const/16 v4, 0x5a

    move/from16 v0, p5

    if-eq v0, v4, :cond_d

    const/16 v4, 0x10e

    move/from16 v0, p5

    if-ne v0, v4, :cond_e

    :cond_d
    move v14, v2

    move v2, v1

    move v1, v14

    :cond_e
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    if-ne v4, v2, :cond_f

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ne v4, v1, :cond_f

    move-object v1, v3

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x0

    invoke-static {v3, v2, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    move-object v10, v1

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v1

    goto :goto_9

    :catch_1
    move-exception v4

    move/from16 p2, v2

    move-object v2, v11

    goto :goto_8

    :catch_2
    move-exception v1

    move-object v1, v10

    move/from16 p2, v2

    move-object v2, v11

    goto :goto_8

    :catch_3
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    move v3, v8

    goto :goto_8

    :catch_4
    move-exception v1

    move-object v1, v10

    move-object v2, v11

    move/from16 v3, p2

    move/from16 p2, v8

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_keepRatio(Ljava/io/File;II)Landroid/graphics/Bitmap;
    .locals 10

    const/16 v9, 0x2710

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v3, [I

    new-array v4, v3, [I

    aput p2, v1, v2

    aput p3, v4, v2

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v5

    invoke-static {v5, v1, v4}, Lcom/alipay/android/phone/falcon/img/dataFormat;->GetRotateSize(I[I[I)V

    :try_start_0
    invoke-direct {p0, p1, v1, v4, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->GetFactoryOption(Ljava/io/File;[I[II)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_5

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :goto_1
    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-ge v6, v9, :cond_2

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-lt v6, v9, :cond_3

    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v6, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v5}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v0

    move v4, v3

    move v3, v2

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "keep ratio out of memory: inSampleSizeOld:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->falconImgLog(Ljava/lang/String;)V

    mul-int/lit8 v4, v4, 0x2

    :try_start_4
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_4

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v5}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v4

    move v4, v3

    move v3, v2

    goto :goto_2

    :catch_3
    move-exception v3

    move v3, v2

    goto :goto_2

    :catch_4
    move-exception v6

    goto :goto_2

    :cond_5
    move v4, v3

    move v3, v2

    goto :goto_1
.end method

.method public cutImage_keepRatio(Ljava/io/InputStream;II)Landroid/graphics/Bitmap;
    .locals 1

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_keepRatio_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_keepRatio_common(Ljava/io/InputStream;III)Landroid/graphics/Bitmap;
    .locals 11

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v7, 0x0

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p4, v0, :cond_3

    :cond_2
    move v10, p3

    move p3, p2

    move p2, v10

    :cond_3
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v8, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DataFormattoType(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v0

    if-gez v0, :cond_5

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p2, :cond_9

    if-gt v2, p3, :cond_9

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {v8}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x0

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p4, :cond_7

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_7
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_9
    const/4 v3, 0x2

    :try_start_4
    new-array v3, v3, [I

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p2, v4, v6

    const/4 v6, 0x0

    aput p3, v5, v6

    const/4 v6, 0x0

    aput v0, v3, v6

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-direct {p0, v3, v4, v5, p4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->CalcInSampleSize([I[I[II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v0, :cond_d

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :goto_1
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_a

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/16 v2, 0x2710

    if-lt v0, v2, :cond_b

    :cond_a
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :cond_b
    invoke-virtual {v8}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x0

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, p4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v0

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_c
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_d
    :try_start_5
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_e
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v7

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    move-object v8, v0

    move-object v9, v1

    move-object v0, v2

    :goto_3
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_f
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v1, v9

    goto :goto_2
.end method

.method public cutImage_keepRatio_common_setColor(Ljava/io/InputStream;IIIZ)Landroid/graphics/Bitmap;
    .locals 11

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v7, 0x0

    const/16 v0, 0x5a

    if-eq p4, v0, :cond_2

    const/16 v0, 0x10e

    if-ne p4, v0, :cond_3

    :cond_2
    move v10, p3

    move p3, p2

    move p2, v10

    :cond_3
    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->InputStreamToByteArray(Ljava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v9

    :try_start_1
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v8, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v8, v2}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v0, 0x0

    :try_start_2
    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget-object v0, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/phone/falcon/img/dataFormat;->DataFormattoType(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-gez v0, :cond_5

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_4
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    :try_start_3
    invoke-direct {p0, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    if-eqz p5, :cond_7

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v0, p2, :cond_b

    if-gt v2, p3, :cond_b

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {v8}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x0

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz p4, :cond_9

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_6
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_7
    :try_start_4
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v8

    move-object v1, v9

    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v1}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_8
    invoke-direct {p0, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    move-object v0, v7

    goto/16 :goto_0

    :cond_9
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x2

    :try_start_5
    new-array v3, v3, [I

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput p2, v4, v6

    const/4 v6, 0x0

    aput p3, v5, v6

    const/4 v6, 0x0

    aput v0, v3, v6

    const/4 v0, 0x1

    aput v2, v3, v0

    invoke-direct {p0, v3, v4, v5, p4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->CalcInSampleSize([I[I[II)I

    move-result v0

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v0, :cond_d

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v0, v2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :goto_3
    invoke-virtual {v8}, Lcom/alipay/android/phone/falcon/img/RepeatableInputStream;->flip()V

    const/4 v0, 0x0

    invoke-static {v8, v0, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, p4

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_c
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    :cond_d
    :try_start_6
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-direct {p0, v9}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    :cond_e
    invoke-direct {p0, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v2

    move-object v8, v0

    move-object v9, v1

    move-object v0, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception v2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-object v1, v9

    goto/16 :goto_2
.end method

.method public cutImage_keepRatio_setColor(Ljava/io/File;IIZ)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-array v1, v3, [I

    new-array v4, v3, [I

    aput p2, v1, v2

    aput p3, v4, v2

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v5

    invoke-static {v5, v1, v4}, Lcom/alipay/android/phone/falcon/img/dataFormat;->GetRotateSize(I[I[I)V

    :try_start_0
    invoke-direct {p0, p1, v1, v4, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->GetFactoryOption(Ljava/io/File;[I[II)Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    if-eqz p4, :cond_2

    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    :goto_1
    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_4

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v6, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v6, v7

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {p0, v6, v7, v8}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :goto_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v5}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v0

    goto :goto_0

    :cond_2
    :try_start_4
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    move v4, v3

    move v3, v2

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "keep ratio out of memory:inSampleSizeOld"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->falconImgLog(Ljava/lang/String;)V

    mul-int/lit8 v4, v4, 0x2

    :try_start_5
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    if-eqz v4, :cond_3

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v2, v4

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v2, v4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v5}, Lcom/alipay/android/phone/falcon/img/dataFormat;->ScaleRotateImg(Landroid/graphics/Bitmap;FI)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object v1, v0

    move v4, v3

    move v3, v2

    goto :goto_3

    :catch_3
    move-exception v3

    move v3, v2

    goto :goto_3

    :catch_4
    move-exception v6

    goto :goto_3

    :cond_4
    move v4, v3

    move v3, v2

    goto :goto_2
.end method

.method public cutImage_keepRatio_setColor(Ljava/io/InputStream;IIZ)Landroid/graphics/Bitmap;
    .locals 6

    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_keepRatio_common_setColor(Ljava/io/InputStream;IIIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_keepRatio_size(II)I
    .locals 1

    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x5

    goto :goto_0
.end method

.method public cutImage_new(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxLen:I

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->minLen:I

    iget v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->scale:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_new(Ljava/io/File;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_new(Ljava/io/File;IIF)Landroid/graphics/Bitmap;
    .locals 11

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    int-to-float v0, p2

    mul-float/2addr v0, p4

    float-to-int v7, v0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/alipay/android/phone/falcon/img/dataFormat;->calc_rotate(Ljava/io/File;)I

    move-result v8

    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v2, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/4 v5, 0x2

    invoke-direct {p0, v6, v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->setBitmapFactory(Landroid/graphics/BitmapFactory$Options;I)V

    invoke-direct {p0, v2, v1, p4}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->judgeBeyondRatio(IIF)I

    move-result v9

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    packed-switch v9, :pswitch_data_0

    move v1, v0

    move v2, v3

    move-object v0, v4

    :goto_1
    const/16 v3, 0x5a

    if-eq v8, v3, :cond_2

    const/16 v3, 0x10e

    if-ne v8, v3, :cond_3

    :cond_2
    move v10, v2

    move v2, v1

    move v1, v10

    :cond_3
    if-nez v0, :cond_b

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_0
    int-to-float v0, v2

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, v1

    int-to-float v4, p2

    div-float/2addr v3, v4

    cmpl-float v0, v0, v3

    if-lez v0, :cond_4

    int-to-float v0, p2

    int-to-float v3, v1

    mul-float/2addr v0, v3

    int-to-float v3, v2

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v7, p2

    move p2, v0

    :goto_2
    const/4 v0, 0x1

    move v10, v1

    move v1, v2

    move v2, v0

    move v0, v10

    :goto_3
    div-int/lit8 v3, v1, 0x2

    if-lt v3, v7, :cond_5

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_4
    int-to-float v0, p2

    int-to-float v3, v2

    mul-float/2addr v0, v3

    int-to-float v3, v1

    div-float/2addr v0, v3

    float-to-int v0, v0

    move v7, v0

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    if-ge v1, v7, :cond_6

    div-int/lit8 v2, v2, 0x2

    :cond_6
    iput v2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    int-to-float v1, v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, p2

    move v2, v7

    goto :goto_1

    :pswitch_1
    const/4 v0, 0x1

    :goto_4
    div-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    int-to-float v4, p2

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_7

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_4

    :cond_7
    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    int-to-float v3, v1

    int-to-float v4, p2

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_8

    div-int/lit8 v0, v0, 0x2

    :cond_8
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p4

    float-to-int v3, v1

    int-to-float v1, p2

    int-to-float v2, v3

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, v7

    move v2, p2

    goto/16 :goto_1

    :pswitch_2
    const/4 v0, 0x1

    :goto_5
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    int-to-float v4, p2

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_9

    div-int/lit8 v2, v2, 0x2

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v0, v0, 0x2

    goto :goto_5

    :cond_9
    const/4 v3, 0x1

    if-eq v0, v3, :cond_a

    int-to-float v3, v2

    int-to-float v4, p2

    mul-float/2addr v4, p4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    div-int/lit8 v0, v0, 0x2

    :cond_a
    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x1

    invoke-virtual {p0, v2, v1, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->doCallBackForce(IIZ)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, p4

    float-to-int v4, v1

    int-to-float v1, p2

    int-to-float v2, v4

    div-float/2addr v1, v2

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float v1, v8

    invoke-virtual {v5, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, p2

    move v2, v7

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v2, :cond_c

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_c
    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eq v1, v0, :cond_d

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_d
    move-object v0, v1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public cutImage_new(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->maxLen:I

    iget v1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->minLen:I

    iget v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->scale:F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_new(Ljava/io/InputStream;IIF)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public cutImage_new(Ljava/io/InputStream;IIF)Landroid/graphics/Bitmap;
    .locals 6

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->cutImage_common(Ljava/io/InputStream;IIFI)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public doCallBackForce(IIZ)V
    .locals 4

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    if-eqz v0, :cond_0

    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x5

    int-to-long v0, v0

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    invoke-interface {v2, v0, v1, p3}, Lcom/alipay/android/phone/falcon/img/CutCallBack;->onCalcMemSize(JZ)V

    iget-boolean v2, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->bDebug:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x200000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "tmp_w="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";tmp_h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->falconImgLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public falconImgLog(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "FalconImg"

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registeCallBack(Lcom/alipay/android/phone/falcon/img/CutCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    return-void
.end method

.method public unregisteCallBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/img/FalconImgCut;->callBack:Lcom/alipay/android/phone/falcon/img/CutCallBack;

    return-void
.end method
