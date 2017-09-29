.class public final Lcom/google/zxing/pdf417/detector/Detector;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->a:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->b:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->c:[I

    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/zxing/pdf417/detector/Detector;->d:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x2
        0x7
        0x3
    .end array-data

    :array_2
    .array-data 4
        0x8
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_3
    .array-data 4
        0x7
        0x1
        0x1
        0x3
        0x1
        0x1
        0x1
        0x2
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([I[I)F
    .locals 10

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v1, 0x0

    array-length v6, p0

    move v2, v1

    move v4, v1

    move v5, v1

    :goto_0
    if-ge v2, v6, :cond_0

    aget v3, p0, v2

    add-int/2addr v3, v4

    aget v4, p1, v2

    add-int/2addr v4, v5

    add-int/lit8 v2, v2, 0x1

    move v5, v4

    move v4, v3

    goto :goto_0

    :cond_0
    if-ge v4, v5, :cond_2

    :cond_1
    :goto_1
    return v0

    :cond_2
    int-to-float v2, v4

    int-to-float v3, v5

    div-float v5, v2, v3

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v7, v2, v5

    const/4 v2, 0x0

    move v3, v2

    move v2, v1

    :goto_2
    if-ge v2, v6, :cond_4

    aget v1, p0, v2

    aget v8, p1, v2

    int-to-float v8, v8

    mul-float/2addr v8, v5

    int-to-float v9, v1

    cmpl-float v9, v9, v8

    if-lez v9, :cond_3

    int-to-float v1, v1

    sub-float/2addr v1, v8

    :goto_3
    cmpl-float v8, v1, v7

    if-gtz v8, :cond_1

    add-float/2addr v3, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_3
    int-to-float v1, v1

    sub-float v1, v8, v1

    goto :goto_3

    :cond_4
    int-to-float v0, v4

    div-float v0, v3, v0

    goto :goto_1
.end method

.method private static a(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/google/zxing/common/BitMatrix;",
            ")",
            "Ljava/util/List",
            "<[",
            "Lcom/google/zxing/ResultPoint;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    if-ge v3, v0, :cond_5

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    const/16 v0, 0x8

    new-array v12, v0, [Lcom/google/zxing/ResultPoint;

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->c:[I

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->a(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v5, Lcom/google/zxing/pdf417/detector/Detector;->a:[I

    invoke-static {v12, v0, v5}, Lcom/google/zxing/pdf417/detector/Detector;->a([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    const/4 v0, 0x4

    aget-object v0, v12, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x4

    aget-object v0, v12, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v8, v0

    const/4 v0, 0x4

    aget-object v0, v12, v0

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v7, v0

    :goto_1
    sget-object v9, Lcom/google/zxing/pdf417/detector/Detector;->d:[I

    move-object v4, p1

    move v5, v1

    move v6, v2

    invoke-static/range {v4 .. v9}, Lcom/google/zxing/pdf417/detector/Detector;->a(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;

    move-result-object v0

    sget-object v1, Lcom/google/zxing/pdf417/detector/Detector;->b:[I

    invoke-static {v12, v0, v1}, Lcom/google/zxing/pdf417/detector/Detector;->a([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V

    const/4 v0, 0x0

    aget-object v0, v12, v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    aget-object v0, v12, v0

    if-nez v0, :cond_3

    if-eqz v10, :cond_5

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v3

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    if-eqz v3, :cond_1

    int-to-float v2, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    :cond_1
    const/4 v3, 0x3

    aget-object v3, v0, v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v2, 0x5

    move v10, v1

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x1

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    aget-object v1, v12, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    aget-object v1, v12, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v4, v1

    const/4 v1, 0x2

    aget-object v1, v12, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v3, v1

    move v10, v0

    goto/16 :goto_0

    :cond_4
    const/4 v1, 0x4

    aget-object v1, v12, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v4, v1

    const/4 v1, 0x4

    aget-object v1, v12, v1

    invoke-virtual {v1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v3, v1

    move v10, v0

    goto/16 :goto_0

    :cond_5
    return-object v11

    :cond_6
    move v8, v4

    move v7, v3

    goto/16 :goto_1
.end method

.method private static a([Lcom/google/zxing/ResultPoint;[Lcom/google/zxing/ResultPoint;[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    aget-object v2, p1, v0

    aput-object v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;III[I[I)[I
    .locals 10

    const v9, 0x3ed70a3d    # 0.42f

    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    array-length v0, p5

    invoke-static {p5, v1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    array-length v5, p4

    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez p1, :cond_0

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    add-int/lit8 p1, p1, -0x1

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    move v3, v1

    move v2, p1

    :goto_1
    if-ge p1, p3, :cond_5

    invoke-virtual {p0, p1, p2}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    xor-int/2addr v6, v3

    if-eqz v6, :cond_1

    aget v6, p5, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, p5, v0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v5, -0x1

    if-ne v0, v6, :cond_3

    invoke-static {p5, p4}, Lcom/google/zxing/pdf417/detector/Detector;->a([I[I)F

    move-result v6

    cmpg-float v6, v6, v9

    if-gez v6, :cond_2

    new-array v0, v8, [I

    aput v2, v0, v1

    aput p1, v0, v4

    :goto_3
    return-object v0

    :cond_2
    aget v6, p5, v1

    aget v7, p5, v4

    add-int/2addr v6, v7

    add-int/2addr v2, v6

    add-int/lit8 v6, v5, -0x2

    invoke-static {p5, v8, p5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v5, -0x2

    aput v1, p5, v6

    add-int/lit8 v6, v5, -0x1

    aput v1, p5, v6

    add-int/lit8 v0, v0, -0x1

    :goto_4
    aput v4, p5, v0

    if-nez v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    move v3, v1

    goto :goto_2

    :cond_5
    add-int/lit8 v3, v5, -0x1

    if-ne v0, v3, :cond_6

    invoke-static {p5, p4}, Lcom/google/zxing/pdf417/detector/Detector;->a([I[I)F

    move-result v0

    cmpg-float v0, v0, v9

    if-gez v0, :cond_6

    new-array v0, v8, [I

    aput v2, v0, v1

    add-int/lit8 v1, p1, -0x1

    aput v1, v0, v4

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private static a(Lcom/google/zxing/common/BitMatrix;IIII[I)[Lcom/google/zxing/ResultPoint;
    .locals 10

    const/4 v0, 0x4

    new-array v9, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    array-length v0, p5

    new-array v5, v0, [I

    move v2, p3

    :goto_0
    if-ge v2, p1, :cond_7

    move-object v0, p0

    move v1, p4

    move v3, p2

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->a(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v6, v0

    move v0, v2

    :goto_1
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    move-object v0, p0

    move v1, p4

    move v3, p2

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->a(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v6, v0

    move v0, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    :cond_1
    const/4 v1, 0x0

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aget v3, v6, v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x1

    aget v3, v6, v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v1

    const/4 v1, 0x1

    move v8, v0

    :goto_2
    add-int/lit8 v0, v8, 0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v6, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-object v3, v9, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v6, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-object v3, v9, v3

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    aput v3, v6, v2

    move v2, v0

    move v7, v1

    :goto_3
    if-ge v2, p1, :cond_4

    const/4 v0, 0x0

    aget v1, v6, v0

    move-object v0, p0

    move v3, p2

    move-object v4, p5

    invoke-static/range {v0 .. v5}, Lcom/google/zxing/pdf417/detector/Detector;->a(Lcom/google/zxing/common/BitMatrix;III[I[I)[I

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    aget v0, v6, v0

    const/4 v3, 0x0

    aget v3, v1, v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    const/4 v0, 0x1

    aget v0, v6, v0

    const/4 v3, 0x1

    aget v3, v1, v3

    sub-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v3, 0x5

    if-ge v0, v3, :cond_3

    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v7, v0

    move-object v6, v1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x5

    goto/16 :goto_0

    :cond_3
    const/16 v0, 0x19

    if-gt v7, v0, :cond_4

    add-int/lit8 v0, v7, 0x1

    move-object v1, v6

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v7, 0x1

    sub-int v0, v2, v0

    const/4 v1, 0x2

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x0

    aget v3, v6, v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/google/zxing/ResultPoint;

    const/4 v3, 0x1

    aget v3, v6, v3

    int-to-float v3, v3

    int-to-float v4, v0

    invoke-direct {v2, v3, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v2, v9, v1

    :cond_5
    sub-int/2addr v0, v8

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_6

    const/4 v1, 0x0

    aput-object v1, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    return-object v9

    :cond_7
    move v1, v6

    move v8, v2

    goto/16 :goto_2
.end method

.method public static detect(Lcom/google/zxing/BinaryBitmap;Ljava/util/Map;Z)Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/zxing/BinaryBitmap;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;Z)",
            "Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/zxing/BinaryBitmap;->getBlackMatrix()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->a(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->clone()Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->rotate180()V

    invoke-static {p2, v1}, Lcom/google/zxing/pdf417/detector/Detector;->a(ZLcom/google/zxing/common/BitMatrix;)Ljava/util/List;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;

    invoke-direct {v2, v1, v0}, Lcom/google/zxing/pdf417/detector/PDF417DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;Ljava/util/List;)V

    return-object v2
.end method
