.class final Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/AlignmentPattern;",
            ">;"
        }
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:F

.field private final h:[I

.field private final i:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method constructor <init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->b:Ljava/util/List;

    iput p2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->c:I

    iput p3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->d:I

    iput p4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->e:I

    iput p5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->f:I

    iput p6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->g:F

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->h:[I

    iput-object p7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->i:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static a([II)F
    .locals 3

    const/4 v0, 0x2

    aget v0, p0, v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 10

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p1, v1

    add-int/2addr v1, v0

    invoke-static {p1, p3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([II)F

    move-result v2

    float-to-int v3, v2

    const/4 v0, 0x1

    aget v0, p1, v0

    mul-int/lit8 v4, v0, 0x2

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v5}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->h:[I

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x1

    const/4 v8, 0x0

    aput v8, v7, v0

    const/4 v0, 0x2

    const/4 v8, 0x0

    aput v8, v7, v0

    move v0, p2

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v5, v3, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_0

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_3

    :cond_1
    const/high16 v0, 0x7fc00000    # NaNf

    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v3, 0x1

    aget v3, p1, v3

    add-int/2addr v0, v3

    const/4 v3, 0x2

    aget v3, p1, v3

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v3, 0x40400000    # 3.0f

    div-float v3, v0, v3

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-virtual {v0, v3, v1, v2}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->aboutEquals(FFF)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_3
    :goto_3
    if-ltz v0, :cond_4

    invoke-virtual {v5, v3, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x0

    aget v8, v7, v8

    if-gt v8, v4, :cond_4

    const/4 v8, 0x0

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    aget v0, v7, v0

    if-le v0, v4, :cond_5

    const/high16 v0, 0x7fc00000    # NaNf

    move v1, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v0, p2, 0x1

    :goto_4
    if-ge v0, v6, :cond_6

    invoke-virtual {v5, v3, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    aget v8, v7, v8

    if-gt v8, v4, :cond_6

    const/4 v8, 0x1

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    if-eq v0, v6, :cond_7

    const/4 v8, 0x1

    aget v8, v7, v8

    if-le v8, v4, :cond_8

    :cond_7
    const/high16 v0, 0x7fc00000    # NaNf

    move v1, v0

    goto :goto_1

    :cond_8
    :goto_5
    if-ge v0, v6, :cond_9

    invoke-virtual {v5, v3, v0}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v8

    if-nez v8, :cond_9

    const/4 v8, 0x2

    aget v8, v7, v8

    if-gt v8, v4, :cond_9

    const/4 v8, 0x2

    aget v9, v7, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v7, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    const/4 v3, 0x2

    aget v3, v7, v3

    if-le v3, v4, :cond_a

    const/high16 v0, 0x7fc00000    # NaNf

    move v1, v0

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, 0x1

    aget v4, v7, v4

    add-int/2addr v3, v4

    const/4 v4, 0x2

    aget v4, v7, v4

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    mul-int/lit8 v1, v1, 0x2

    if-lt v3, v1, :cond_b

    const/high16 v0, 0x7fc00000    # NaNf

    move v1, v0

    goto/16 :goto_1

    :cond_b
    invoke-direct {p0, v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v7, v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([II)F

    move-result v0

    move v1, v0

    goto/16 :goto_1

    :cond_c
    const/high16 v0, 0x7fc00000    # NaNf

    move v1, v0

    goto/16 :goto_1

    :cond_d
    new-instance v0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPattern;-><init>(FFF)V

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->i:Lcom/google/zxing/ResultPointCallback;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->i:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v1, v0}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private a([I)Z
    .locals 5

    const/4 v0, 0x0

    iget v2, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->g:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float v3, v2, v1

    move v1, v0

    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_1

    aget v4, p1, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-ltz v4, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method final find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 13

    const/4 v12, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v4, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->c:I

    iget v6, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->f:I

    iget v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->e:I

    add-int v7, v4, v0

    iget v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->d:I

    div-int/lit8 v3, v6, 0x2

    add-int v8, v0, v3

    const/4 v0, 0x3

    new-array v9, v0, [I

    move v5, v2

    :goto_0
    if-ge v5, v6, :cond_9

    and-int/lit8 v0, v5, 0x1

    if-nez v0, :cond_0

    add-int/lit8 v0, v5, 0x1

    div-int/lit8 v0, v0, 0x2

    :goto_1
    add-int v10, v8, v0

    aput v2, v9, v2

    aput v2, v9, v1

    aput v2, v9, v12

    move v0, v4

    :goto_2
    if-ge v0, v7, :cond_1

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3, v0, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v5, 0x1

    div-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    goto :goto_1

    :cond_1
    move v3, v0

    move v0, v2

    :goto_3
    if-ge v3, v7, :cond_7

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v11, v3, v10}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eq v0, v1, :cond_6

    if-ne v0, v12, :cond_4

    invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, v9, v10, v3}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_4
    return-object v0

    :cond_3
    aget v0, v9, v12

    aput v0, v9, v2

    aput v1, v9, v1

    aput v2, v9, v12

    move v0, v1

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_5

    :cond_5
    if-ne v0, v1, :cond_6

    add-int/lit8 v0, v0, 0x1

    :cond_6
    aget v11, v9, v0

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v0

    goto :goto_5

    :cond_7
    invoke-direct {p0, v9}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([I)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, v9, v10, v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->a([III)Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_8
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    goto :goto_4

    :cond_a
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0
.end method
