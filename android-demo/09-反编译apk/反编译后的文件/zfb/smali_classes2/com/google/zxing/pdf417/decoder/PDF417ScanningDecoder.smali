.class public final Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-direct {v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;-><init>()V

    sput-object v0, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;
    .locals 7

    const/4 v1, 0x0

    array-length v0, p3

    new-array v3, v0, [I

    const/16 v0, 0x64

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_d

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget v4, p3, v0

    aget-object v5, p4, v0

    aget v6, v3, v0

    aget v5, v5, v6

    aput v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    :try_start_0
    array-length v0, p1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
    :try_end_0
    .catch Lcom/google/zxing/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    array-length v0, v3

    if-nez v0, :cond_9

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_1
    const/4 v0, 0x1

    add-int/lit8 v4, p0, 0x1

    shl-int/2addr v0, v4

    if-eqz p2, :cond_2

    :try_start_1
    array-length v4, p2

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x3

    if-gt v4, v5, :cond_3

    :cond_2
    if-ltz v0, :cond_3

    const/16 v4, 0x200

    if-le v0, v4, :cond_4

    :cond_3
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_4
    sget-object v4, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a:Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;

    invoke-virtual {v4, p1, v0, p2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->decode([II[I)I

    move-result v4

    array-length v5, p1

    const/4 v6, 0x4

    if-ge v5, v6, :cond_5

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_5
    const/4 v5, 0x0

    aget v5, p1, v5

    array-length v6, p1

    if-le v5, v6, :cond_6

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0

    :cond_6
    if-nez v5, :cond_7

    array-length v5, p1

    if-ge v0, v5, :cond_8

    const/4 v5, 0x0

    array-length v6, p1

    sub-int v0, v6, v0

    aput v0, p1, v5

    :cond_7
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/zxing/pdf417/decoder/DecodedBitStreamParser;->decode([ILjava/lang/String;)Lcom/google/zxing/common/DecoderResult;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/zxing/common/DecoderResult;->setErrorsCorrected(Ljava/lang/Integer;)V

    array-length v4, p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/zxing/common/DecoderResult;->setErasures(Ljava/lang/Integer;)V

    return-object v0

    :cond_8
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v0

    throw v0
    :try_end_1
    .catch Lcom/google/zxing/ChecksumException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_9
    move v0, v1

    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_c

    aget v4, v3, v0

    aget-object v5, p4, v0

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_a

    aget v4, v3, v0

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v0

    move v0, v2

    goto/16 :goto_0

    :cond_a
    aput v1, v3, v0

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_b

    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_0

    :cond_d
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v0

    throw v0
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getRowHeights()[I

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v0, -0x1

    array-length v5, v4

    move v3, v0

    move v0, v1

    :goto_1
    if-ge v0, v5, :cond_2

    aget v2, v4, v0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    array-length v5, v4

    move v2, v1

    move v0, v1

    :goto_2
    if-ge v2, v5, :cond_3

    aget v6, v4, v2

    sub-int v7, v3, v6

    add-int/2addr v0, v7

    if-gtz v6, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v5

    move v2, v0

    move v0, v1

    :goto_3
    if-lez v2, :cond_4

    aget-object v6, v5, v0

    if-nez v6, :cond_4

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    move v8, v0

    move v0, v1

    move v1, v8

    :goto_4
    if-ltz v1, :cond_5

    aget v6, v4, v1

    sub-int v6, v3, v6

    add-int/2addr v0, v6

    aget v6, v4, v1

    if-gtz v6, :cond_5

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    array-length v1, v5

    add-int/lit8 v1, v1, -0x1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_5
    if-lez v1, :cond_6

    aget-object v3, v5, v0

    if-nez v3, :cond_6

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->isLeft()Z

    move-result v3

    invoke-virtual {v0, v2, v1, v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->addMissingRows(IIZ)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;
    .locals 6

    if-eqz p3, :cond_4

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v0

    move v4, p3

    move v0, p4

    :goto_1
    const/4 v1, 0x2

    if-ge v2, v1, :cond_8

    move v1, v0

    :goto_2
    if-eqz v4, :cond_0

    if-ge v1, p1, :cond_1

    :cond_0
    if-nez v4, :cond_6

    if-ge v1, p2, :cond_6

    :cond_1
    invoke-virtual {p0, v1, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v0

    if-ne v4, v0, :cond_6

    sub-int v0, p4, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v5, 0x2

    if-le v0, v5, :cond_5

    :goto_3
    const/16 v0, 0x8

    new-array v2, v0, [I

    const/4 v1, 0x0

    if-eqz p3, :cond_9

    const/4 v0, 0x1

    :goto_4
    move v4, p4

    move v5, p3

    :goto_5
    if-eqz p3, :cond_2

    if-lt v4, p2, :cond_3

    :cond_2
    if-nez p3, :cond_c

    if-lt v4, p1, :cond_c

    :cond_3
    const/16 v3, 0x8

    if-ge v1, v3, :cond_c

    invoke-virtual {p0, v4, p5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-ne v3, v5, :cond_a

    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v1

    add-int v3, v4, v0

    move v4, v3

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    add-int v0, v1, v3

    move v1, v0

    goto :goto_2

    :cond_6
    neg-int v3, v3

    if-nez v4, :cond_7

    const/4 v0, 0x1

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move v4, v0

    move v0, v1

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    goto :goto_6

    :cond_8
    move p4, v0

    goto :goto_3

    :cond_9
    const/4 v0, -0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v1, 0x1

    if-nez v5, :cond_b

    const/4 v1, 0x1

    :goto_7
    move v5, v1

    move v1, v3

    goto :goto_5

    :cond_b
    const/4 v1, 0x0

    goto :goto_7

    :cond_c
    const/16 v0, 0x8

    if-eq v1, v0, :cond_f

    if-eqz p3, :cond_d

    if-eq v4, p2, :cond_e

    :cond_d
    if-nez p3, :cond_10

    if-ne v4, p1, :cond_10

    :cond_e
    const/4 v0, 0x7

    if-ne v1, v0, :cond_10

    :cond_f
    :goto_8
    if-nez v2, :cond_11

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_10
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_8

    :cond_11
    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->getBitCountSum([I)I

    move-result v3

    if-eqz p3, :cond_12

    add-int v0, p4, v3

    move v1, v0

    :goto_a
    add-int/lit8 v0, p6, -0x2

    if-gt v0, v3, :cond_14

    add-int/lit8 v0, p7, 0x2

    if-gt v3, v0, :cond_14

    const/4 v0, 0x1

    :goto_b
    if-nez v0, :cond_15

    const/4 v0, 0x0

    goto :goto_9

    :cond_12
    const/4 v0, 0x0

    :goto_c
    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_13

    aget v1, v2, v0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget v4, v2, v4

    aput v4, v2, v0

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aput v1, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_13
    sub-int v0, p4, v3

    move v1, p4

    move p4, v0

    goto :goto_a

    :cond_14
    const/4 v0, 0x0

    goto :goto_b

    :cond_15
    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417CodewordDecoder;->getDecodedValue([I)I

    move-result v2

    invoke-static {v2}, Lcom/google/zxing/pdf417/PDF417Common;->getCodeword(I)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_16

    const/4 v0, 0x0

    goto :goto_9

    :cond_16
    new-instance v0, Lcom/google/zxing/pdf417/decoder/Codeword;

    invoke-static {v2}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(I)[I

    move-result-object v2

    const/4 v4, 0x0

    aget v4, v2, v4

    const/4 v5, 0x2

    aget v5, v2, v5

    sub-int/2addr v4, v5

    const/4 v5, 0x4

    aget v5, v2, v5

    add-int/2addr v4, v5

    const/4 v5, 0x6

    aget v2, v2, v5

    sub-int v2, v4, v2

    add-int/lit8 v2, v2, 0x9

    rem-int/lit8 v2, v2, 0x9

    invoke-direct {v0, p4, v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/Codeword;-><init>(IIII)V

    goto :goto_9
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;
    .locals 11

    new-instance v10, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    invoke-direct {v10, p1, p3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    const/4 v0, 0x2

    if-ge v9, v0, :cond_4

    if-nez v9, :cond_1

    const/4 v0, 0x1

    move v8, v0

    :goto_1
    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v4, v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v5, v0

    :goto_2
    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v0

    if-gt v5, v0, :cond_3

    invoke-virtual {p1}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v0

    if-lt v5, v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    move-object v0, p0

    move v3, p3

    move v6, p4

    move/from16 v7, p5

    invoke-static/range {v0 .. v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v10, v5, v0}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    if-eqz p3, :cond_2

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    :cond_0
    :goto_3
    add-int/2addr v5, v8

    goto :goto_2

    :cond_1
    const/4 v0, -0x1

    move v8, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    return-object v10
.end method

.method private static a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z
    .locals 1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(I)[I
    .locals 4

    const/16 v0, 0x8

    new-array v2, v0, [I

    const/4 v1, 0x0

    const/4 v0, 0x7

    :goto_0
    and-int/lit8 v3, p0, 0x1

    if-eq v3, v1, :cond_0

    and-int/lit8 v1, p0, 0x1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    :cond_0
    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    shr-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static decode(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;II)Lcom/google/zxing/common/DecoderResult;
    .locals 19

    new-instance v1, Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/zxing/pdf417/decoder/BoundingBox;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    move v9, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v8

    :goto_0
    const/4 v4, 0x2

    if-ge v9, v4, :cond_34

    if-eqz p1, :cond_33

    const/4 v4, 0x1

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v8

    :goto_1
    if-eqz p3, :cond_32

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-static/range {v1 .. v6}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/ResultPoint;ZII)Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    move-result-object v3

    :goto_2
    if-nez v8, :cond_0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_8

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_0
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_1
    if-nez v3, :cond_2

    const/4 v1, 0x0

    move-object v4, v1

    :goto_4
    if-nez v4, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v1

    move-object v4, v1

    goto :goto_4

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;->getBarcodeMetadata()Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;

    move-result-object v4

    if-nez v4, :cond_5

    :cond_4
    move-object v4, v1

    goto :goto_4

    :cond_5
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getColumnCount()I

    move-result v6

    if-eq v5, v6, :cond_6

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getErrorCorrectionLevel()I

    move-result v6

    if-eq v5, v6, :cond_6

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;->getRowCount()I

    move-result v4

    if-eq v5, v4, :cond_6

    const/4 v1, 0x0

    move-object v4, v1

    goto :goto_4

    :cond_6
    move-object v4, v1

    goto :goto_4

    :cond_7
    invoke-static {v8}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v1

    invoke-static {v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->merge(Lcom/google/zxing/pdf417/decoder/BoundingBox;Lcom/google/zxing/pdf417/decoder/BoundingBox;)Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v5

    new-instance v1, Lcom/google/zxing/pdf417/decoder/DetectionResult;

    invoke-direct {v1, v4, v5}, Lcom/google/zxing/pdf417/decoder/DetectionResult;-><init>(Lcom/google/zxing/pdf417/decoder/BarcodeMetadata;Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_3

    :cond_8
    if-nez v9, :cond_a

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v5

    if-lt v4, v5, :cond_9

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v5

    if-le v4, v5, :cond_a

    :cond_9
    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v4

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    move-object v7, v3

    move-object v3, v8

    move-object v2, v4

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setBoundingBox(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    move-object v11, v1

    move-object v1, v3

    move-object v3, v8

    :goto_5
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v4

    add-int/lit8 v15, v4, 0x1

    const/4 v4, 0x0

    invoke-virtual {v11, v4, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    invoke-virtual {v11, v15, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    if-eqz v3, :cond_f

    const/4 v6, 0x1

    :goto_6
    const/4 v14, 0x1

    move/from16 v10, p6

    move/from16 v9, p5

    :goto_7
    if-gt v14, v15, :cond_21

    if-eqz v6, :cond_10

    move v13, v14

    :goto_8
    invoke-virtual {v11, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v1

    if-nez v1, :cond_20

    if-eqz v13, :cond_b

    if-ne v13, v15, :cond_12

    :cond_b
    new-instance v1, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;

    if-nez v13, :cond_11

    const/4 v3, 0x1

    :goto_9
    invoke-direct {v1, v2, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultRowIndicatorColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;Z)V

    :goto_a
    invoke-virtual {v11, v13, v1}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->setDetectionResultColumn(ILcom/google/zxing/pdf417/decoder/DetectionResultColumn;)V

    const/4 v3, -0x1

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinY()I

    move-result v8

    move v12, v3

    :goto_b
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxY()I

    move-result v3

    if-gt v8, v3, :cond_20

    if-eqz v6, :cond_13

    const/4 v3, 0x1

    :goto_c
    const/4 v4, 0x0

    sub-int v5, v13, v3

    invoke-static {v11, v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v5

    if-eqz v5, :cond_c

    sub-int v4, v13, v3

    invoke-virtual {v11, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodeword(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    :cond_c
    if-eqz v4, :cond_15

    if-eqz v6, :cond_14

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    :goto_d
    if-ltz v7, :cond_d

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v3

    if-le v7, v3, :cond_e

    :cond_d
    const/4 v3, -0x1

    if-eq v12, v3, :cond_31

    move v7, v12

    :cond_e
    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v5

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v10}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/common/BitMatrix;IIZIIII)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v3

    if-eqz v3, :cond_31

    invoke-virtual {v1, v8, v3}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->setCodeword(ILcom/google/zxing/pdf417/decoder/Codeword;)V

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v4

    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/Codeword;->getWidth()I

    move-result v3

    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v3, v7

    :goto_e
    add-int/lit8 v8, v8, 0x1

    move v12, v3

    goto :goto_b

    :cond_f
    const/4 v6, 0x0

    goto :goto_6

    :cond_10
    sub-int v13, v15, v14

    goto :goto_8

    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    :cond_12
    new-instance v1, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    invoke-direct {v1, v2}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;-><init>(Lcom/google/zxing/pdf417/decoder/BoundingBox;)V

    goto :goto_a

    :cond_13
    const/4 v3, -0x1

    goto :goto_c

    :cond_14
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_d

    :cond_15
    invoke-virtual {v11, v13}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    if-eqz v4, :cond_17

    if-eqz v6, :cond_16

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_d

    :cond_16
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    goto :goto_d

    :cond_17
    sub-int v5, v13, v3

    invoke-static {v11, v5}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v5

    if-eqz v5, :cond_18

    sub-int v4, v13, v3

    invoke-virtual {v11, v4}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4, v8}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewordNearby(I)Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v4

    :cond_18
    if-eqz v4, :cond_1a

    if-eqz v6, :cond_19

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v7

    goto :goto_d

    :cond_19
    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    goto :goto_d

    :cond_1a
    const/4 v4, 0x0

    move v5, v4

    move v4, v13

    :goto_f
    sub-int v7, v4, v3

    invoke-static {v11, v7}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(Lcom/google/zxing/pdf417/decoder/DetectionResult;I)Z

    move-result v7

    if-eqz v7, :cond_1e

    sub-int v7, v4, v3

    invoke-virtual {v11, v7}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumn(I)Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    const/4 v4, 0x0

    :goto_10
    move/from16 v0, v17

    if-ge v4, v0, :cond_1d

    aget-object v18, v16, v4

    if-eqz v18, :cond_1c

    if-eqz v6, :cond_1b

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v4

    :goto_11
    mul-int/2addr v3, v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/Codeword;->getEndX()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v7

    sub-int/2addr v5, v7

    mul-int/2addr v3, v5

    add-int v7, v4, v3

    goto/16 :goto_d

    :cond_1b
    invoke-virtual/range {v18 .. v18}, Lcom/google/zxing/pdf417/decoder/Codeword;->getStartX()I

    move-result v4

    goto :goto_11

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_1d
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v7

    goto :goto_f

    :cond_1e
    if-eqz v6, :cond_1f

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMinX()I

    move-result v7

    goto/16 :goto_d

    :cond_1f
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBoundingBox()Lcom/google/zxing/pdf417/decoder/BoundingBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/zxing/pdf417/decoder/BoundingBox;->getMaxX()I

    move-result v7

    goto/16 :goto_d

    :cond_20
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_7

    :cond_21
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v1

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    const-class v2, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    array-length v2, v1

    if-ge v3, v2, :cond_23

    const/4 v2, 0x0

    :goto_13
    aget-object v4, v1, v3

    array-length v4, v4

    if-ge v2, v4, :cond_22

    aget-object v4, v1, v3

    new-instance v5, Lcom/google/zxing/pdf417/decoder/BarcodeValue;

    invoke-direct {v5}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;-><init>()V

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_22
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_12

    :cond_23
    const/4 v3, 0x0

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getDetectionResultColumns()[Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;

    move-result-object v5

    array-length v6, v5

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v6, :cond_27

    aget-object v4, v5, v2

    if-eqz v4, :cond_26

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/DetectionResultColumn;->getCodewords()[Lcom/google/zxing/pdf417/decoder/Codeword;

    move-result-object v7

    array-length v8, v7

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v8, :cond_26

    aget-object v9, v7, v4

    if-eqz v9, :cond_25

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getRowNumber()I

    move-result v10

    if-ltz v10, :cond_25

    array-length v12, v1

    if-lt v10, v12, :cond_24

    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    :cond_24
    aget-object v10, v1, v10

    aget-object v10, v10, v3

    invoke-virtual {v9}, Lcom/google/zxing/pdf417/decoder/Codeword;->getValue()I

    move-result v9

    invoke-virtual {v10, v9}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    :cond_26
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_27
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v2

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v4

    const/4 v5, 0x2

    shl-int v4, v5, v4

    sub-int/2addr v3, v4

    array-length v4, v2

    if-nez v4, :cond_2b

    if-lez v3, :cond_28

    const/16 v2, 0x3a0

    if-le v3, v2, :cond_29

    :cond_28
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v1

    throw v1

    :cond_29
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    :cond_2a
    :goto_16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v2

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v3

    mul-int/2addr v2, v3

    new-array v5, v2, [I

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeRowCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    const/4 v3, 0x0

    :goto_18
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v8

    if-ge v3, v8, :cond_2e

    aget-object v8, v1, v2

    add-int/lit8 v9, v3, 0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v8

    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeColumnCount()I

    move-result v9

    mul-int/2addr v9, v2

    add-int/2addr v9, v3

    array-length v10, v8

    if-nez v10, :cond_2c

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_2b
    const/4 v4, 0x0

    aget v2, v2, v4

    if-eq v2, v3, :cond_2a

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->setValue(I)V

    goto :goto_16

    :cond_2c
    array-length v10, v8

    const/4 v12, 0x1

    if-ne v10, v12, :cond_2d

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v8, v5, v9

    goto :goto_19

    :cond_2d
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    :cond_2f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [[I

    const/4 v1, 0x0

    move v2, v1

    :goto_1a
    array-length v1, v3

    if-ge v2, v1, :cond_30

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    aput-object v1, v3, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1a

    :cond_30
    invoke-virtual {v11}, Lcom/google/zxing/pdf417/decoder/DetectionResult;->getBarcodeECLevel()I

    move-result v1

    invoke-static {v4}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v2

    invoke-static {v7}, Lcom/google/zxing/pdf417/PDF417Common;->toIntArray(Ljava/util/Collection;)[I

    move-result-object v4

    invoke-static {v1, v5, v2, v4, v3}, Lcom/google/zxing/pdf417/decoder/PDF417ScanningDecoder;->a(I[I[I[I[[I)Lcom/google/zxing/common/DecoderResult;

    move-result-object v1

    return-object v1

    :cond_31
    move v3, v12

    goto/16 :goto_e

    :cond_32
    move-object v3, v7

    goto/16 :goto_2

    :cond_33
    move-object v8, v3

    goto/16 :goto_1

    :cond_34
    move-object v11, v1

    move-object v1, v7

    goto/16 :goto_5
.end method

.method public static toString([[Lcom/google/zxing/pdf417/decoder/BarcodeValue;)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    new-instance v3, Ljava/util/Formatter;

    invoke-direct {v3}, Ljava/util/Formatter;-><init>()V

    move v0, v1

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    const-string/jumbo v2, "Row %2d: "

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move v2, v1

    :goto_1
    aget-object v4, p0, v0

    array-length v4, v4

    if-ge v2, v4, :cond_1

    aget-object v4, p0, v0

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    const-string/jumbo v4, "        "

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const-string/jumbo v5, "%4d(%2d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getValue()[I

    move-result-object v7

    aget v7, v7, v1

    invoke-virtual {v4, v7}, Lcom/google/zxing/pdf417/decoder/BarcodeValue;->getConfidence(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v8

    invoke-virtual {v3, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    goto :goto_2

    :cond_1
    const-string/jumbo v2, "%n"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Ljava/util/Formatter;->close()V

    return-object v0
.end method
