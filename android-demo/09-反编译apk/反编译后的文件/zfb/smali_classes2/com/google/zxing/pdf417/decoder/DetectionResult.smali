.class final Lcom/google/zxing/pdf417/decoder/DetectionResult;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

.field private final b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

.field private c:Lcom/google/zxing/pdf417/decoder/BoundingBox;

.field private final d:I


# direct methods
.method constructor <init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    iput-object p2, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-void
.end method

.method private static a(IILcom/google/zxing/pdf417/decoder/Codeword;)I
    .locals 1

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return p1

    :cond_1
    invoke-virtual {p2}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->isValidRowNumber(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, p0}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method private a(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {p1, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->adjustCompleteIndicatorColumnRowNumbers(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;)I

    :cond_0
    return-void
.end method


# virtual methods
.method final getBarcodeColumnCount()I
    .locals 1

    iget v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    return v0
.end method

.method final getBarcodeECLevel()I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v0

    return v0
.end method

.method final getBarcodeRowCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a:Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v0

    return v0
.end method

.method final getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-object v0
.end method

.method final getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, p1

    return-object v0
.end method

.method final getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;
    .locals 15

    const/16 v14, 0xe

    const/4 v13, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    const/16 v0, 0x3a0

    :goto_0
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v1, v3

    if-nez v1, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v1, v2

    if-nez v1, :cond_7

    move v3, v2

    :cond_1
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    if-nez v1, :cond_b

    move v5, v2

    :cond_2
    add-int v7, v3, v5

    if-nez v7, :cond_e

    move v1, v2

    :goto_1
    if-lez v1, :cond_3

    if-lt v1, v0, :cond_17

    :cond_3
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v3, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v3, v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v6

    move v1, v2

    :goto_2
    array-length v3, v5

    if-ge v1, v3, :cond_0

    aget-object v3, v5, v1

    if-eqz v3, :cond_6

    aget-object v3, v6, v1

    if-eqz v3, :cond_6

    aget-object v3, v5, v1

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    aget-object v7, v6, v1

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v7

    if-ne v3, v7, :cond_6

    move v3, v4

    :goto_3
    iget v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    if-gt v3, v7, :cond_6

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    aget-object v7, v7, v1

    if-eqz v7, :cond_5

    aget-object v8, v5, v1

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v8, v7, v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    move v1, v2

    move v3, v2

    :goto_4
    array-length v5, v7

    if-ge v1, v5, :cond_1

    aget-object v5, v7, v1

    if-eqz v5, :cond_a

    aget-object v5, v7, v1

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    move v5, v3

    move v6, v2

    move v3, v4

    :goto_5
    iget v9, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v9, v9, 0x1

    if-ge v3, v9, :cond_9

    if-ge v6, v13, :cond_9

    iget-object v9, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v9

    aget-object v9, v9, v1

    if-eqz v9, :cond_8

    invoke-static {v8, v6, v9}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v6

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v9

    if-nez v9, :cond_8

    add-int/lit8 v5, v5, 0x1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    move v3, v5

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_b
    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    move v1, v2

    move v5, v2

    :goto_6
    array-length v6, v8

    if-ge v1, v6, :cond_2

    aget-object v6, v8, v1

    if-eqz v6, :cond_d

    aget-object v6, v8, v1

    invoke-virtual {v6}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v9

    iget v6, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v6, v6, 0x1

    move v7, v6

    move v6, v2

    :goto_7
    if-lez v7, :cond_d

    if-ge v6, v13, :cond_d

    iget-object v10, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v10

    aget-object v10, v10, v1

    if-eqz v10, :cond_c

    invoke-static {v9, v6, v10}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->a(IILcom/google/zxing/pdf417/decoder/Codeword;)I

    move-result v6

    invoke-virtual {v10}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v10

    if-nez v10, :cond_c

    add-int/lit8 v5, v5, 0x1

    :cond_c
    add-int/lit8 v7, v7, -0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    move v6, v4

    :goto_8
    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v1, v1, 0x1

    if-ge v6, v1, :cond_16

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v8

    move v5, v2

    :goto_9
    array-length v1, v8

    if-ge v5, v1, :cond_15

    aget-object v1, v8, v5

    if-eqz v1, :cond_14

    aget-object v1, v8, v5

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v1

    if-nez v1, :cond_14

    aget-object v9, v8, v5

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v3, v6, -0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v10, v6, 0x1

    aget-object v1, v1, v10

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    add-int/lit8 v10, v6, 0x1

    aget-object v1, v1, v10

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v1

    :goto_a
    new-array v10, v14, [Lcom/google/zxing/pdf417/decoder/Codeword;

    aget-object v11, v3, v5

    aput-object v11, v10, v13

    const/4 v11, 0x3

    aget-object v12, v1, v5

    aput-object v12, v10, v11

    if-lez v5, :cond_f

    add-int/lit8 v11, v5, -0x1

    aget-object v11, v8, v11

    aput-object v11, v10, v2

    const/4 v11, 0x4

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v3, v12

    aput-object v12, v10, v11

    const/4 v11, 0x5

    add-int/lit8 v12, v5, -0x1

    aget-object v12, v1, v12

    aput-object v12, v10, v11

    :cond_f
    if-le v5, v4, :cond_10

    const/16 v11, 0x8

    add-int/lit8 v12, v5, -0x2

    aget-object v12, v8, v12

    aput-object v12, v10, v11

    const/16 v11, 0xa

    add-int/lit8 v12, v5, -0x2

    aget-object v12, v3, v12

    aput-object v12, v10, v11

    const/16 v11, 0xb

    add-int/lit8 v12, v5, -0x2

    aget-object v12, v1, v12

    aput-object v12, v10, v11

    :cond_10
    array-length v11, v8

    add-int/lit8 v11, v11, -0x1

    if-ge v5, v11, :cond_11

    add-int/lit8 v11, v5, 0x1

    aget-object v11, v8, v11

    aput-object v11, v10, v4

    const/4 v11, 0x6

    add-int/lit8 v12, v5, 0x1

    aget-object v12, v3, v12

    aput-object v12, v10, v11

    const/4 v11, 0x7

    add-int/lit8 v12, v5, 0x1

    aget-object v12, v1, v12

    aput-object v12, v10, v11

    :cond_11
    array-length v11, v8

    add-int/lit8 v11, v11, -0x2

    if-ge v5, v11, :cond_12

    const/16 v11, 0x9

    add-int/lit8 v12, v5, 0x2

    aget-object v12, v8, v12

    aput-object v12, v10, v11

    const/16 v11, 0xc

    add-int/lit8 v12, v5, 0x2

    aget-object v3, v3, v12

    aput-object v3, v10, v11

    const/16 v3, 0xd

    add-int/lit8 v11, v5, 0x2

    aget-object v1, v1, v11

    aput-object v1, v10, v3

    :cond_12
    move v1, v2

    :goto_b
    if-ge v1, v14, :cond_14

    aget-object v3, v10, v1

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->hasValidRowNumber()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v11

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getBucket()I

    move-result v12

    if-ne v11, v12, :cond_13

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v3

    invoke-virtual {v9, v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->setRowNumber(I)V

    move v3, v4

    :goto_c
    if-nez v3, :cond_14

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_13
    move v3, v2

    goto :goto_c

    :cond_14
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_9

    :cond_15
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_8

    :cond_16
    move v1, v7

    goto/16 :goto_1

    :cond_17
    move v0, v1

    goto/16 :goto_0

    :cond_18
    move-object v1, v3

    goto/16 :goto_a
.end method

.method public final setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V
    .locals 0

    iput-object p1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->c:Lcom/google/zxing/pdf417/decoder/BoundingBox;

    return-void
.end method

.method final setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aput-object p2, v0, p1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    iget v1, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    :cond_0
    new-instance v4, Ljava/util/Formatter;

    invoke-direct {v4}, Ljava/util/Formatter;-><init>()V

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_4

    const-string/jumbo v3, "CW %3d:"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {v4, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v3, v2

    :goto_1
    iget v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->d:I

    add-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_3

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    if-nez v5, :cond_1

    const-string/jumbo v5, "    |   "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/DetectionResult;->b:[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    aget-object v5, v5, v1

    if-nez v5, :cond_2

    const-string/jumbo v5, "    |   "

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_2
    const-string/jumbo v6, " %3d|%3d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-virtual {v5}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-virtual {v4, v6, v7}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_3
    const-string/jumbo v3, "%n"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/util/Formatter;->close()V

    return-object v0
.end method
