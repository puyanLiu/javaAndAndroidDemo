.class public Lcom/flybird/FBTools;
.super Ljava/lang/Object;
.source "FBTools.java"


# static fields
.field public static DP:F

.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/flybird/FBTools;->DP:F

    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/flybird/FBTools;->a:I

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blur(Landroid/graphics/Bitmap;Landroid/view/View;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 356
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    float-to-int v0, v0

    .line 360
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-int v1, v1

    .line 361
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 358
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 362
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 364
    invoke-virtual {v1, v3, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 365
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 366
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFlags(I)V

    .line 367
    invoke-virtual {v1, p0, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/flybird/FBTools;->doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 370
    return-object v0
.end method

.method public static doBlur(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;
    .locals 34

    .prologue
    .line 377
    if-nez p2, :cond_d

    .line 378
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 383
    :goto_0
    if-gtz p1, :cond_0

    .line 384
    const/4 v2, 0x0

    .line 578
    :goto_1
    return-object v2

    .line 387
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 388
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 390
    mul-int v3, v5, v9

    new-array v3, v3, [I

    .line 391
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 393
    add-int/lit8 v21, v5, -0x1

    .line 394
    add-int/lit8 v22, v9, -0x1

    .line 395
    mul-int v4, v5, v9

    .line 396
    add-int v6, p1, p1

    add-int/lit8 v23, v6, 0x1

    .line 398
    new-array v0, v4, [I

    move-object/from16 v24, v0

    .line 399
    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 400
    new-array v0, v4, [I

    move-object/from16 v26, v0

    .line 402
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v27, v0

    .line 404
    add-int/lit8 v4, v23, 0x1

    shr-int/lit8 v4, v4, 0x1

    .line 405
    mul-int v6, v4, v4

    .line 406
    mul-int/lit16 v4, v6, 0x100

    new-array v0, v4, [I

    move-object/from16 v28, v0

    .line 407
    const/4 v4, 0x0

    :goto_2
    mul-int/lit16 v7, v6, 0x100

    if-lt v4, v7, :cond_1

    .line 411
    const/4 v6, 0x0

    .line 413
    const/4 v4, 0x3

    move/from16 v0, v23

    filled-new-array {v0, v4}, [I

    move-result-object v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    .line 418
    add-int/lit8 v29, p1, 0x1

    .line 422
    const/4 v7, 0x0

    move/from16 v19, v6

    move v13, v6

    move/from16 v20, v7

    :goto_3
    move/from16 v0, v20

    if-lt v0, v9, :cond_2

    .line 495
    const/4 v14, 0x0

    :goto_4
    if-lt v14, v5, :cond_7

    .line 577
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_1

    .line 408
    :cond_1
    div-int v7, v4, v6

    aput v7, v28, v4

    .line 407
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 423
    :cond_2
    const/4 v6, 0x0

    .line 424
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

    .line 446
    const/4 v14, 0x0

    move/from16 v18, v17

    move/from16 v17, v16

    move/from16 v16, v15

    move v15, v14

    move/from16 v14, p1

    :goto_6
    if-lt v15, v5, :cond_5

    .line 493
    add-int v6, v19, v5

    .line 422
    add-int/lit8 v7, v20, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    goto :goto_3

    .line 425
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

    .line 426
    add-int v30, v14, p1

    aget-object v30, v4, v30

    .line 427
    const/16 v31, 0x0

    const/high16 v32, 0xff0000

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x10

    aput v32, v30, v31

    .line 428
    const/16 v31, 0x1

    const v32, 0xff00

    and-int v32, v32, v18

    shr-int/lit8 v32, v32, 0x8

    aput v32, v30, v31

    .line 429
    const/16 v31, 0x2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aput v18, v30, v31

    .line 430
    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v18

    sub-int v18, v29, v18

    .line 431
    const/16 v31, 0x0

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v17, v17, v31

    .line 432
    const/16 v31, 0x1

    aget v31, v30, v31

    mul-int v31, v31, v18

    add-int v16, v16, v31

    .line 433
    const/16 v31, 0x2

    aget v31, v30, v31

    mul-int v18, v18, v31

    add-int v15, v15, v18

    .line 434
    if-lez v14, :cond_4

    .line 435
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v8, v8, v18

    .line 436
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v7, v7, v18

    .line 437
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v6, v6, v18

    .line 424
    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 439
    :cond_4
    const/16 v18, 0x0

    aget v18, v30, v18

    add-int v12, v12, v18

    .line 440
    const/16 v18, 0x1

    aget v18, v30, v18

    add-int v11, v11, v18

    .line 441
    const/16 v18, 0x2

    aget v18, v30, v18

    add-int v10, v10, v18

    goto :goto_7

    .line 448
    :cond_5
    aget v30, v28, v18

    aput v30, v24, v13

    .line 449
    aget v30, v28, v17

    aput v30, v25, v13

    .line 450
    aget v30, v28, v16

    aput v30, v26, v13

    .line 452
    sub-int v18, v18, v12

    .line 453
    sub-int v17, v17, v11

    .line 454
    sub-int v16, v16, v10

    .line 456
    sub-int v30, v14, p1

    add-int v30, v30, v23

    .line 457
    rem-int v30, v30, v23

    aget-object v30, v4, v30

    .line 459
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v12, v12, v31

    .line 460
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v11, v11, v31

    .line 461
    const/16 v31, 0x2

    aget v31, v30, v31

    sub-int v10, v10, v31

    .line 463
    if-nez v20, :cond_6

    .line 464
    add-int v31, v15, p1

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v31

    aput v31, v27, v15

    .line 466
    :cond_6
    aget v31, v27, v15

    add-int v31, v31, v19

    aget v31, v3, v31

    .line 468
    const/16 v32, 0x0

    const/high16 v33, 0xff0000

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x10

    aput v33, v30, v32

    .line 469
    const/16 v32, 0x1

    const v33, 0xff00

    and-int v33, v33, v31

    shr-int/lit8 v33, v33, 0x8

    aput v33, v30, v32

    .line 470
    const/16 v32, 0x2

    move/from16 v0, v31

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    aput v31, v30, v32

    .line 472
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v8, v8, v31

    .line 473
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v7, v7, v31

    .line 474
    const/16 v31, 0x2

    aget v30, v30, v31

    add-int v6, v6, v30

    .line 476
    add-int v18, v18, v8

    .line 477
    add-int v17, v17, v7

    .line 478
    add-int v16, v16, v6

    .line 480
    add-int/lit8 v14, v14, 0x1

    rem-int v14, v14, v23

    .line 481
    rem-int v30, v14, v23

    aget-object v30, v4, v30

    .line 483
    const/16 v31, 0x0

    aget v31, v30, v31

    add-int v12, v12, v31

    .line 484
    const/16 v31, 0x1

    aget v31, v30, v31

    add-int v11, v11, v31

    .line 485
    const/16 v31, 0x2

    aget v31, v30, v31

    add-int v10, v10, v31

    .line 487
    const/16 v31, 0x0

    aget v31, v30, v31

    sub-int v8, v8, v31

    .line 488
    const/16 v31, 0x1

    aget v31, v30, v31

    sub-int v7, v7, v31

    .line 489
    const/16 v31, 0x2

    aget v30, v30, v31

    sub-int v6, v6, v30

    .line 491
    add-int/lit8 v13, v13, 0x1

    .line 446
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 496
    :cond_7
    const/4 v7, 0x0

    .line 497
    move/from16 v0, p1

    neg-int v6, v0

    mul-int v8, v6, v5

    .line 498
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

    .line 529
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

    .line 495
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 499
    :cond_8
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v19

    add-int v20, v19, v14

    .line 501
    add-int v19, v18, p1

    aget-object v21, v4, v19

    .line 503
    const/16 v19, 0x0

    aget v30, v24, v20

    aput v30, v21, v19

    .line 504
    const/16 v19, 0x1

    aget v30, v25, v20

    aput v30, v21, v19

    .line 505
    const/16 v19, 0x2

    aget v30, v26, v20

    aput v30, v21, v19

    .line 507
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v19

    sub-int v30, v29, v19

    .line 509
    aget v19, v24, v20

    mul-int v19, v19, v30

    add-int v19, v19, v17

    .line 510
    aget v17, v25, v20

    mul-int v17, v17, v30

    add-int v17, v17, v16

    .line 511
    aget v16, v26, v20

    mul-int v16, v16, v30

    add-int v16, v16, v15

    .line 513
    if-lez v18, :cond_a

    .line 514
    const/4 v15, 0x0

    aget v15, v21, v15

    add-int/2addr v10, v15

    .line 515
    const/4 v15, 0x1

    aget v15, v21, v15

    add-int/2addr v8, v15

    .line 516
    const/4 v15, 0x2

    aget v15, v21, v15

    add-int/2addr v7, v15

    .line 523
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v22

    if-ge v0, v1, :cond_9

    .line 524
    add-int/2addr v6, v5

    .line 498
    :cond_9
    add-int/lit8 v15, v18, 0x1

    move/from16 v18, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v19

    goto :goto_8

    .line 518
    :cond_a
    const/4 v15, 0x0

    aget v15, v21, v15

    add-int/2addr v13, v15

    .line 519
    const/4 v15, 0x1

    aget v15, v21, v15

    add-int/2addr v12, v15

    .line 520
    const/4 v15, 0x2

    aget v15, v21, v15

    add-int/2addr v11, v15

    goto :goto_a

    .line 531
    :cond_b
    const/high16 v20, -0x1000000

    aget v21, v3, v13

    and-int v20, v20, v21

    aget v21, v28, v19

    shl-int/lit8 v21, v21, 0x10

    or-int v20, v20, v21

    .line 532
    aget v21, v28, v18

    shl-int/lit8 v21, v21, 0x8

    or-int v20, v20, v21

    aget v21, v28, v17

    or-int v20, v20, v21

    .line 531
    aput v20, v3, v13

    .line 534
    sub-int v19, v19, v12

    .line 535
    sub-int v18, v18, v11

    .line 536
    sub-int v17, v17, v10

    .line 538
    sub-int v20, v15, p1

    add-int v20, v20, v23

    .line 539
    rem-int v20, v20, v23

    aget-object v20, v4, v20

    .line 541
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v12, v12, v21

    .line 542
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v11, v11, v21

    .line 543
    const/16 v21, 0x2

    aget v21, v20, v21

    sub-int v10, v10, v21

    .line 545
    if-nez v14, :cond_c

    .line 546
    add-int v21, v16, v29

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v21

    mul-int v21, v21, v5

    aput v21, v27, v16

    .line 548
    :cond_c
    aget v21, v27, v16

    add-int v21, v21, v14

    .line 550
    const/16 v30, 0x0

    aget v31, v24, v21

    aput v31, v20, v30

    .line 551
    const/16 v30, 0x1

    aget v31, v25, v21

    aput v31, v20, v30

    .line 552
    const/16 v30, 0x2

    aget v21, v26, v21

    aput v21, v20, v30

    .line 554
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v8, v8, v21

    .line 555
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v7, v7, v21

    .line 556
    const/16 v21, 0x2

    aget v20, v20, v21

    add-int v6, v6, v20

    .line 558
    add-int v19, v19, v8

    .line 559
    add-int v18, v18, v7

    .line 560
    add-int v17, v17, v6

    .line 562
    add-int/lit8 v15, v15, 0x1

    rem-int v15, v15, v23

    .line 563
    aget-object v20, v4, v15

    .line 565
    const/16 v21, 0x0

    aget v21, v20, v21

    add-int v12, v12, v21

    .line 566
    const/16 v21, 0x1

    aget v21, v20, v21

    add-int v11, v11, v21

    .line 567
    const/16 v21, 0x2

    aget v21, v20, v21

    add-int v10, v10, v21

    .line 569
    const/16 v21, 0x0

    aget v21, v20, v21

    sub-int v8, v8, v21

    .line 570
    const/16 v21, 0x1

    aget v21, v20, v21

    sub-int v7, v7, v21

    .line 571
    const/16 v21, 0x2

    aget v20, v20, v21

    sub-int v6, v6, v20

    .line 573
    add-int/2addr v13, v5

    .line 529
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_9

    :cond_d
    move-object/from16 v2, p0

    goto/16 :goto_0
.end method

.method public static genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v3, 0x4

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 144
    .line 145
    if-eqz p0, :cond_2

    array-length v0, p0

    if-lez v0, :cond_2

    .line 146
    filled-new-array {v3, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 148
    new-array v5, v3, [I

    move v1, v2

    move v3, v4

    .line 172
    :goto_0
    array-length v6, p0

    if-lt v1, v6, :cond_0

    .line 178
    if-nez v3, :cond_2

    .line 179
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v0, v5}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    move-object v0, v1

    .line 183
    :goto_1
    return-object v0

    .line 150
    :cond_0
    aget-object v6, p0, v1

    .line 151
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 156
    packed-switch v1, :pswitch_data_0

    :goto_2
    move v3, v2

    .line 172
    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    :pswitch_0
    new-array v3, v4, [I

    const v7, 0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v2

    .line 159
    invoke-static {v6}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v2

    move v3, v2

    .line 160
    goto :goto_3

    .line 162
    :pswitch_1
    new-array v3, v8, [I

    fill-array-data v3, :array_0

    aput-object v3, v0, v4

    .line 164
    invoke-static {v6}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v4

    .line 165
    new-array v3, v8, [I

    fill-array-data v3, :array_1

    aput-object v3, v0, v8

    .line 167
    invoke-static {v6}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v8

    move v3, v2

    .line 168
    goto :goto_3

    .line 170
    :pswitch_2
    new-array v3, v4, [I

    const v7, -0x101009e

    aput v7, v3, v2

    aput-object v3, v0, v9

    .line 171
    invoke-static {v6}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v5, v9

    goto :goto_2

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 162
    :array_0
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data

    .line 165
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

    .line 189
    new-instance v3, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 190
    if-eqz p3, :cond_d

    .line 191
    aget-object v0, p3, v7

    if-nez v0, :cond_3

    aget-object v0, p3, v8

    if-nez v0, :cond_3

    .line 192
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 193
    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 194
    float-to-int v2, p0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 196
    :cond_0
    aget-object v1, p3, v1

    invoke-static {v1}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 197
    cmpl-float v1, p2, v6

    if-lez v1, :cond_1

    .line 198
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 200
    :cond_1
    cmpl-float v1, p4, v6

    if-lez v1, :cond_2

    .line 201
    mul-float v1, p4, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 262
    :cond_2
    :goto_0
    return-object v0

    :cond_3
    move v0, v1

    .line 205
    :goto_1
    array-length v2, p3

    if-lt v0, v2, :cond_4

    move-object v0, v3

    .line 262
    goto :goto_0

    .line 206
    :cond_4
    aget-object v2, p3, v0

    .line 207
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 208
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 211
    const/4 v5, -0x1

    if-eq p1, v5, :cond_5

    .line 212
    float-to-int v5, p0

    invoke-virtual {v4, v5, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 214
    :cond_5
    if-eqz p3, :cond_6

    .line 215
    invoke-static {v2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 218
    :cond_6
    cmpl-float v2, p2, v6

    if-lez v2, :cond_7

    .line 219
    invoke-virtual {v4, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 221
    :cond_7
    cmpl-float v2, p4, v6

    if-lez v2, :cond_8

    .line 222
    mul-float v2, p4, v9

    float-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 225
    :cond_8
    if-nez v0, :cond_b

    .line 227
    aget-object v2, p3, v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 228
    new-array v2, v8, [I

    fill-array-data v2, :array_0

    .line 233
    :goto_2
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 205
    :cond_9
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_a
    new-array v2, v7, [I

    const v5, 0x101009e

    aput v5, v2, v1

    goto :goto_2

    .line 234
    :cond_b
    if-ne v0, v7, :cond_c

    .line 235
    new-array v2, v8, [I

    fill-array-data v2, :array_1

    .line 237
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 238
    :cond_c
    if-ne v0, v8, :cond_9

    .line 239
    new-array v2, v7, [I

    const v5, -0x101009e

    aput v5, v2, v1

    .line 240
    invoke-virtual {v3, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 245
    :cond_d
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 246
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 247
    const/4 v2, -0x1

    if-ne p1, v2, :cond_e

    move p1, v1

    .line 250
    :cond_e
    cmpl-float v2, p0, v6

    if-lez v2, :cond_f

    .line 251
    float-to-int v2, p0

    invoke-virtual {v0, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 253
    :cond_f
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 254
    cmpl-float v1, p2, v6

    if-lez v1, :cond_10

    .line 255
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 257
    :cond_10
    cmpl-float v1, p4, v6

    if-lez v1, :cond_2

    .line 258
    mul-float v1, p4, v9

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    goto/16 :goto_0

    .line 228
    nop

    :array_0
    .array-data 4
        0x101009e
        -0x10100a7
    .end array-data

    .line 235
    :array_1
    .array-data 4
        0x101009e
        0x10100a7
    .end array-data
.end method

.method public static getDp(Landroid/app/Activity;)F
    .locals 2

    .prologue
    .line 292
    sget v0, Lcom/flybird/FBTools;->DP:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 293
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 295
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/flybird/FBTools;->DP:F

    .line 297
    :cond_0
    sget v0, Lcom/flybird/FBTools;->DP:F

    return v0
.end method

.method public static getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 302
    const/4 v7, 0x0

    .line 304
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 306
    if-lez v2, :cond_0

    .line 307
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 310
    :cond_0
    const-string/jumbo v3, "com.alipay.android.app.template"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 311
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 316
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 317
    if-lez v3, :cond_2

    .line 318
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 321
    :cond_2
    const-string/jumbo v3, "drawable"

    invoke-static {p1, v2, v3, v0}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 322
    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_6

    .line 323
    if-ne p2, v5, :cond_3

    if-eq p3, v5, :cond_5

    .line 325
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 324
    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 327
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int v3, p3, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 329
    if-gtz v3, :cond_4

    if-gtz v2, :cond_4

    .line 330
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v0, v1

    .line 352
    :goto_0
    return-object v0

    .line 333
    :cond_4
    int-to-float v2, p2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 334
    int-to-float v3, p3

    .line 335
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    .line 334
    div-float/2addr v3, v4

    .line 336
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 337
    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 339
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    move v6, v1

    .line 338
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 341
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 342
    if-eqz v1, :cond_6

    .line 343
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 347
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_6
    move-object v0, v7

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/app/Activity;)I
    .locals 4

    .prologue
    .line 266
    sget v0, Lcom/flybird/FBTools;->a:I

    if-gez v0, :cond_0

    .line 267
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 269
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/flybird/FBTools;->a:I

    .line 271
    const/4 v0, 0x0

    .line 275
    :try_start_0
    const-string/jumbo v1, "com.android.internal.R$dimen"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 279
    const-string/jumbo v3, "status_bar_height"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 285
    :goto_0
    sget v1, Lcom/flybird/FBTools;->a:I

    sub-int v0, v1, v0

    sput v0, Lcom/flybird/FBTools;->a:I

    .line 287
    :cond_0
    sget v0, Lcom/flybird/FBTools;->a:I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 2

    .prologue
    const v0, -0x777778

    .line 118
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    const-string/jumbo v1, "#"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    invoke-static {p0}, Lcom/flybird/FBTools;->parseStandarColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 122
    :cond_1
    const-string/jumbo v1, "rgb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    invoke-static {p0}, Lcom/flybird/FBTools;->parseRgba(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static parseRgba(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x3

    .line 112
    const/4 v0, 0x4

    new-array v2, v0, [I

    const/16 v0, 0xff

    aput v0, v2, v6

    const-string/jumbo v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string/jumbo v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_0

    .line 113
    aget v0, v2, v6

    aget v1, v2, v1

    const/4 v3, 0x1

    aget v3, v2, v3

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-static {v0, v1, v3, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0

    .line 112
    :cond_0
    if-ne v0, v6, :cond_1

    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v0

    goto :goto_1
.end method

.method public static parseStandarColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 94
    const-string/jumbo v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 96
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 108
    :cond_0
    :goto_0
    return-object p0

    .line 97
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 98
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 99
    new-array v2, v2, [C

    .line 100
    aget-char v0, v1, v3

    aput-char v0, v2, v3

    .line 101
    const/4 v0, 0x1

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    .line 105
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_0

    .line 102
    :cond_2
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, -0x1

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    .line 103
    mul-int/lit8 v3, v0, 0x2

    aget-char v4, v1, v0

    aput-char v4, v2, v3

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static parseUnit(Ljava/lang/String;)F
    .locals 3

    .prologue
    .line 583
    sget v0, Lcom/flybird/FBTools;->DP:F

    .line 584
    const-string/jumbo v1, "PX"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const/high16 v0, 0x3f800000    # 1.0f

    .line 586
    const-string/jumbo v1, "PX"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 588
    :cond_0
    const-string/jumbo v1, "px"

    const-string/jumbo v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public static readAssertFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const/4 v1, 0x0

    .line 41
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 49
    :goto_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    const/16 v3, 0x800

    new-array v3, v3, [C

    .line 53
    :goto_1
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->read([C)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-gtz v4, :cond_1

    .line 60
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 66
    :goto_2
    if-eqz v0, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 73
    :cond_0
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 44
    :try_start_4
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v5, 0x0

    :try_start_5
    invoke-virtual {v2, v3, v5, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v3

    .line 60
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 61
    :catch_3
    move-exception v1

    goto :goto_2

    .line 58
    :catchall_0
    move-exception v0

    .line 60
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 64
    :goto_4
    throw v0

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_3
.end method
