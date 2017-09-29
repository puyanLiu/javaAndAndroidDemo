.class public final Lcom/google/zxing/multi/GenericMultipleBarcodeReader;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/zxing/multi/MultipleBarcodeReader;


# instance fields
.field private final a:Lcom/google/zxing/Reader;


# direct methods
.method public constructor <init>(Lcom/google/zxing/Reader;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a:Lcom/google/zxing/Reader;

    return-void
.end method

.method private a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/Result;",
            ">;III)V"
        }
    .end annotation

    move/from16 v7, p5

    move/from16 v6, p4

    move-object/from16 v5, p3

    move-object/from16 v4, p2

    move-object/from16 v2, p0

    :goto_0
    const/4 v3, 0x4

    move/from16 v0, p6

    if-le v0, v3, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    :try_start_0
    iget-object v3, v2, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a:Lcom/google/zxing/Reader;

    move-object/from16 v0, p1

    invoke-interface {v3, v0, v4}, Lcom/google/zxing/Reader;->decode(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/zxing/Result;

    invoke-virtual {v3}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    if-nez v3, :cond_3

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v9

    if-nez v9, :cond_6

    move-object v3, v8

    :goto_3
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v8}, Lcom/google/zxing/Result;->getResultPoints()[Lcom/google/zxing/ResultPoint;

    move-result-object v13

    if-eqz v13, :cond_0

    array-length v3, v13

    if-eqz v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/BinaryBitmap;->getHeight()I

    move-result v17

    move/from16 v0, v16

    int-to-float v11, v0

    move/from16 v0, v17

    int-to-float v9, v0

    const/4 v10, 0x0

    const/4 v15, 0x0

    array-length v14, v13

    const/4 v3, 0x0

    move v12, v3

    :goto_4
    if-ge v12, v14, :cond_8

    aget-object v3, v13, v12

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    cmpg-float v18, v8, v11

    if-gez v18, :cond_4

    move v11, v8

    :cond_4
    cmpg-float v18, v3, v9

    if-gez v18, :cond_5

    move v9, v3

    :cond_5
    cmpl-float v18, v8, v10

    if-lez v18, :cond_d

    :goto_5
    cmpl-float v10, v3, v15

    if-lez v10, :cond_c

    :goto_6
    add-int/lit8 v10, v12, 0x1

    move v12, v10

    move v15, v3

    move v10, v8

    goto :goto_4

    :cond_6
    array-length v3, v9

    new-array v10, v3, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    :goto_7
    array-length v11, v9

    if-ge v3, v11, :cond_7

    aget-object v11, v9, v3

    new-instance v12, Lcom/google/zxing/ResultPoint;

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v13

    int-to-float v14, v6

    add-float/2addr v13, v14

    invoke-virtual {v11}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v11

    int-to-float v14, v7

    add-float/2addr v11, v14

    invoke-direct {v12, v13, v11}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v12, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    new-instance v3, Lcom/google/zxing/Result;

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getRawBytes()[B

    move-result-object v11

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getBarcodeFormat()Lcom/google/zxing/BarcodeFormat;

    move-result-object v12

    invoke-direct {v3, v9, v11, v10, v12}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    invoke-virtual {v8}, Lcom/google/zxing/Result;->getResultMetadata()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/google/zxing/Result;->putAllMetadata(Ljava/util/Map;)V

    goto :goto_3

    :cond_8
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v11, v3

    if-lez v3, :cond_9

    const/4 v3, 0x0

    const/4 v8, 0x0

    float-to-int v11, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v3, v8, v11, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    add-int/lit8 v8, p6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_9
    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v3, v9, v3

    if-lez v3, :cond_a

    const/4 v3, 0x0

    const/4 v8, 0x0

    float-to-int v9, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v8, v1, v9}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v3

    add-int/lit8 v8, p6, 0x1

    invoke-direct/range {v2 .. v8}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_a
    add-int/lit8 v3, v16, -0x64

    int-to-float v3, v3

    cmpg-float v3, v10, v3

    if-gez v3, :cond_b

    float-to-int v3, v10

    const/4 v8, 0x0

    float-to-int v9, v10

    sub-int v9, v16, v9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v3, v8, v9, v1}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object v9

    float-to-int v3, v10

    add-int v12, v6, v3

    add-int/lit8 v14, p6, 0x1

    move-object v8, v2

    move-object v10, v4

    move-object v11, v5

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    :cond_b
    add-int/lit8 v3, v17, -0x64

    int-to-float v3, v3

    cmpg-float v3, v15, v3

    if-gez v3, :cond_0

    const/4 v3, 0x0

    float-to-int v8, v15

    float-to-int v9, v15

    sub-int v9, v17, v9

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v3, v8, v1, v9}, Lcom/google/zxing/BinaryBitmap;->crop(IIII)Lcom/google/zxing/BinaryBitmap;

    move-result-object p1

    float-to-int v3, v15

    add-int/2addr v7, v3

    add-int/lit8 p6, p6, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_1

    :cond_c
    move v3, v15

    goto/16 :goto_6

    :cond_d
    move v8, v10

    goto/16 :goto_5

    :cond_e
    move v3, v9

    goto/16 :goto_2
.end method


# virtual methods
.method public final decodeMultiple(Lcom/google/zxing/BinaryBitmap;)[Lcom/google/zxing/Result;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;

    move-result-object v0

    return-object v0
.end method

.method public final decodeMultiple(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;)[Lcom/google/zxing/Result;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)[",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/zxing/multi/GenericMultipleBarcodeReader;->a(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Ljava/util/List;III)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/zxing/Result;

    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/Result;

    return-object v0
.end method
