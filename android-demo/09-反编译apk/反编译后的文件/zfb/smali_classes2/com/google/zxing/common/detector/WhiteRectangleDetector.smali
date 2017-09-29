.class public final Lcom/google/zxing/common/detector/WhiteRectangleDetector;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 3

    const/16 v0, 0xa

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;-><init>(Lcom/google/zxing/common/BitMatrix;III)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    invoke-virtual {p1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    div-int/lit8 v0, p2, 0x2

    sub-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    add-int v1, p3, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    sub-int v1, p4, v0

    iput v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    iget v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    return-void
.end method

.method private a(FFFF)Lcom/google/zxing/ResultPoint;
    .locals 7

    invoke-static {p1, p2, p3, p4}, Lcom/google/zxing/common/detector/MathUtils;->distance(FFFF)F

    move-result v0

    invoke-static {v0}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v1

    sub-float v0, p3, p1

    int-to-float v2, v1

    div-float v2, v0, v2

    sub-float v0, p4, p2

    int-to-float v3, v1

    div-float v3, v0, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    int-to-float v4, v0

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    int-to-float v5, v0

    mul-float/2addr v5, v3

    add-float/2addr v5, p2

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Lcom/google/zxing/ResultPoint;

    int-to-float v1, v4

    int-to-float v2, v5

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private a(IIIZ)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p4, :cond_2

    :goto_0
    if-gt p1, p2, :cond_3

    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p1, p3}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    if-gt p1, p2, :cond_3

    iget-object v1, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1, p3, p1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final detect()[Lcom/google/zxing/ResultPoint;
    .locals 13

    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->d:I

    iget v5, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->e:I

    iget v4, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->g:I

    iget v3, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    move v12, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v12

    :goto_0
    if-eqz v6, :cond_1f

    const/4 v11, 0x0

    const/4 v6, 0x1

    move v12, v10

    move v10, v11

    move v11, v12

    :cond_0
    :goto_1
    if-nez v6, :cond_1

    if-nez v11, :cond_3

    :cond_1
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v4, v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_2

    add-int/lit8 v11, v4, 0x1

    const/4 v10, 0x1

    const/4 v4, 0x1

    move v12, v4

    move v4, v11

    move v11, v12

    goto :goto_1

    :cond_2
    if-nez v11, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    if-lt v4, v6, :cond_4

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    :goto_2
    if-nez v1, :cond_1e

    if-eqz v0, :cond_1e

    sub-int v7, v6, v3

    const/4 v1, 0x0

    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_3
    if-ge v1, v7, :cond_15

    int-to-float v0, v3

    sub-int v4, v5, v1

    int-to-float v4, v4

    add-int v8, v3, v1

    int-to-float v8, v8

    int-to-float v9, v5

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    move v12, v9

    move v9, v10

    move v10, v12

    :cond_5
    :goto_4
    if-nez v6, :cond_6

    if-nez v10, :cond_8

    :cond_6
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-ge v2, v6, :cond_8

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v2, v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_7

    add-int/lit8 v10, v2, 0x1

    const/4 v9, 0x1

    const/4 v2, 0x1

    move v12, v2

    move v2, v10

    move v10, v12

    goto :goto_4

    :cond_7
    if-nez v10, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iget v6, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->b:I

    if-lt v2, v6, :cond_9

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto :goto_2

    :cond_9
    const/4 v6, 0x1

    move v12, v8

    move v8, v9

    move v9, v12

    :cond_a
    :goto_5
    if-nez v6, :cond_b

    if-nez v9, :cond_d

    :cond_b
    if-ltz v5, :cond_d

    const/4 v6, 0x0

    invoke-direct {p0, v3, v2, v5, v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_c

    add-int/lit8 v9, v5, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x1

    move v12, v5

    move v5, v9

    move v9, v12

    goto :goto_5

    :cond_c
    if-nez v9, :cond_a

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_d
    if-gez v5, :cond_e

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto :goto_2

    :cond_e
    const/4 v6, 0x1

    :cond_f
    :goto_6
    if-nez v6, :cond_10

    if-nez v7, :cond_12

    :cond_10
    if-ltz v3, :cond_12

    const/4 v6, 0x1

    invoke-direct {p0, v5, v4, v3, v6}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(IIIZ)Z

    move-result v6

    if-eqz v6, :cond_11

    add-int/lit8 v8, v3, -0x1

    const/4 v7, 0x1

    const/4 v3, 0x1

    move v12, v3

    move v3, v8

    move v8, v7

    move v7, v12

    goto :goto_6

    :cond_11
    if-nez v7, :cond_f

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_12
    if-gez v3, :cond_13

    const/4 v1, 0x1

    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_2

    :cond_13
    if-eqz v8, :cond_14

    const/4 v0, 0x1

    :cond_14
    move v6, v8

    move v8, v9

    move v9, v10

    move v10, v11

    goto/16 :goto_0

    :cond_15
    move-object v4, v0

    if-nez v4, :cond_16

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_16
    const/4 v1, 0x0

    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_7
    if-ge v1, v7, :cond_17

    int-to-float v0, v3

    add-int v8, v2, v1

    int-to-float v8, v8

    add-int v9, v3, v1

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    move-object v3, v0

    if-nez v3, :cond_18

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_18
    const/4 v0, 0x0

    const/4 v1, 0x1

    :goto_8
    if-ge v1, v7, :cond_19

    int-to-float v0, v6

    add-int v8, v2, v1

    int-to-float v8, v8

    sub-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_19

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_19
    move-object v2, v0

    if-nez v2, :cond_1a

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1a
    const/4 v1, 0x0

    const/4 v0, 0x1

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_9
    if-ge v1, v7, :cond_1b

    int-to-float v0, v6

    sub-int v8, v5, v1

    int-to-float v8, v8

    sub-int v9, v6, v1

    int-to-float v9, v9

    int-to-float v10, v5

    invoke-direct {p0, v0, v8, v9, v10}, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->a(FFFF)Lcom/google/zxing/ResultPoint;

    move-result-object v0

    if-nez v0, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1b
    if-nez v0, :cond_1c

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1c
    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v6

    invoke-virtual {v4}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v7

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v8

    invoke-virtual {v3}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    iget v0, p0, Lcom/google/zxing/common/detector/WhiteRectangleDetector;->c:I

    int-to-float v0, v0

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v0, v9

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1d

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v8, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v3, v11

    invoke-direct {v10, v8, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v3, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v4, v9

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v2, v7

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v0, v2

    :goto_a
    return-object v0

    :cond_1d
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/zxing/ResultPoint;

    const/4 v9, 0x0

    new-instance v10, Lcom/google/zxing/ResultPoint;

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v8, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v3, v11

    invoke-direct {v10, v8, v3}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v10, v0, v9

    const/4 v3, 0x1

    new-instance v8, Lcom/google/zxing/ResultPoint;

    const/high16 v9, 0x3f800000    # 1.0f

    add-float/2addr v6, v9

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v4, v9

    invoke-direct {v8, v6, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v8, v0, v3

    const/4 v3, 0x2

    new-instance v4, Lcom/google/zxing/ResultPoint;

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v2, v7

    invoke-direct {v4, v6, v2}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v4, v0, v3

    const/4 v2, 0x3

    new-instance v3, Lcom/google/zxing/ResultPoint;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v1, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v5, v4

    invoke-direct {v3, v1, v4}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    aput-object v3, v0, v2

    goto :goto_a

    :cond_1e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1f
    move v6, v4

    move v12, v3

    move v3, v5

    move v5, v2

    move v2, v12

    goto/16 :goto_2
.end method
