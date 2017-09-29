.class public Lcom/alipay/android/app/template/util/UiUtil;
.super Ljava/lang/Object;
.source "UiUtil.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RtlHardcoded",
        "InlinedApi"
    }
.end annotation


# static fields
.field public static final DEFAULT_TEXT_SIZE:I = 0x10

.field public static DP:F

.field public static NAVIGATION_BAR_HEIGHT:I

.field public static SCREEN_HEIGHT:I

.field public static SCREEN_WIDTH:I

.field public static STATUS_BAR_HEIGHT:I

.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    .line 58
    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 59
    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    .line 60
    sput v1, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I

    .line 61
    sput v2, Lcom/alipay/android/app/template/util/UiUtil;->NAVIGATION_BAR_HEIGHT:I

    .line 63
    sput-boolean v2, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 192
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 193
    const/16 v0, 0xff

    aput v0, v1, v5

    .line 194
    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 195
    const-string/jumbo v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 194
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 196
    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 197
    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 205
    return-object v1

    .line 198
    :cond_0
    if-ne v0, v5, :cond_1

    .line 199
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 200
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    aput v3, v1, v0

    .line 197
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v0

    goto :goto_1
.end method

.method public static blur(Landroid/graphics/Bitmap;Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 478
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 482
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 483
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 480
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 484
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 486
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 487
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 488
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 489
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 490
    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/alipay/android/app/template/util/UiUtil;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 492
    return-object v0
.end method

.method public static convertPxToDp(I)I
    .locals 2

    .prologue
    .line 266
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v1

    .line 267
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v0

    .line 268
    if-nez v1, :cond_0

    .line 269
    int-to-float v0, v0

    sget v1, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 271
    :cond_0
    return v0
.end method

.method public static convertUnit(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 233
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/android/app/template/util/UiUtil;->convertUnit(Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static convertUnit(Ljava/lang/String;Z)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 237
    const-string/jumbo v1, "auto"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const/high16 v1, -0x40000000    # -2.0f

    .line 240
    invoke-static {v0, v1}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    .line 262
    :goto_0
    return v0

    .line 242
    :cond_0
    const-string/jumbo v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    const/high16 v0, 0x40000000    # 2.0f

    .line 253
    :cond_1
    :goto_1
    const-string/jumbo v1, "%"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "px"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    const/4 v1, 0x0

    .line 255
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 257
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 262
    :cond_2
    :goto_2
    float-to-int v1, v1

    invoke-static {v1, v0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->makeUnitSpec(II)I

    move-result v0

    goto :goto_0

    .line 244
    :cond_3
    const-string/jumbo v1, "px"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    if-eqz p1, :cond_1

    .line 248
    const/high16 v0, 0x20000000

    goto :goto_1

    .line 258
    :catch_0
    move-exception v2

    .line 259
    const-string/jumbo v3, "UiUtil"

    const-string/jumbo v4, "exception: "

    invoke-static {v3, v4, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static defaultScale(IILandroid/graphics/drawable/BitmapDrawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 855
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 857
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v2, v0

    .line 858
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v3, v0

    .line 859
    int-to-float v0, p0

    div-float/2addr v0, v2

    int-to-float v4, p1

    div-float/2addr v4, v3

    sub-float/2addr v0, v4

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    .line 861
    int-to-float v0, p1

    div-float/2addr v0, v3

    .line 865
    :goto_0
    mul-float v4, v2, v0

    float-to-int v4, v4

    .line 866
    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 867
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 868
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 869
    new-instance v7, Landroid/graphics/Rect;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v7, v8, v8, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 870
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v8, v8, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 871
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 872
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 873
    invoke-virtual {v6, v1, v7, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 874
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0

    .line 863
    :cond_0
    int-to-float v0, p0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 34

    .prologue
    .line 499
    if-nez p2, :cond_d

    .line 500
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 505
    :goto_0
    if-gtz p1, :cond_0

    .line 506
    const/4 v2, 0x0

    .line 700
    :goto_1
    return-object v2

    .line 509
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 510
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 512
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 513
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 515
    add-int/lit8 v21, v5, -0x1

    .line 516
    add-int/lit8 v22, v9, -0x1

    .line 517
    mul-int v4, v5, v9

    .line 518
    add-int v6, p1, p1

    add-int/lit8 v23, v6, 0x1

    .line 520
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 521
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 522
    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 524
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 526
    add-int/lit8 v4, v23, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 527
    mul-int v6, v4, v4

    .line 528
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 529
    const/4 v4, 0x0

    :goto_2
    mul-int/lit16 v7, v6, 0x100

    if-lt v4, v7, :cond_1

    .line 533
    const/4 v6, 0x0

    .line 535
    const/4 v4, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 540
    add-int/lit8 v29, p1, 0x1

    .line 544
    const/4 v7, 0x0

    move/from16 v19, v6

    move v13, v6

    move/from16 v20, v7

    :goto_3
    move/from16 v0, v20

    if-lt v0, v9, :cond_2

    .line 617
    const/4 v14, 0x0

    :goto_4
    if-lt v14, v5, :cond_7

    .line 699
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    .line 530
    :cond_1
    div-int v7, v4, v6

    aput v7, v28, v4

    .line 529
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 545
    :cond_2
    const/4 v6, 0x0

    .line 546
    move/from16 v0, p1

    neg-int v7, v0

    move v8, v6

    move v10, v6

    move v11, v6

    move v12, v6

    move v14, v7

    move v15, v6

    move/from16 v16, v6

    move/from16 v17, v6

    move v7, v6

    :goto_5
    move/from16 v0, p1

    if-le v14, v0, :cond_3

    .line 568
    const/4 v14, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move/from16 v14, p1

    :goto_6
    if-lt v15, v5, :cond_5

    .line 615
    add-int v6, v19, v5

    .line 544
    add-int/lit8 v7, v20, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_3

    .line 547
    :cond_3
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v18

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v18

    add-int v18, v18, v13

    aget v18, v3, v18

    .line 548
    add-int v30, v14, p1

    aget-object v30, v4, v30

    .line 549
    const/16 v31, 0x0

    const/high16 v32, 0xff0000

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x10

    aput v32, v30, v31

    .line 550
    const/16 v31, 0x1

    const v32, 0xff00

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x8

    aput v32, v30, v31

    .line 551
    const/16 v31, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v30, v31

    .line 552
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v29, v18

    .line 553
    const/16 v31, 0x0

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v17, v17, v31

    .line 554
    const/16 v31, 0x1

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v16, v16, v31

    .line 555
    const/16 v31, 0x2

    aget v31, v30, v31

    mul-int v18, v18, v31

    add-int v15, v15, v18

    .line 556
    if-lez v14, :cond_4

    .line 557
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v8, v8, v18

    .line 558
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v7, v7, v18

    .line 559
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v6, v6, v18

    .line 546
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 561
    :cond_4
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v12, v12, v18

    .line 562
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v11, v11, v18

    .line 563
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v10, v10, v18

    goto :goto_7

    .line 570
    :cond_5
    aget v30, v28, v18

    aput v30, v24, v13

    .line 571
    aget v30, v28, v17

    aput v30, v25, v13

    .line 572
    aget v30, v28, v16

    aput v30, v26, v13

    .line 574
    sub-int v18, v18, v12

    .line 575
    sub-int v17, v17, v11

    .line 576
    sub-int v16, v16, v10

    .line 578
    sub-int v30, v14, p1

    add-int v30, v30, v23

    .line 579
    rem-int v30, v30, v23

    aget-object v30, v4, v30

    .line 581
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v12, v12, v31

    .line 582
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v11, v11, v31

    .line 583
    const/16 v31, 0x2

    aget v31, v30, v31

    sub-int v10, v10, v31

    .line 585
    if-nez v20, :cond_6

    .line 586
    add-int v31, v15, p1

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    aput v31, v27, v15

    .line 588
    :cond_6
    aget v31, v27, v15

    add-int v31, v31, v19

    aget v31, v3, v31

    .line 590
    const/16 v32, 0x0

    const/high16 v33, 0xff0000

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x10

    aput v33, v30, v32

    .line 591
    const/16 v32, 0x1

    const v33, 0xff00

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x8

    aput v33, v30, v32

    .line 592
    const/16 v32, 0x2

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v30, v32

    .line 594
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v8, v8, v31

    .line 595
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v7, v7, v31

    .line 596
    const/16 v31, 0x2

    aget v30, v30, v31

    add-int v6, v6, v30

    .line 598
    add-int v18, v18, v8

    .line 599
    add-int v17, v17, v7

    .line 600
    add-int v16, v16, v6

    .line 602
    add-int/lit8 v14, v14, 0x1

    rem-int v14, v14, v23

    .line 603
    rem-int v30, v14, v23

    aget-object v30, v4, v30

    .line 605
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v12, v12, v31

    .line 606
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v11, v11, v31

    .line 607
    const/16 v31, 0x2

    aget v31, v30, v31

    add-int v10, v10, v31

    .line 609
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v8, v8, v31

    .line 610
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v7, v7, v31

    .line 611
    const/16 v31, 0x2

    aget v30, v30, v31

    sub-int v6, v6, v30

    .line 613
    add-int/lit8 v13, v13, 0x1

    .line 568
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 618
    :cond_7
    const/4 v7, 0x0

    .line 619
    move/from16 v0, p1

    neg-int v6, v0

    mul-int v8, v6, v5

    .line 620
    move/from16 v0, p1

    neg-int v6, v0

    move v10, v7

    move v11, v7

    move v12, v7

    move v13, v7

    move/from16 v18, v6

    move v15, v7

    move/from16 v16, v7

    move/from16 v17, v7

    move v6, v8

    move v8, v7

    :goto_8
    move/from16 v0, v18

    move/from16 v1, p1

    if-le v0, v1, :cond_8

    .line 651
    const/4 v6, 0x0

    move/from16 v18, v16

    move/from16 v19, v17

    move/from16 v16, v6

    move/from16 v17, v15

    move/from16 v15, p1

    move v6, v7

    move v7, v8

    move v8, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v14

    :goto_9
    move/from16 v0, v16

    if-lt v0, v9, :cond_b

    .line 617
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 621
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v20, v19, v14

    .line 623
    add-int v19, v18, p1

    aget-object v21, v4, v19

    .line 625
    const/16 v19, 0x0

    aget v30, v24, v20

    aput v30, v21, v19

    .line 626
    const/16 v19, 0x1

    aget v30, v25, v20

    aput v30, v21, v19

    .line 627
    const/16 v19, 0x2

    aget v30, v26, v20

    aput v30, v21, v19

    .line 629
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v30, v29, v19

    .line 631
    aget v19, v24, v20

    mul-int v19, v19, v30

    add-int v19, v19, v17

    .line 632
    aget v17, v25, v20

    mul-int v17, v17, v30

    add-int v17, v17, v16

    .line 633
    aget v16, v26, v20

    mul-int v16, v16, v30

    add-int v16, v16, v15

    .line 635
    if-lez v18, :cond_a

    .line 636
    const/4 v15, 0x0

    aget v15, v21, v15

    add-int/2addr v10, v15

    .line 637
    const/4 v15, 0x1

    aget v15, v21, v15

    add-int/2addr v8, v15

    .line 638
    const/4 v15, 0x2

    aget v15, v21, v15

    add-int/2addr v7, v15

    .line 645
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 646
    add-int/2addr v6, v5

    .line 620
    :cond_9
    add-int/lit8 v15, v18, 0x1

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    goto :goto_8

    .line 640
    :cond_a
    const/4 v15, 0x0

    aget v15, v21, v15

    add-int/2addr v13, v15

    .line 641
    const/4 v15, 0x1

    aget v15, v21, v15

    add-int/2addr v12, v15

    .line 642
    const/4 v15, 0x2

    aget v15, v21, v15

    add-int/2addr v11, v15

    goto :goto_a

    .line 653
    :cond_b
    const/high16 v20, -0x1000000

    aget v21, v3, v13

    and-int v20, v20, v21

    aget v21, v28, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    .line 654
    aget v21, v28, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v28, v17

    or-int v20, v20, v21

    .line 653
    aput v20, v3, v13

    .line 656
    sub-int v19, v19, v12

    .line 657
    sub-int v18, v18, v11

    .line 658
    sub-int v17, v17, v10

    .line 660
    sub-int v20, v15, p1

    add-int v20, v20, v23

    .line 661
    rem-int v20, v20, v23

    aget-object v20, v4, v20

    .line 663
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 664
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 665
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 667
    if-nez v14, :cond_c

    .line 668
    add-int v21, v16, v29

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v27, v16

    .line 670
    :cond_c
    aget v21, v27, v16

    add-int v21, v21, v14

    .line 672
    const/16 v30, 0x0

    aget v31, v24, v21

    aput v31, v20, v30

    .line 673
    const/16 v30, 0x1

    aget v31, v25, v21

    aput v31, v20, v30

    .line 674
    const/16 v30, 0x2

    aget v21, v26, v21

    aput v21, v20, v30

    .line 676
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 677
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 678
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 680
    add-int v19, v19, v8

    .line 681
    add-int v18, v18, v7

    .line 682
    add-int v17, v17, v6

    .line 684
    add-int/lit8 v15, v15, 0x1

    rem-int v15, v15, v23

    .line 685
    aget-object v20, v4, v15

    .line 687
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 688
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 689
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 691
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 692
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 693
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 695
    add-int/2addr v13, v5

    .line 651
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    :cond_d
    move-object/from16 v2, p0

    goto/16 :goto_0
.end method

.method public static varargs genButtonSelector(Landroid/content/Context;Ljava/lang/String;II[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;
    .locals 10

    .prologue
    const/4 v4, 0x0

    const v9, 0x101009e

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1041
    .line 1042
    if-eqz p4, :cond_a

    array-length v0, p4

    if-lez v0, :cond_a

    .line 1043
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    move v0, v1

    move v2, v3

    .line 1044
    :goto_0
    array-length v6, p4

    if-lt v0, v6, :cond_0

    .line 1080
    if-eqz v2, :cond_9

    move-object v0, v4

    .line 1082
    :goto_1
    return-object v0

    .line 1045
    :cond_0
    aget-object v6, p4, v0

    .line 1046
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1047
    invoke-static {v6, p0, p2, p3}, Lcom/alipay/android/app/template/util/UiUtil;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 1051
    const-string/jumbo v2, "checkbox"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "radio"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v6, v1

    .line 1052
    :goto_2
    if-eqz v6, :cond_3

    const v2, 0x10100a0

    .line 1054
    :goto_3
    if-nez v0, :cond_5

    .line 1055
    if-eqz v6, :cond_4

    .line 1056
    new-array v6, v3, [I

    neg-int v2, v2

    aput v2, v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    .line 1044
    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v6, v3

    .line 1051
    goto :goto_2

    .line 1053
    :cond_3
    const v2, 0x10100a7

    goto :goto_3

    .line 1058
    :cond_4
    const/4 v6, 0x3

    new-array v6, v6, [I

    .line 1059
    aput v9, v6, v1

    neg-int v2, v2

    aput v2, v6, v3

    .line 1060
    const v2, -0x101009c

    aput v2, v6, v8

    .line 1058
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_4

    .line 1062
    :cond_5
    if-ne v0, v3, :cond_7

    .line 1063
    if-eqz v6, :cond_6

    .line 1064
    new-array v6, v3, [I

    aput v2, v6, v1

    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_4

    .line 1066
    :cond_6
    new-array v6, v8, [I

    .line 1067
    aput v9, v6, v1

    aput v2, v6, v3

    .line 1066
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 1068
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    invoke-virtual {v5, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    move v2, v1

    goto :goto_4

    .line 1072
    :cond_7
    if-ne v0, v8, :cond_8

    .line 1073
    if-nez v6, :cond_8

    .line 1075
    new-array v2, v3, [I

    const v6, -0x101009e

    aput v6, v2, v1

    .line 1074
    invoke-virtual {v5, v2, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    :cond_8
    move v2, v1

    goto :goto_4

    :cond_9
    move-object v0, v5

    .line 1080
    goto :goto_1

    :cond_a
    move-object v0, v4

    .line 1082
    goto :goto_1

    .line 1068
    :array_0
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static genDefaultKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 1

    .prologue
    .line 967
    new-instance v0, Lcom/alipay/android/app/template/util/UiUtil$2;

    invoke-direct {v0}, Lcom/alipay/android/app/template/util/UiUtil$2;-><init>()V

    return-object v0
.end method

.method public static genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 402
    .line 403
    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    .line 404
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 406
    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    .line 430
    :goto_0
    array-length v6, p0

    if-lt v1, v6, :cond_0

    .line 436
    if-nez v3, :cond_2

    .line 437
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    .line 441
    :goto_1
    return-object v0

    .line 408
    :cond_0
    aget-object v6, p0, v1

    .line 409
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 414
    packed-switch v1, :pswitch_data_0

    :goto_2
    move v3, v2

    .line 430
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 416
    :pswitch_0
    new-array v3, v4, [I

    const v7, 0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v2

    .line 417
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    .line 418
    goto :goto_3

    .line 420
    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v4

    .line 422
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 423
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v8

    .line 425
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    .line 426
    goto :goto_3

    .line 428
    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    .line 429
    invoke-static {v6}, Lcom/alipay/android/app/template/util/UiUtil;->getColorByValue(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_2

    .line 441
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 414
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 420
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 423
    :array_1
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method

.method public static generateBackGroundDrawable(FIF[Ljava/lang/String;F)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/high16 v9, 0x437f0000    # 255.0f

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 312
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 313
    if-eqz p3, :cond_d

    .line 314
    aget-object v0, p3, v7

    if-nez v0, :cond_3

    aget-object v0, p3, v8

    if-nez v0, :cond_3

    .line 315
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 316
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 317
    float-to-int v2, p0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 319
    :cond_0
    aget-object v1, p3, v1

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 320
    cmpl-float v1, p2, v6

    if-lez v1, :cond_1

    .line 321
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 323
    :cond_1
    cmpl-float v1, p4, v6

    if-lez v1, :cond_2

    .line 324
    mul-float v1, p4, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 385
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move v0, v1

    .line 328
    :goto_1
    array-length v2, p3

    if-lt v0, v2, :cond_4

    move-object v0, v3

    .line 385
    goto :goto_0

    .line 329
    :cond_4
    aget-object v2, p3, v0

    .line 330
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 331
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 334
    const/4 v5, -0x1

    if-eq p1, v5, :cond_5

    .line 335
    float-to-int v5, p0

    invoke-virtual {v4, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 337
    :cond_5
    if-eqz p3, :cond_6

    .line 338
    invoke-static {v2}, Lcom/alipay/android/app/template/util/UiUtil;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 341
    :cond_6
    cmpl-float v2, p2, v6

    if-lez v2, :cond_7

    .line 342
    invoke-virtual {v4, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 344
    :cond_7
    cmpl-float v2, p4, v6

    if-lez v2, :cond_8

    .line 345
    mul-float v2, p4, v9

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 348
    :cond_8
    if-nez v0, :cond_b

    .line 350
    aget-object v2, p3, v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 351
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 356
    :goto_2
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 328
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 354
    :cond_a
    new-array v2, v7, [I

    const v5, 0x101009e

    aput v5, v2, v1

    goto :goto_2

    .line 357
    :cond_b
    if-ne v0, v7, :cond_c

    .line 358
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    .line 360
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 361
    :cond_c
    if-ne v0, v8, :cond_9

    .line 362
    new-array v2, v7, [I

    const v5, -0x101009e

    aput v5, v2, v1

    .line 363
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 368
    :cond_d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 369
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 370
    const/4 v2, -0x1

    if-ne p1, v2, :cond_e

    move p1, v1

    .line 373
    :cond_e
    cmpl-float v2, p0, v6

    if-lez v2, :cond_f

    .line 374
    float-to-int v2, p0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 376
    :cond_f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 377
    cmpl-float v1, p2, v6

    if-lez v1, :cond_10

    .line 378
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 380
    :cond_10
    cmpl-float v1, p4, v6

    if-lez v1, :cond_2

    .line 381
    mul-float v1, p4, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 351
    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    .line 358
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static getColorByValue(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 180
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    const v0, -0x777778

    .line 187
    :goto_0
    return v0

    .line 183
    :cond_0
    const-string/jumbo v0, "rgb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 185
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    const/4 v4, 0x3

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    goto :goto_0

    .line 187
    :cond_1
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getGravityByAlign(Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x3

    .line 209
    const-string/jumbo v1, "center"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    const/16 v0, 0x11

    .line 219
    :cond_0
    :goto_0
    return v0

    .line 212
    :cond_1
    const-string/jumbo v1, "left"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    const-string/jumbo v1, "right"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getKeyboardType(Ljava/lang/String;)Lcom/alipay/android/app/template/KeyboardType;
    .locals 2

    .prologue
    .line 1001
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->text:Lcom/alipay/android/app/template/KeyboardType;

    .line 1002
    const-string/jumbo v1, "money"

    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->money:Lcom/alipay/android/app/template/KeyboardType;

    .line 1007
    :cond_0
    :goto_0
    return-object v0

    .line 1004
    :cond_1
    const-string/jumbo v1, "num"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "number"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "payspwd"

    invoke-static {v1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1005
    :cond_2
    sget-object v0, Lcom/alipay/android/app/template/KeyboardType;->num:Lcom/alipay/android/app/template/KeyboardType;

    goto :goto_0
.end method

.method public static getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 720
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/alipay/android/app/template/util/UiUtil;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalDrawable(Ljava/lang/String;Landroid/content/Context;IIZ)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 725
    const/4 v7, 0x0

    .line 727
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 728
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 729
    if-lez v2, :cond_0

    .line 730
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 733
    :cond_0
    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 734
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 737
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 738
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 739
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 740
    if-lez v3, :cond_2

    .line 741
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 744
    :cond_2
    const-string/jumbo v3, "drawable"

    invoke-static {p1, v2, v3, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 745
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_7

    .line 746
    if-ne p2, v5, :cond_3

    if-eq p3, v5, :cond_5

    .line 748
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 747
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 750
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 752
    if-gtz v3, :cond_4

    if-gtz v2, :cond_4

    .line 753
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 781
    :goto_0
    return-object v0

    .line 756
    :cond_4
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 757
    int-to-float v3, p3

    .line 758
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 757
    div-float/2addr v3, v4

    .line 759
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 760
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 762
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    .line 761
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 764
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 765
    if-eqz v1, :cond_7

    .line 766
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 770
    :cond_5
    if-eqz p4, :cond_6

    .line 772
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 771
    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 773
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1}, Lcom/alipay/android/app/template/util/UiUtil;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 775
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_7
    move-object v0, v7

    goto :goto_0
.end method

.method public static getPaddingDrawable(IILandroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 705
    const/high16 v0, 0x40c00000    # 6.0f

    sget v1, Lcom/flybird/FBTools;->DP:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 706
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 707
    const/16 v2, 0x140

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 708
    invoke-static {p2, p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 709
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 710
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 709
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 711
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 712
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 713
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 714
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 716
    return-object v1
.end method

.method public static getPercentFromString(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "%"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 302
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    const/4 v0, 0x0

    .line 307
    :goto_0
    return v0

    .line 305
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 306
    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 307
    goto :goto_0
.end method

.method public static getTextSizeByStage(Ljava/lang/String;)F
    .locals 2

    .prologue
    .line 223
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x3fc00000    # 1.5f

    div-float/2addr v0, v1

    .line 229
    :goto_0
    return v0

    .line 227
    :catch_0
    move-exception v0

    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_0
.end method

.method public static getValueByPercent(IF)F
    .locals 3

    .prologue
    .line 288
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getMode(I)I

    move-result v0

    .line 289
    invoke-static {p0}, Lcom/alipay/android/app/template/util/TemplateUnitSpec;->getValue(I)I

    move-result v1

    .line 290
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_0

    .line 292
    int-to-float v0, v1

    mul-float/2addr v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 296
    :goto_0
    int-to-float v0, v0

    return v0

    .line 294
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->convertPxToDp(I)I

    move-result v0

    goto :goto_0
.end method

.method public static hideKeybroad(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 830
    .line 831
    const-string/jumbo v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 830
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 832
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 834
    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 71
    sget-boolean v0, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/android/app/template/util/UiUtil;->a:Z

    .line 75
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    if-gez v0, :cond_2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_WIDTH:I

    .line 76
    :cond_2
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    if-gez v0, :cond_3

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->SCREEN_HEIGHT:I

    .line 77
    :cond_3
    sget v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->DP:F

    .line 78
    :cond_4
    :try_start_0
    const-string/jumbo v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 85
    const-string/jumbo v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->STATUS_BAR_HEIGHT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const-string/jumbo v1, "config_showNavigationBar"

    const-string/jumbo v2, "bool"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 95
    if-lez v1, :cond_0

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 97
    if-eqz v1, :cond_0

    .line 98
    const-string/jumbo v1, "navigation_bar_height"

    const-string/jumbo v2, "dimen"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 99
    if-lez v1, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/alipay/android/app/template/util/UiUtil;->NAVIGATION_BAR_HEIGHT:I

    goto/16 :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    const-string/jumbo v1, "UiUtil"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 276
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    :cond_0
    :goto_0
    return v0

    .line 278
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    move v1, v0

    .line 279
    :goto_1
    if-lt v1, v2, :cond_2

    .line 284
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :cond_2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isGTP8600()Z
    .locals 2

    .prologue
    .line 1035
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    const-string/jumbo v0, "gt-p6800"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1035
    goto :goto_0
.end method

.method public static isOppoDevice()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 67
    const-string/jumbo v1, "oppo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "oneplus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "tcl"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isUseDefaultKeyboard(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 995
    const-string/jumbo v2, "paypwd"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "payspwd"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "money"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    .line 996
    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v2, "safe"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 995
    goto :goto_0

    :cond_1
    move v0, v1

    .line 996
    goto :goto_1
.end method

.method public static isVerifyURL(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 468
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 474
    :goto_0
    return v0

    .line 471
    :cond_0
    const-string/jumbo v0, "^http(s)?://([a-z0-9_\\-]+\\.)*(alipay|taobao|cmbchina|cebbank)\\.(com|net)(:\\d+)?(/.*)?$"

    .line 472
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 473
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static loadAssetsFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 815
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/alipay/android/app/template/util/UiUtil;->loadAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadAssetsFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 791
    new-instance v2, Ljava/io/BufferedReader;

    .line 792
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 791
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 793
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 795
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_1

    .line 798
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    if-eqz v0, :cond_0

    .line 801
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 809
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 796
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v1, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    const-string/jumbo v2, "UiUtil"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 802
    :catch_1
    move-exception v0

    .line 803
    :try_start_3
    const-string/jumbo v2, "UiUtil"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;I)V
    .locals 11

    .prologue
    .line 391
    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v9, p8

    invoke-static/range {v0 .. v10}, Lcom/alipay/android/app/template/util/UiUtil;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IZ)V

    .line 392
    return-void
.end method

.method public static loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;IZ)V
    .locals 12

    .prologue
    .line 397
    .line 398
    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v11, p10

    .line 397
    invoke-static/range {v0 .. v11}, Lcom/alipay/android/app/template/UiAssistantor;->loadImage(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;ILcom/flybird/ILayoutListener;Z)V

    .line 399
    return-void
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 135
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->parseStandarColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 147
    :cond_0
    :goto_0
    return v0

    .line 139
    :cond_1
    const-string/jumbo v1, "rgb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->parseRgba(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    const-string/jumbo v2, "UiUtil"

    const-string/jumbo v3, "exception: "

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseRgba(Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 175
    invoke-static {p0}, Lcom/alipay/android/app/template/util/UiUtil;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 176
    const/4 v1, 0x3

    aget v1, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    const/4 v4, 0x2

    aget v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public static parseStandarColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 157
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 159
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 171
    :cond_0
    :goto_0
    return-object p0

    .line 160
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 162
    new-array v2, v2, [C

    .line 163
    aget-char v0, v1, v3

    aput-char v0, v2, v3

    .line 164
    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 168
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 165
    :cond_2
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x1

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    .line 166
    mul-int/lit8 v3, v0, 0x2

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static readAssertFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 448
    new-instance v2, Ljava/io/BufferedReader;

    .line 449
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 448
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 450
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 452
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    if-gtz v4, :cond_1

    .line 455
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    if-eqz v1, :cond_0

    .line 458
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 464
    :cond_0
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 453
    :cond_1
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v0, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 3

    .prologue
    .line 819
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 820
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 821
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 822
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 823
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public static setSafeKeyboardSoftInput(Landroid/app/Activity;Landroid/widget/EditText;)V
    .locals 5

    .prologue
    .line 1011
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 1014
    :try_start_0
    const-class v0, Landroid/widget/EditText;

    .line 1015
    const-string/jumbo v1, "setShowSoftInputOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1017
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1018
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1023
    :goto_0
    :try_start_1
    const-class v0, Landroid/widget/EditText;

    .line 1024
    const-string/jumbo v1, "setSoftInputShownOnFocus"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1026
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1027
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1031
    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static showKeybroad(Landroid/widget/EditText;I)V
    .locals 3

    .prologue
    .line 837
    if-nez p0, :cond_0

    .line 851
    :goto_0
    return-void

    .line 839
    :cond_0
    new-instance v0, Lcom/alipay/android/app/template/util/UiUtil$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/template/util/UiUtil$1;-><init>(Landroid/widget/EditText;)V

    .line 850
    int-to-long v1, p1

    .line 839
    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static toCornerBitmap(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 934
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 935
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 937
    :goto_1
    int-to-float v3, p2

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v3, v0

    .line 938
    int-to-float v3, p3

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 939
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 940
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 941
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 942
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    .line 941
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 945
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 948
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 951
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 952
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 953
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1, v1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 954
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v5}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 955
    int-to-float v6, p1

    int-to-float v7, p1

    invoke-virtual {v3, v1, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 958
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 961
    invoke-virtual {v3, v0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 962
    return-object v2

    .line 934
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 935
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_1
.end method

.method public static toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1087
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1088
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 1090
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1091
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1092
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 1093
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1094
    invoke-virtual {v3, v5}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 1095
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 1096
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1097
    invoke-virtual {v1, p0, v5, v5, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1098
    return-object v0
.end method

.method public static toRoundBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 886
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v6

    .line 887
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    move v2, v6

    .line 889
    :goto_1
    int-to-float v3, p1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    div-float v0, v3, v0

    .line 890
    int-to-float v3, p2

    int-to-float v2, v2

    mul-float/2addr v2, v4

    div-float v2, v3, v2

    .line 891
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 892
    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 893
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 894
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    .line 893
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 895
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 896
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 897
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    .line 899
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    .line 900
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, p2

    div-int/lit8 v2, v2, 0x2

    .line 901
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    add-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    .line 902
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    add-int/2addr v10, p2

    div-int/lit8 v10, v10, 0x2

    .line 899
    invoke-direct {v9, v0, v2, v3, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 903
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 904
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 905
    invoke-virtual {v7, v1, v1, v1, v1}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 906
    const v0, -0xbdbdbe

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 907
    div-int/lit8 v3, p1, 0x2

    .line 908
    div-int/lit8 v2, p2, 0x2

    .line 910
    if-le v3, v2, :cond_2

    move v0, v2

    .line 913
    :goto_2
    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v1, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 914
    int-to-float v1, v3

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v7, v1, v2, v0, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 916
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 917
    invoke-virtual {v7, v4, v9, v10, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 919
    return-object v5

    .line 886
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto/16 :goto_0

    .line 887
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto/16 :goto_1

    :cond_2
    move v0, v3

    goto :goto_2
.end method
