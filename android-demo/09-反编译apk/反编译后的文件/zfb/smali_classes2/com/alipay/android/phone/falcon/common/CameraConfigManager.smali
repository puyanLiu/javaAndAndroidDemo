.class public Lcom/alipay/android/phone/falcon/common/CameraConfigManager;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_SIZE:I = 0xdac

.field private static final MIN_DIFF:F = 0.2f

.field private static final MIN_SIZE:I = 0x3c0

.field private static maxPicturePixels:I

.field private static minPicturePixels:I


# instance fields
.field public cameraPicturePointResolution:Landroid/graphics/Point;

.field public cameraPreviewPointResolution:Landroid/graphics/Point;

.field private final context:Landroid/content/Context;

.field public screenResolution:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->context:Landroid/content/Context;

    return-void
.end method

.method private filterSupportSize(Ljava/util/List;)Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0xdac

    if-gt v3, v4, :cond_0

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x3c0

    if-lt v3, v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private findBestPictureSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->filterSupportSize(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->findBestPointSize(Ljava/util/List;Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager$2;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager$2;-><init>(Lcom/alipay/android/phone/falcon/common/CameraConfigManager;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x7d0

    if-gt v3, v4, :cond_2

    goto :goto_0
.end method

.method private findBestPointSize(Ljava/util/List;Landroid/graphics/Point;)Ljava/util/List;
    .locals 10

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p2, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, p2, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float v4, v0, v1

    const/high16 v0, 0x42c80000    # 100.0f

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v1, v0

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v2, v2

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    div-float/2addr v2, v7

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-float v7, v7

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    sub-float/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v7, 0x3e4ccccd    # 0.2f

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    new-instance v7, Landroid/graphics/Point;

    iget v8, v0, Landroid/hardware/Camera$Size;->width:I

    iget v9, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v7, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    cmpg-float v7, v2, v1

    if-gez v7, :cond_1

    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iput v1, v5, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    iput v0, v5, Landroid/graphics/Point;->y:I

    move v1, v2

    goto :goto_1
.end method

.method private findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->findBestPointSize(Ljava/util/List;Landroid/graphics/Point;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager$1;-><init>(Lcom/alipay/android/phone/falcon/common/CameraConfigManager;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v4, 0x5dc

    if-gt v3, v4, :cond_2

    goto :goto_0
.end method

.method public static setMaxPicturePixels(I)V
    .locals 0

    sput p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->maxPicturePixels:I

    return-void
.end method

.method public static setMinPicturePixels(I)V
    .locals 0

    sput p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->minPicturePixels:I

    return-void
.end method


# virtual methods
.method public getImageSize()Landroid/graphics/Point;
    .locals 3

    invoke-virtual {p0}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->getInSampleSize()I

    move-result v0

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    int-to-float v0, v0

    div-float v0, v1, v0

    float-to-int v0, v0

    int-to-float v1, v0

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method public getInSampleSize()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    div-int/lit16 v1, v1, 0x5dc

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getJpegQuality()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method

.method public initFromCameraParameters(Landroid/hardware/Camera;)V
    .locals 5

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v1, v0, :cond_0

    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->screenResolution:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->findBestPreviewSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPreviewPointResolution:Landroid/graphics/Point;

    iget-object v0, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->screenResolution:Landroid/graphics/Point;

    invoke-direct {p0, v2, v0}, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->findBestPictureSizeValue(Landroid/hardware/Camera$Parameters;Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/falcon/common/CameraConfigManager;->cameraPicturePointResolution:Landroid/graphics/Point;

    return-void

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0
.end method
