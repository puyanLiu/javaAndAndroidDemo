.class public Lcom/google/zxing/qrcode/detector/FinderPatternFinder;
.super Ljava/lang/Object;


# static fields
.field protected static final MAX_MODULES:I = 0x39

.field protected static final MIN_SKIP:I = 0x3


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private final d:[I

.field private final e:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    iput-object p2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    return-void
.end method

.method private static a([II)F
    .locals 3

    const/4 v0, 0x4

    aget v0, p0, v0

    sub-int v0, p1, v0

    const/4 v1, 0x3

    aget v1, p0, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private a()[I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    aput v2, v0, v2

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    const/4 v1, 0x4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->d:[I

    return-object v0
.end method

.method private b()Z
    .locals 9

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v2

    move v3, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v7

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    if-ge v3, v0, :cond_2

    :cond_1
    :goto_2
    return v4

    :cond_2
    int-to-float v0, v5

    div-float v3, v1, v0

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    add-float/2addr v2, v0

    goto :goto_3

    :cond_3
    const v0, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    move v1, v3

    goto :goto_1
.end method

.method protected static foundPatternCross([I)Z
    .locals 7

    const/4 v1, 0x1

    const/high16 v6, 0x40400000    # 3.0f

    const/4 v0, 0x0

    move v2, v0

    move v3, v0

    :goto_0
    const/4 v4, 0x5

    if-ge v2, v4, :cond_2

    aget v4, p0, v2

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x7

    if-lt v3, v2, :cond_0

    int-to-float v2, v3

    const/high16 v3, 0x40e00000    # 7.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v2, v3

    aget v4, p0, v0

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    aget v4, p0, v1

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    mul-float v4, v6, v2

    const/4 v5, 0x2

    aget v5, p0, v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float v5, v6, v3

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    const/4 v4, 0x3

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_0

    const/4 v4, 0x4

    aget v4, p0, v4

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method final find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/qrcode/detector/FinderPatternInfo;"
        }
    .end annotation

    if-eqz p1, :cond_3

    sget-object v0, Lcom/google/zxing/DecodeHintType;->TRY_HARDER:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v2, v0

    :goto_0
    if-eqz p1, :cond_4

    sget-object v0, Lcom/google/zxing/DecodeHintType;->PURE_BARCODE:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    mul-int/lit8 v0, v7, 0x3

    div-int/lit16 v0, v0, 0xe4

    const/4 v3, 0x3

    if-lt v0, v3, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x3

    :cond_1
    const/4 v5, 0x0

    const/4 v2, 0x5

    new-array v9, v2, [I

    add-int/lit8 v4, v0, -0x1

    move v2, v0

    :goto_2
    if-ge v4, v7, :cond_10

    if-nez v5, :cond_10

    const/4 v0, 0x0

    const/4 v3, 0x0

    aput v3, v9, v0

    const/4 v0, 0x1

    const/4 v3, 0x0

    aput v3, v9, v0

    const/4 v0, 0x2

    const/4 v3, 0x0

    aput v3, v9, v0

    const/4 v0, 0x3

    const/4 v3, 0x0

    aput v3, v9, v0

    const/4 v0, 0x4

    const/4 v3, 0x0

    aput v3, v9, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v8, :cond_e

    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6, v3, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v6

    if-eqz v6, :cond_5

    and-int/lit8 v6, v0, 0x1

    const/4 v10, 0x1

    if-ne v6, v10, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_2
    aget v6, v9, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v9, v0

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    move v1, v0

    goto :goto_1

    :cond_5
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_d

    const/4 v6, 0x4

    if-ne v0, v6, :cond_c

    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0, v9, v4, v3, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v6, 0x2

    iget-boolean v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()Z

    move-result v0

    :goto_5
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x0

    aput v10, v9, v5

    const/4 v5, 0x1

    const/4 v10, 0x0

    aput v10, v9, v5

    const/4 v5, 0x2

    const/4 v10, 0x0

    aput v10, v9, v5

    const/4 v5, 0x3

    const/4 v10, 0x0

    aput v10, v9, v5

    const/4 v5, 0x4

    const/4 v10, 0x0

    aput v10, v9, v5

    move v5, v0

    move v0, v2

    move v2, v6

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v2, v0

    :cond_7
    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getCount()I

    move-result v11

    const/4 v12, 0x2

    if-lt v11, v12, :cond_7

    if-nez v2, :cond_8

    move-object v2, v0

    goto :goto_6

    :cond_8
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v10

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-virtual {v2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v0

    sub-float v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sub-float v0, v10, v0

    float-to-int v0, v0

    div-int/lit8 v0, v0, 0x2

    :goto_7
    const/4 v2, 0x2

    aget v2, v9, v2

    if-le v0, v2, :cond_17

    const/4 v2, 0x2

    aget v2, v9, v2

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x2

    add-int v2, v4, v0

    add-int/lit8 v0, v8, -0x1

    :goto_8
    move v3, v0

    move v4, v2

    move v0, v5

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :cond_a
    const/4 v0, 0x0

    const/4 v6, 0x2

    aget v6, v9, v6

    aput v6, v9, v0

    const/4 v0, 0x1

    const/4 v6, 0x3

    aget v6, v9, v6

    aput v6, v9, v0

    const/4 v0, 0x2

    const/4 v6, 0x4

    aget v6, v9, v6

    aput v6, v9, v0

    const/4 v0, 0x3

    const/4 v6, 0x1

    aput v6, v9, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput v6, v9, v0

    const/4 v0, 0x3

    goto/16 :goto_4

    :cond_b
    const/4 v0, 0x0

    const/4 v6, 0x2

    aget v6, v9, v6

    aput v6, v9, v0

    const/4 v0, 0x1

    const/4 v6, 0x3

    aget v6, v9, v6

    aput v6, v9, v0

    const/4 v0, 0x2

    const/4 v6, 0x4

    aget v6, v9, v6

    aput v6, v9, v0

    const/4 v0, 0x3

    const/4 v6, 0x1

    aput v6, v9, v0

    const/4 v0, 0x4

    const/4 v6, 0x0

    aput v6, v9, v0

    const/4 v0, 0x3

    goto/16 :goto_4

    :cond_c
    add-int/lit8 v0, v0, 0x1

    aget v6, v9, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v9, v0

    goto/16 :goto_4

    :cond_d
    aget v6, v9, v0

    add-int/lit8 v6, v6, 0x1

    aput v6, v9, v0

    goto/16 :goto_4

    :cond_e
    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v9, v4, v8, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->handlePossibleCenter([IIIZ)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    aget v2, v9, v0

    iget-boolean v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->c:Z

    if-eqz v0, :cond_f

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b()Z

    move-result v5

    :cond_f
    add-int/2addr v4, v2

    goto/16 :goto_2

    :cond_10
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x3

    if-ge v3, v0, :cond_11

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_11
    const/4 v0, 0x3

    if-le v3, v0, :cond_14

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v1

    move v1, v0

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    add-float/2addr v2, v0

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_9

    :cond_12
    int-to-float v0, v3

    div-float/2addr v2, v0

    int-to-float v0, v3

    div-float v0, v1, v0

    mul-float v1, v2, v2

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v3, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$FurthestFromAverageComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_14

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x3

    if-le v0, v4, :cond_14

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_13

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_13
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_16

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getEstimatedModuleSize()F

    move-result v0

    add-float/2addr v0, v1

    move v1, v0

    goto :goto_b

    :cond_15
    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-float v0, v0

    div-float v0, v1, v0

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    new-instance v2, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder$CenterComparator;-><init>(FLcom/google/zxing/qrcode/detector/FinderPatternFinder$1;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_16
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/google/zxing/qrcode/detector/FinderPattern;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v2

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v2

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/qrcode/detector/FinderPattern;

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/google/zxing/ResultPoint;->orderBestPatterns([Lcom/google/zxing/ResultPoint;)V

    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    invoke-direct {v0, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;-><init>([Lcom/google/zxing/qrcode/detector/FinderPattern;)V

    return-object v0

    :cond_17
    move v0, v3

    move v2, v4

    goto/16 :goto_8
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getPossibleCenters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/zxing/qrcode/detector/FinderPattern;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    return-object v0
.end method

.method protected final handlePossibleCenter([IIIZ)Z
    .locals 14

    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget v2, p1, v2

    add-int/2addr v1, v2

    const/4 v2, 0x4

    aget v2, p1, v2

    add-int v4, v1, v2

    move/from16 v0, p3

    invoke-static {p1, v0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v3

    float-to-int v2, v3

    const/4 v1, 0x2

    aget v5, p1, v1

    iget-object v6, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v6}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v7

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v8

    move/from16 v1, p2

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v6, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    if-gez v1, :cond_1

    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_32

    float-to-int v3, v3

    float-to-int v5, v2

    const/4 v1, 0x2

    aget v6, p1, v1

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v7}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v8

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v9

    move v1, v3

    :goto_2
    if-ltz v1, :cond_10

    invoke-virtual {v7, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_10

    const/4 v10, 0x2

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_1
    :goto_3
    if-ltz v1, :cond_2

    invoke-virtual {v6, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x1

    aget v9, v8, v9

    if-gt v9, v5, :cond_2

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    :cond_2
    if-ltz v1, :cond_3

    const/4 v9, 0x1

    aget v9, v8, v9

    if-le v9, v5, :cond_4

    :cond_3
    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto :goto_1

    :cond_4
    :goto_4
    if-ltz v1, :cond_5

    invoke-virtual {v6, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    aget v9, v8, v9

    if-gt v9, v5, :cond_5

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    aget v1, v8, v1

    if-le v1, v5, :cond_6

    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, p2, 0x1

    :goto_5
    if-ge v1, v7, :cond_7

    invoke-virtual {v6, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_7

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    if-ne v1, v7, :cond_8

    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto/16 :goto_1

    :cond_8
    :goto_6
    if-ge v1, v7, :cond_9

    invoke-virtual {v6, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x3

    aget v9, v8, v9

    if-ge v9, v5, :cond_9

    const/4 v9, 0x3

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_9
    if-eq v1, v7, :cond_a

    const/4 v9, 0x3

    aget v9, v8, v9

    if-lt v9, v5, :cond_b

    :cond_a
    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto/16 :goto_1

    :cond_b
    :goto_7
    if-ge v1, v7, :cond_c

    invoke-virtual {v6, v2, v1}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v9, 0x4

    aget v9, v8, v9

    if-ge v9, v5, :cond_c

    const/4 v9, 0x4

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    const/4 v2, 0x4

    aget v2, v8, v2

    if-lt v2, v5, :cond_d

    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto/16 :goto_1

    :cond_d
    const/4 v2, 0x0

    aget v2, v8, v2

    const/4 v5, 0x1

    aget v5, v8, v5

    add-int/2addr v2, v5

    const/4 v5, 0x2

    aget v5, v8, v5

    add-int/2addr v2, v5

    const/4 v5, 0x3

    aget v5, v8, v5

    add-int/2addr v2, v5

    const/4 v5, 0x4

    aget v5, v8, v5

    add-int/2addr v2, v5

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v5, v4, 0x2

    if-lt v2, v5, :cond_e

    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto/16 :goto_1

    :cond_e
    invoke-static {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {v8, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v1

    move v2, v1

    goto/16 :goto_1

    :cond_f
    const/high16 v1, 0x7fc00000    # NaNf

    move v2, v1

    goto/16 :goto_1

    :cond_10
    if-gez v1, :cond_11

    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    :goto_8
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_32

    if-eqz p4, :cond_22

    float-to-int v5, v2

    float-to-int v6, v3

    const/4 v1, 0x2

    aget v7, p1, v1

    invoke-direct {p0}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a()[I

    move-result-object v8

    const/4 v1, 0x0

    :goto_9
    if-lt v5, v1, :cond_20

    if-lt v6, v1, :cond_20

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v6, v1

    sub-int v11, v5, v1

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x2

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_11
    :goto_a
    if-ltz v1, :cond_12

    invoke-virtual {v7, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-nez v10, :cond_12

    const/4 v10, 0x1

    aget v10, v9, v10

    if-gt v10, v6, :cond_12

    const/4 v10, 0x1

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_12
    if-ltz v1, :cond_13

    const/4 v10, 0x1

    aget v10, v9, v10

    if-le v10, v6, :cond_14

    :cond_13
    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto :goto_8

    :cond_14
    :goto_b
    if-ltz v1, :cond_15

    invoke-virtual {v7, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x0

    aget v10, v9, v10

    if-gt v10, v6, :cond_15

    const/4 v10, 0x0

    aget v11, v9, v10

    add-int/lit8 v11, v11, 0x1

    aput v11, v9, v10

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    :cond_15
    const/4 v1, 0x0

    aget v1, v9, v1

    if-le v1, v6, :cond_16

    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto :goto_8

    :cond_16
    add-int/lit8 v1, v3, 0x1

    :goto_c
    if-ge v1, v8, :cond_17

    invoke-virtual {v7, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x2

    aget v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_17
    if-ne v1, v8, :cond_18

    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto/16 :goto_8

    :cond_18
    :goto_d
    if-ge v1, v8, :cond_19

    invoke-virtual {v7, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-nez v3, :cond_19

    const/4 v3, 0x3

    aget v3, v9, v3

    if-ge v3, v6, :cond_19

    const/4 v3, 0x3

    aget v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_19
    if-eq v1, v8, :cond_1a

    const/4 v3, 0x3

    aget v3, v9, v3

    if-lt v3, v6, :cond_1b

    :cond_1a
    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto/16 :goto_8

    :cond_1b
    :goto_e
    if-ge v1, v8, :cond_1c

    invoke-virtual {v7, v1, v5}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v3

    if-eqz v3, :cond_1c

    const/4 v3, 0x4

    aget v3, v9, v3

    if-ge v3, v6, :cond_1c

    const/4 v3, 0x4

    aget v10, v9, v3

    add-int/lit8 v10, v10, 0x1

    aput v10, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1c
    const/4 v3, 0x4

    aget v3, v9, v3

    if-lt v3, v6, :cond_1d

    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto/16 :goto_8

    :cond_1d
    const/4 v3, 0x0

    aget v3, v9, v3

    const/4 v5, 0x1

    aget v5, v9, v5

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget v5, v9, v5

    add-int/2addr v3, v5

    const/4 v5, 0x3

    aget v5, v9, v5

    add-int/2addr v3, v5

    const/4 v5, 0x4

    aget v5, v9, v5

    add-int/2addr v3, v5

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    if-lt v3, v4, :cond_1e

    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto/16 :goto_8

    :cond_1e
    invoke-static {v9}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-static {v9, v1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a([II)F

    move-result v1

    move v3, v1

    goto/16 :goto_8

    :cond_1f
    const/high16 v1, 0x7fc00000    # NaNf

    move v3, v1

    goto/16 :goto_8

    :cond_20
    if-lt v5, v1, :cond_21

    if-ge v6, v1, :cond_24

    :cond_21
    const/4 v1, 0x0

    :goto_f
    if-eqz v1, :cond_32

    :cond_22
    int-to-float v1, v4

    const/high16 v4, 0x40e00000    # 7.0f

    div-float v6, v1, v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    move v4, v1

    :goto_10
    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_33

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-virtual {v1, v6, v2, v3}, Lcom/google/zxing/qrcode/detector/FinderPattern;->aboutEquals(FFF)Z

    move-result v7

    if-eqz v7, :cond_31

    iget-object v5, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-virtual {v1, v2, v3, v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;->combineEstimate(FFF)Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_11
    if-nez v1, :cond_23

    new-instance v1, Lcom/google/zxing/qrcode/detector/FinderPattern;

    invoke-direct {v1, v3, v2, v6}, Lcom/google/zxing/qrcode/detector/FinderPattern;-><init>(FFF)V

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->e:Lcom/google/zxing/ResultPointCallback;

    invoke-interface {v2, v1}, Lcom/google/zxing/ResultPointCallback;->foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    :cond_23
    const/4 v1, 0x1

    :goto_12
    return v1

    :cond_24
    :goto_13
    if-lt v5, v1, :cond_25

    if-lt v6, v1, :cond_25

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v6, v1

    sub-int v11, v5, v1

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-nez v9, :cond_25

    const/4 v9, 0x1

    aget v9, v8, v9

    if-gt v9, v7, :cond_25

    const/4 v9, 0x1

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_25
    if-lt v5, v1, :cond_26

    if-lt v6, v1, :cond_26

    const/4 v9, 0x1

    aget v9, v8, v9

    if-le v9, v7, :cond_27

    :cond_26
    const/4 v1, 0x0

    goto :goto_f

    :cond_27
    :goto_14
    if-lt v5, v1, :cond_28

    if-lt v6, v1, :cond_28

    iget-object v9, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int v10, v6, v1

    sub-int v11, v5, v1

    invoke-virtual {v9, v10, v11}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v9

    if-eqz v9, :cond_28

    const/4 v9, 0x0

    aget v9, v8, v9

    if-gt v9, v7, :cond_28

    const/4 v9, 0x0

    aget v10, v8, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v8, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_28
    const/4 v1, 0x0

    aget v1, v8, v1

    if-gt v1, v7, :cond_30

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v9

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v10

    const/4 v1, 0x1

    :goto_15
    add-int v11, v5, v1

    if-ge v11, v9, :cond_29

    add-int v11, v6, v1

    if-ge v11, v10, :cond_29

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    add-int v12, v6, v1

    add-int v13, v5, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_29

    const/4 v11, 0x2

    aget v12, v8, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_29
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2a

    add-int v11, v6, v1

    if-lt v11, v10, :cond_2b

    :cond_2a
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_2b
    :goto_16
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2c

    add-int v11, v6, v1

    if-ge v11, v10, :cond_2c

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    add-int v12, v6, v1

    add-int v13, v5, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-nez v11, :cond_2c

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ge v11, v7, :cond_2c

    const/4 v11, 0x3

    aget v12, v8, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2c
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2d

    add-int v11, v6, v1

    if-ge v11, v10, :cond_2d

    const/4 v11, 0x3

    aget v11, v8, v11

    if-lt v11, v7, :cond_2e

    :cond_2d
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_2e
    :goto_17
    add-int v11, v5, v1

    if-ge v11, v9, :cond_2f

    add-int v11, v6, v1

    if-ge v11, v10, :cond_2f

    iget-object v11, p0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->a:Lcom/google/zxing/common/BitMatrix;

    add-int v12, v6, v1

    add-int v13, v5, v1

    invoke-virtual {v11, v12, v13}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v11

    if-eqz v11, :cond_2f

    const/4 v11, 0x4

    aget v11, v8, v11

    if-ge v11, v7, :cond_2f

    const/4 v11, 0x4

    aget v12, v8, v11

    add-int/lit8 v12, v12, 0x1

    aput v12, v8, v11

    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2f
    const/4 v1, 0x4

    aget v1, v8, v1

    if-ge v1, v7, :cond_30

    const/4 v1, 0x0

    aget v1, v8, v1

    const/4 v5, 0x1

    aget v5, v8, v5

    add-int/2addr v1, v5

    const/4 v5, 0x2

    aget v5, v8, v5

    add-int/2addr v1, v5

    const/4 v5, 0x3

    aget v5, v8, v5

    add-int/2addr v1, v5

    const/4 v5, 0x4

    aget v5, v8, v5

    add-int/2addr v1, v5

    sub-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v5, v4, 0x2

    if-ge v1, v5, :cond_30

    invoke-static {v8}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->foundPatternCross([I)Z

    move-result v1

    if-eqz v1, :cond_30

    const/4 v1, 0x1

    goto/16 :goto_f

    :cond_30
    const/4 v1, 0x0

    goto/16 :goto_f

    :cond_31
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_10

    :cond_32
    const/4 v1, 0x0

    goto/16 :goto_12

    :cond_33
    move v1, v5

    goto/16 :goto_11
.end method
