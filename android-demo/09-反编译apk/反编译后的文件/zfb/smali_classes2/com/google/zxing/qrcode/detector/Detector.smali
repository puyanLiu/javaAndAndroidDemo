.class public Lcom/google/zxing/qrcode/detector/Detector;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/zxing/common/BitMatrix;

.field private b:Lcom/google/zxing/ResultPointCallback;


# direct methods
.method public constructor <init>(Lcom/google/zxing/common/BitMatrix;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    return-void
.end method

.method private a(IIII)F
    .locals 7

    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/qrcode/detector/Detector;->b(IIII)F

    move-result v4

    sub-int v0, p3, p1

    sub-int v0, p1, v0

    if-gez v0, :cond_0

    int-to-float v3, p1

    sub-int v0, p1, v0

    int-to-float v0, v0

    div-float v0, v3, v0

    move v3, v2

    :goto_0
    int-to-float v5, p2

    sub-int v6, p4, p2

    int-to-float v6, v6

    mul-float/2addr v0, v6

    sub-float v0, v5, v0

    float-to-int v0, v0

    if-gez v0, :cond_1

    int-to-float v5, p2

    sub-int v0, p2, v0

    int-to-float v0, v0

    div-float v0, v5, v0

    :goto_1
    int-to-float v5, p1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    mul-float/2addr v0, v3

    add-float/2addr v0, v5

    float-to-int v0, v0

    invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/zxing/qrcode/detector/Detector;->b(IIII)F

    move-result v0

    add-float/2addr v0, v4

    sub-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    if-lt v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, p1

    int-to-float v3, v3

    sub-int/2addr v0, p1

    int-to-float v0, v0

    div-float v0, v3, v0

    iget-object v3, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v3}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int/2addr v0, p2

    int-to-float v0, v0

    div-float v0, v2, v0

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v2}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    move v2, v0

    move v0, v1

    goto :goto_1

    :cond_3
    move v3, v0

    move v0, v1

    goto :goto_0
.end method

.method private a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 6

    const/high16 v5, 0x40e00000    # 7.0f

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->a(IIII)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/zxing/qrcode/detector/Detector;->a(IIII)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    div-float v0, v1, v5

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    div-float/2addr v0, v5

    goto :goto_0

    :cond_1
    add-float/2addr v0, v1

    const/high16 v1, 0x41600000    # 14.0f

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method private b(IIII)F
    .locals 19

    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    sub-int v4, p3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v3, v4, :cond_0

    const/4 v3, 0x1

    move v12, v3

    :goto_0
    if-eqz v12, :cond_c

    :goto_1
    sub-int v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v13

    sub-int v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v14

    neg-int v3, v13

    div-int/lit8 v5, v3, 0x2

    move/from16 v0, p2

    move/from16 v1, p4

    if-ge v0, v1, :cond_1

    const/4 v3, 0x1

    move v11, v3

    :goto_2
    move/from16 v0, p1

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_3
    const/4 v6, 0x0

    add-int v15, p4, v11

    move/from16 v8, p2

    move v10, v5

    move/from16 v5, p1

    :goto_4
    if-eq v8, v15, :cond_b

    if-eqz v12, :cond_3

    move v9, v5

    :goto_5
    if-eqz v12, :cond_4

    move v7, v8

    :goto_6
    const/4 v4, 0x1

    if-ne v6, v4, :cond_5

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v7

    if-ne v4, v7, :cond_a

    const/4 v4, 0x2

    if-ne v6, v4, :cond_6

    move/from16 v0, p2

    move/from16 v1, p1

    invoke-static {v8, v5, v0, v1}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v3

    :goto_8
    return v3

    :cond_0
    const/4 v3, 0x0

    move v12, v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    move v11, v3

    goto :goto_2

    :cond_2
    const/4 v3, -0x1

    goto :goto_3

    :cond_3
    move v9, v8

    goto :goto_5

    :cond_4
    move v7, v5

    goto :goto_6

    :cond_5
    const/4 v4, 0x0

    goto :goto_7

    :cond_6
    add-int/lit8 v7, v6, 0x1

    :goto_9
    add-int v6, v10, v14

    if-lez v6, :cond_9

    move/from16 v0, p3

    if-eq v5, v0, :cond_7

    add-int v4, v5, v3

    sub-int v5, v6, v13

    :goto_a
    add-int/2addr v8, v11

    move v6, v7

    move v10, v5

    move v5, v4

    goto :goto_4

    :cond_7
    move v3, v7

    :goto_b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    add-int v3, p4, v11

    move/from16 v0, p3

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v3, v0, v1, v2}, Lcom/google/zxing/common/detector/MathUtils;->distance(IIII)F

    move-result v3

    goto :goto_8

    :cond_8
    const/high16 v3, 0x7fc00000    # NaNf

    goto :goto_8

    :cond_9
    move v4, v5

    move v5, v6

    goto :goto_a

    :cond_a
    move v7, v6

    goto :goto_9

    :cond_b
    move v3, v6

    goto :goto_b

    :cond_c
    move/from16 v17, p4

    move/from16 p4, p3

    move/from16 p3, v17

    move/from16 v18, p2

    move/from16 p2, p1

    move/from16 p1, v18

    goto/16 :goto_1
.end method


# virtual methods
.method protected final calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/zxing/qrcode/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v0

    invoke-direct {p0, p1, p3}, Lcom/google/zxing/qrcode/detector/Detector;->a(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public detect()Lcom/google/zxing/common/DetectorResult;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0
.end method

.method public final detect(Ljava/util/Map;)Lcom/google/zxing/common/DetectorResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/common/DetectorResult;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    new-instance v0, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    iget-object v2, p0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;Lcom/google/zxing/ResultPointCallback;)V

    invoke-virtual {v0, p1}, Lcom/google/zxing/qrcode/detector/FinderPatternFinder;->find(Ljava/util/Map;)Lcom/google/zxing/qrcode/detector/FinderPatternInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/zxing/qrcode/detector/Detector;->processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/zxing/DecodeHintType;->NEED_RESULT_POINT_CALLBACK:Lcom/google/zxing/DecodeHintType;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/zxing/ResultPointCallback;

    goto :goto_0
.end method

.method protected final findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    .locals 8

    const/4 v5, 0x0

    const/high16 v6, 0x40400000    # 3.0f

    mul-float v0, p4, p1

    float-to-int v0, v0

    sub-int v1, p2, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int v3, p2, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v1, v4, v2

    int-to-float v1, v1

    mul-float v3, p1, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_0
    sub-int v1, p3, v0

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-virtual {v1}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v0, p3

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v0, v5, v3

    int-to-float v0, v0

    mul-float v1, p1, v6

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;

    iget-object v1, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    sub-int/2addr v4, v2

    sub-int/2addr v5, v3

    iget-object v7, p0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    move v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;-><init>(Lcom/google/zxing/common/BitMatrix;IIIIFLcom/google/zxing/ResultPointCallback;)V

    invoke-virtual {v0}, Lcom/google/zxing/qrcode/detector/AlignmentPatternFinder;->find()Lcom/google/zxing/qrcode/detector/AlignmentPattern;

    move-result-object v0

    return-object v0
.end method

.method protected final getImage()Lcom/google/zxing/common/BitMatrix;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    return-object v0
.end method

.method protected final getResultPointCallback()Lcom/google/zxing/ResultPointCallback;
    .locals 1

    iget-object v0, p0, Lcom/google/zxing/qrcode/detector/Detector;->b:Lcom/google/zxing/ResultPointCallback;

    return-object v0
.end method

.method protected final processFinderPatternInfo(Lcom/google/zxing/qrcode/detector/FinderPatternInfo;)Lcom/google/zxing/common/DetectorResult;
    .locals 25

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getTopRight()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/qrcode/detector/FinderPatternInfo;->getBottomLeft()Lcom/google/zxing/qrcode/detector/FinderPattern;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/zxing/qrcode/detector/Detector;->calculateModuleSize(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v6

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, v6, v4

    if-gez v4, :cond_0

    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    :cond_0
    invoke-static/range {v22 .. v23}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v4

    div-float/2addr v4, v6

    invoke-static {v4}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v4

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/google/zxing/ResultPoint;->distance(Lcom/google/zxing/ResultPoint;Lcom/google/zxing/ResultPoint;)F

    move-result v5

    div-float/2addr v5, v6

    invoke-static {v5}, Lcom/google/zxing/common/detector/MathUtils;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x7

    and-int/lit8 v5, v4, 0x3

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move/from16 v20, v4

    :goto_0
    invoke-static/range {v20 .. v20}, Lcom/google/zxing/qrcode/decoder/Version;->getProvisionalVersionForDimension(I)Lcom/google/zxing/qrcode/decoder/Version;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getDimensionForVersion()I

    move-result v4

    add-int/lit8 v7, v4, -0x7

    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/google/zxing/qrcode/decoder/Version;->getAlignmentPatternCenters()[I

    move-result-object v5

    array-length v5, v5

    if-lez v5, :cond_3

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v8

    add-float/2addr v5, v8

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v8

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v9

    add-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x40400000    # 3.0f

    int-to-float v7, v7

    div-float v7, v10, v7

    sub-float v7, v9, v7

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v9

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getX()F

    move-result v10

    sub-float/2addr v5, v10

    mul-float/2addr v5, v7

    add-float/2addr v5, v9

    float-to-int v9, v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v5

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/qrcode/detector/FinderPattern;->getY()F

    move-result v10

    sub-float/2addr v8, v10

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    float-to-int v7, v5

    const/4 v5, 0x4

    :goto_1
    const/16 v8, 0x10

    if-gt v5, v8, :cond_3

    int-to-float v8, v5

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v9, v7, v8}, Lcom/google/zxing/qrcode/detector/Detector;->findAlignmentInRegion(FIIF)Lcom/google/zxing/qrcode/detector/AlignmentPattern;
    :try_end_0
    .catch Lcom/google/zxing/NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object/from16 v21, v4

    :goto_2
    move/from16 v0, v20

    int-to-float v4, v0

    const/high16 v5, 0x40600000    # 3.5f

    sub-float v6, v4, v5

    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v16

    invoke-virtual/range {v21 .. v21}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v17

    const/high16 v4, 0x40400000    # 3.0f

    sub-float v9, v6, v4

    move v8, v9

    :goto_3
    const/high16 v4, 0x40600000    # 3.5f

    const/high16 v5, 0x40600000    # 3.5f

    const/high16 v7, 0x40600000    # 3.5f

    const/high16 v10, 0x40600000    # 3.5f

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v12

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v13

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v14

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v15

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v18

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v19

    move v11, v6

    invoke-static/range {v4 .. v19}, Lcom/google/zxing/common/PerspectiveTransform;->quadrilateralToQuadrilateral(FFFFFFFFFFFFFFFF)Lcom/google/zxing/common/PerspectiveTransform;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/zxing/qrcode/detector/Detector;->a:Lcom/google/zxing/common/BitMatrix;

    invoke-static {}, Lcom/google/zxing/common/GridSampler;->getInstance()Lcom/google/zxing/common/GridSampler;

    move-result-object v6

    move/from16 v0, v20

    move/from16 v1, v20

    invoke-virtual {v6, v5, v0, v1, v4}, Lcom/google/zxing/common/GridSampler;->sampleGrid(Lcom/google/zxing/common/BitMatrix;IILcom/google/zxing/common/PerspectiveTransform;)Lcom/google/zxing/common/BitMatrix;

    move-result-object v5

    if-nez v21, :cond_2

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    aput-object v24, v4, v6

    const/4 v6, 0x1

    aput-object v22, v4, v6

    const/4 v6, 0x2

    aput-object v23, v4, v6

    :goto_4
    new-instance v6, Lcom/google/zxing/common/DetectorResult;

    invoke-direct {v6, v5, v4}, Lcom/google/zxing/common/DetectorResult;-><init>(Lcom/google/zxing/common/BitMatrix;[Lcom/google/zxing/ResultPoint;)V

    return-object v6

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v4

    goto/16 :goto_0

    :pswitch_2
    add-int/lit8 v4, v4, -0x1

    move/from16 v20, v4

    goto/16 :goto_0

    :pswitch_3
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v4

    throw v4

    :catch_0
    move-exception v8

    shl-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getX()F

    move-result v5

    add-float v16, v4, v5

    invoke-virtual/range {v23 .. v23}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v4

    invoke-virtual/range {v22 .. v22}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {v24 .. v24}, Lcom/google/zxing/ResultPoint;->getY()F

    move-result v5

    add-float v17, v4, v5

    move v9, v6

    move v8, v6

    goto :goto_3

    :cond_2
    const/4 v4, 0x4

    new-array v4, v4, [Lcom/google/zxing/ResultPoint;

    const/4 v6, 0x0

    aput-object v24, v4, v6

    const/4 v6, 0x1

    aput-object v22, v4, v6

    const/4 v6, 0x2

    aput-object v23, v4, v6

    const/4 v6, 0x3

    aput-object v21, v4, v6

    goto :goto_4

    :cond_3
    move-object/from16 v21, v4

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
