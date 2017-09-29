.class public Lcom/alipay/mobile/beehive/photo/view/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static final DEFAULT_FIT_SPACE:Z = true

.field private static final FIT_FACTOR:F = 1.0f

.field private static final MAX_FACTOR:F = 3.2f

.field private static final MIN_FACTOR:F = 0.6f

.field public static final TAG:Ljava/lang/String; = "PhotoView"

.field private static final ZOOM_FACTOR:F = 2.5f


# instance fields
.field private canScale:Z

.field private cropSquare:Z

.field private currentDrawableHashCode:I

.field public defaultDrawableHashCode:I

.field private displayType:I

.field private dragDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;

.field private drawableHeight:I

.field private drawableWidth:I

.field private enableCrop:Z

.field private enableScale:Z

.field public failDrawableHashCode:I

.field private fitSpace:Z

.field private flingRunnable:Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

.field private forceFullScreen:Z

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

.field private isPreZoom:Z

.field private matrix:Landroid/graphics/Matrix;

.field private matrixValues:[F

.field private maxFactor:F

.field private maxTextureSize:I

.field private minFactor:F

.field private normalFactor:F

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private onLongClickListener:Landroid/view/View$OnLongClickListener;

.field private photoRect:Landroid/graphics/RectF;

.field private photoValid:Z

.field private scaleDetector:Landroid/view/ScaleGestureDetector;

.field private scaleFactor:F

.field private state:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

.field public thumbDrawableHashCode:I

.field private viewHeight:I

.field private viewWidth:I

.field private zoomFactor:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    const/16 v0, 0x7ffe

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    .line 46
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->forceFullScreen:Z

    .line 48
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->isPreZoom:Z

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->displayType:I

    .line 158
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initPhotoView()V

    .line 159
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    return v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$10(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->flingRunnable:Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

    return-object v0
.end method

.method static synthetic access$11(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->flingRunnable:Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

    return-void
.end method

.method static synthetic access$12(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    return v0
.end method

.method static synthetic access$14(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    return v0
.end method

.method static synthetic access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    return v0
.end method

.method static synthetic access$16(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 879
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->calScaleFocus(FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$17(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->canScale:Z

    return v0
.end method

.method static synthetic access$18(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->minFactor:F

    return v0
.end method

.method static synthetic access$19(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFF)V
    .locals 0

    .prologue
    .line 1228
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postScale(FFF)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    return v0
.end method

.method static synthetic access$20(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->applyMatrix()V

    return-void
.end method

.method static synthetic access$21(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/graphics/PointF;)Z
    .locals 1

    .prologue
    .line 849
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->adjustToScale(Landroid/graphics/PointF;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$22(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z
    .locals 1

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->adjustToBounds()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->cropSquare:Z

    return v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V
    .locals 0

    .prologue
    .line 323
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setState(Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    return-void
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->state:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFFF)F
    .locals 1

    .prologue
    .line 672
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->checkTranslage(FFFF)F

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FF)V
    .locals 0

    .prologue
    .line 1202
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postTranslate(FF)V

    return-void
.end method

.method static synthetic access$8(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->onClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private adjustToBounds()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 815
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 816
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    .line 817
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    .line 818
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->bottom:F

    .line 823
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v2, v2

    iget-object v8, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    sub-float/2addr v2, v8

    div-float v8, v2, v10

    .line 824
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v2, v2

    iget-object v9, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    sub-float/2addr v2, v9

    div-float v9, v2, v10

    .line 826
    cmpl-float v2, v0, v1

    if-lez v2, :cond_9

    .line 827
    cmpl-float v2, v8, v1

    if-lez v2, :cond_1

    sub-float v0, v8, v0

    :goto_0
    move v2, v0

    .line 829
    :goto_1
    cmpl-float v0, v5, v1

    if-lez v0, :cond_8

    .line 830
    cmpl-float v0, v9, v1

    if-lez v0, :cond_2

    sub-float v0, v9, v5

    .line 832
    :goto_2
    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gez v5, :cond_0

    .line 833
    cmpl-float v2, v8, v1

    if-lez v2, :cond_3

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    sub-float/2addr v2, v8

    .line 835
    :cond_0
    :goto_3
    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v5, v5

    cmpg-float v5, v7, v5

    if-gez v5, :cond_7

    .line 836
    cmpl-float v0, v9, v1

    if-lez v0, :cond_4

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    sub-float/2addr v0, v9

    :goto_4
    move v5, v0

    .line 838
    :goto_5
    cmpl-float v0, v2, v1

    if-nez v0, :cond_5

    cmpl-float v0, v5, v1

    if-nez v0, :cond_5

    move v0, v3

    .line 839
    :goto_6
    if-nez v0, :cond_6

    move v0, v3

    .line 846
    :goto_7
    return v0

    .line 827
    :cond_1
    neg-float v0, v0

    goto :goto_0

    .line 830
    :cond_2
    neg-float v0, v5

    goto :goto_2

    .line 833
    :cond_3
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v2, v2

    sub-float/2addr v2, v6

    goto :goto_3

    .line 836
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v7

    goto :goto_4

    :cond_5
    move v0, v4

    .line 838
    goto :goto_6

    .line 843
    :cond_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "adjustToBounds px "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " py "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;

    invoke-direct {v0, p0, v2, v5}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$TransRunnable;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FF)V

    .line 845
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->post(Ljava/lang/Runnable;)Z

    move v0, v4

    .line 846
    goto :goto_7

    :cond_7
    move v5, v0

    goto :goto_5

    :cond_8
    move v0, v1

    goto :goto_2

    :cond_9
    move v2, v1

    goto :goto_1
.end method

.method private adjustToScale(Landroid/graphics/PointF;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 851
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_0

    .line 873
    :goto_0
    return v0

    .line 857
    :cond_0
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxFactor:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_1

    .line 858
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxFactor:F

    .line 865
    :goto_1
    cmpl-float v2, v1, v2

    if-nez v2, :cond_3

    .line 867
    const/4 v0, 0x0

    goto :goto_0

    .line 859
    :cond_1
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 860
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    goto :goto_1

    .line 861
    :cond_2
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_4

    .line 862
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    goto :goto_1

    .line 870
    :cond_3
    invoke-direct {p0, v1, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->calScaleFocus(FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 871
    new-instance v3, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;

    invoke-direct {v3, p0, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FLandroid/graphics/PointF;)V

    .line 872
    invoke-direct {p0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method private applyMatrix()V
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 321
    return-void
.end method

.method private calScaleFocus(FLandroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 881
    if-nez p2, :cond_0

    .line 882
    new-instance p2, Landroid/graphics/PointF;

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {p2, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 885
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 886
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    div-float v2, p1, v2

    .line 887
    iget v3, p2, Landroid/graphics/PointF;->x:F

    iget v4, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 888
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "PhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "calScaleFocus,factor:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 889
    const-string/jumbo v5, ",point.x:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, ",point.y:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 888
    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    const/16 v2, 0x9

    new-array v3, v2, [F

    .line 891
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 892
    const/4 v0, 0x2

    aget v2, v3, v0

    .line 893
    const/4 v0, 0x5

    aget v0, v3, v0

    .line 894
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    .line 895
    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v4, v0

    .line 896
    cmpg-float v5, v2, v1

    if-gtz v5, :cond_1

    cmpg-float v5, v0, v1

    if-gtz v5, :cond_1

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v5, v5

    cmpl-float v5, v3, v5

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-ltz v5, :cond_1

    .line 929
    :goto_0
    return-object p2

    .line 900
    :cond_1
    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, p1

    .line 901
    iget v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    int-to-float v6, v6

    mul-float/2addr v6, p1

    .line 902
    iget-object v7, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    .line 903
    iget-object v8, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    .line 904
    cmpg-float v9, v2, v1

    if-gez v9, :cond_3

    .line 905
    :goto_1
    cmpg-float v9, v0, v1

    if-gez v9, :cond_4

    .line 909
    :goto_2
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v1, v1

    cmpl-float v1, v5, v1

    if-lez v1, :cond_6

    .line 910
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v1, v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_5

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    .line 914
    :goto_3
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v2, v2

    cmpl-float v2, v6, v2

    if-lez v2, :cond_7

    .line 915
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    .line 920
    :cond_2
    :goto_4
    mul-float v2, v7, v5

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float/2addr v1, v3

    sub-float v1, v2, v1

    .line 921
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    sub-float v2, v5, v2

    .line 920
    div-float/2addr v1, v2

    .line 922
    mul-float v2, v8, v6

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    .line 923
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float v3, v6, v3

    .line 922
    div-float/2addr v2, v3

    .line 924
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "PhotoView"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "drawableY:"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 925
    const-string/jumbo v7, ",photoRect.height:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, ",targetHeight:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 926
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",targetTop:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "scale focus px "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " py "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    new-instance p2, Landroid/graphics/PointF;

    invoke-direct {p2, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto/16 :goto_0

    :cond_3
    move v2, v1

    .line 904
    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 905
    goto/16 :goto_2

    :cond_5
    move v1, v2

    .line 910
    goto/16 :goto_3

    .line 912
    :cond_6
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v1, v1

    sub-float/2addr v1, v5

    div-float/2addr v1, v10

    goto/16 :goto_3

    .line 917
    :cond_7
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    div-float/2addr v0, v10

    goto/16 :goto_4
.end method

.method private checkTranslage(FFFF)F
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 673
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    .line 674
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkTranslage delta "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " viewSize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " min "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 675
    const-string/jumbo v4, " max "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 674
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 673
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    sub-float v1, p4, p3

    cmpg-float v1, v1, p2

    if-lez v1, :cond_0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_2

    :cond_0
    move p1, v0

    .line 687
    :cond_1
    :goto_0
    return p1

    .line 680
    :cond_2
    cmpl-float v1, p1, v0

    if-lez v1, :cond_3

    add-float v1, p3, p1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_3

    .line 681
    sub-float v1, v0, p3

    cmpl-float v1, v1, p1

    if-gtz v1, :cond_1

    sub-float p1, v0, p3

    goto :goto_0

    .line 682
    :cond_3
    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    add-float v0, p4, p1

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    .line 683
    sub-float v0, p2, p4

    cmpg-float v0, v0, p1

    if-ltz v0, :cond_1

    sub-float p1, p2, p4

    goto :goto_0
.end method

.method public static getMaxTextureSize()I
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 284
    sget-object v1, Ljavax/microedition/khronos/egl/EGL10;->EGL_DEFAULT_DISPLAY:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglGetDisplay(Ljava/lang/Object;)Ljavax/microedition/khronos/egl/EGLDisplay;

    move-result-object v4

    .line 287
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 288
    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglInitialize(Ljavax/microedition/khronos/egl/EGLDisplay;[I)Z

    .line 291
    new-array v5, v3, [I

    .line 292
    const/4 v1, 0x0

    invoke-interface {v0, v4, v1, v2, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 295
    aget v1, v5, v2

    new-array v6, v1, [Ljavax/microedition/khronos/egl/EGLConfig;

    .line 296
    aget v1, v5, v2

    invoke-interface {v0, v4, v6, v1, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigs(Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 298
    new-array v7, v3, [I

    move v1, v2

    move v3, v2

    .line 302
    :goto_0
    aget v8, v5, v2

    if-lt v1, v8, :cond_0

    .line 312
    invoke-interface {v0, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglTerminate(Ljavax/microedition/khronos/egl/EGLDisplay;)Z

    .line 315
    const/16 v0, 0x800

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    .line 304
    :cond_0
    aget-object v8, v6, v1

    const/16 v9, 0x302a

    invoke-interface {v0, v4, v8, v9, v7}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    .line 307
    aget v8, v7, v2

    if-ge v3, v8, :cond_1

    .line 308
    aget v3, v7, v2

    .line 302
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initAsOri(F)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1170
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    .line 1171
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "is thumbnail = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1170
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->fitSpace:Z

    if-eqz v0, :cond_1

    cmpg-float v0, p1, v5

    if-gez v0, :cond_1

    .line 1173
    mul-float v0, p1, v5

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    .line 1177
    :goto_1
    return-void

    .line 1171
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1175
    :cond_1
    iput v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    goto :goto_1
.end method

.method private initDepends()V
    .locals 6

    .prologue
    const/high16 v5, 0x40200000    # 2.5f

    .line 1116
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1117
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    .line 1118
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->defaultDrawableHashCode:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->failDrawableHashCode:I

    if-ne v0, v1, :cond_1

    .line 1119
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "default drawable or fial drawable,disable scale"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    .line 1121
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->minFactor:F

    .line 1122
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    .line 1123
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxFactor:F

    .line 1167
    :goto_0
    return-void

    .line 1126
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 1127
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "PhotoView displayType = "

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->displayType:I

    packed-switch v2, :pswitch_data_0

    .line 1162
    :goto_1
    :pswitch_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_4

    .line 1163
    :goto_2
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    mul-float/2addr v1, v5

    cmpl-float v1, v0, v1

    if-lez v1, :cond_5

    .line 1164
    :goto_3
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->minFactor:F

    .line 1165
    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    .line 1166
    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxFactor:F

    goto :goto_0

    .line 1131
    :pswitch_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "TYPE_THUMBFITWIDTH_ORIFITWIDTH"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initFitWidth(F)V

    goto :goto_1

    .line 1135
    :pswitch_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "TYPE_THUMBORI_ORI"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initAsOri(F)V

    goto :goto_1

    .line 1139
    :pswitch_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "TYPE_THUMBORI_ORIFITWIDTH"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    if-ne v2, v3, :cond_2

    .line 1142
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initAsOri(F)V

    goto :goto_1

    .line 1144
    :cond_2
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initFitWidth(F)V

    goto :goto_1

    .line 1148
    :pswitch_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "TYPE_THUMBORI_ORIFITWITDH_3P2LIMIT"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    if-ne v2, v3, :cond_3

    .line 1151
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initAsOri(F)V

    goto :goto_1

    .line 1153
    :cond_3
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMax3P2Scal(F)V

    goto :goto_1

    .line 1157
    :pswitch_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    const-string/jumbo v4, "TYPE_THUMBFITWITDH_LIMIT_ORIFITWITD_LIMIT"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMax3P2Scal(F)V

    goto/16 :goto_1

    :cond_4
    move v0, v1

    .line 1162
    goto/16 :goto_2

    .line 1163
    :cond_5
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    mul-float/2addr v0, v5

    goto/16 :goto_3

    .line 1129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private initFitWidth(F)V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 1180
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    .line 1181
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "is thumbnail = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1180
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->fitSpace:Z

    if-eqz v0, :cond_1

    .line 1183
    mul-float v0, p1, v5

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    .line 1187
    :goto_1
    return-void

    .line 1181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1185
    :cond_1
    iput v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    goto :goto_1
.end method

.method private initMatrix()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    .line 1049
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1050
    if-nez v0, :cond_1

    .line 1051
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 1056
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    .line 1057
    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->state:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    .line 1058
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    .line 1059
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    .line 1060
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    .line 1061
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drawableWidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " drawableHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1062
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    if-gtz v0, :cond_3

    .line 1063
    :cond_2
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    goto :goto_0

    .line 1067
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    .line 1068
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    .line 1069
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    .line 1070
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "viewWidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    if-eqz v0, :cond_0

    .line 1091
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initDepends()V

    .line 1092
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 1093
    const-string/jumbo v1, "PhotoView"

    .line 1094
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initMatrix minScale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->minFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fitScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "zoomFactor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->zoomFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1095
    const-string/jumbo v3, " maxScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxFactor:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1094
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1092
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postScale(F)V

    .line 1099
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    .line 1100
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v1, v2

    div-float/2addr v1, v4

    .line 1101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PhotoView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "initMatrix px "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " py "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 1103
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postTranslate(FF)V

    .line 1108
    :goto_1
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableCrop:Z

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->initRect()V

    goto/16 :goto_0

    .line 1105
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postTranslate(FF)V

    goto :goto_1
.end method

.method private initMax3P2Scal(F)V
    .locals 7

    .prologue
    const v6, 0x404ccccd    # 3.2f

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1190
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "is thumbnail = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    if-ne v0, v4, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1192
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->fitSpace:Z

    if-eqz v0, :cond_2

    .line 1193
    mul-float v0, p1, v5

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    .line 1194
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_0

    .line 1195
    iput v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    .line 1200
    :cond_0
    :goto_1
    return-void

    .line 1191
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1198
    :cond_2
    iput v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->normalFactor:F

    goto :goto_1
.end method

.method private initPhotoView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 162
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 163
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    .line 164
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->fitSpace:Z

    .line 165
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    .line 166
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    .line 167
    sget-object v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->state:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    .line 168
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    .line 169
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrixValues:[F

    .line 170
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;

    new-instance v2, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;)V

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->dragDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;

    .line 172
    new-instance v1, Landroid/view/ScaleGestureDetector;

    new-instance v2, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;)V

    invoke-direct {v1, v0, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    .line 173
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;

    invoke-direct {v2, p0, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;)V

    invoke-direct {v1, v0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gestureDetector:Landroid/view/GestureDetector;

    .line 174
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setEnableCrop(Z)V

    .line 175
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setClickable(Z)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setEnableScale(Z)V

    .line 178
    invoke-static {}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getMaxTextureSize()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    .line 183
    return-void
.end method

.method private postAnimation(Ljava/lang/Runnable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 934
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 935
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 939
    :goto_0
    return-void

    .line 937
    :cond_0
    const-wide/16 v0, 0x10

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private postScale(F)V
    .locals 5

    .prologue
    .line 1214
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postScale scale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    .line 1216
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "is thumbnail = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->currentDrawableHashCode:I

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->thumbDrawableHashCode:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1215
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    if-nez v0, :cond_1

    .line 1218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "invalid photo content"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1226
    :goto_1
    return-void

    .line 1216
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1222
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    .line 1223
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1224
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->updatePhotoRect()V

    .line 1225
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->applyMatrix()V

    goto :goto_1
.end method

.method private postScale(FFF)V
    .locals 4

    .prologue
    .line 1229
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postScale scale "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " px "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " py "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    if-nez v0, :cond_0

    .line 1231
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "invalid photo content"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    :goto_0
    return-void

    .line 1234
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    .line 1235
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 1236
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->updatePhotoRect()V

    .line 1237
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->applyMatrix()V

    goto :goto_0
.end method

.method private postTranslate(FF)V
    .locals 4

    .prologue
    .line 1203
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "postTranslate px "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " py "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    if-nez v0, :cond_0

    .line 1205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "invalid photo content"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    :goto_0
    return-void

    .line 1208
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1209
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->updatePhotoRect()V

    .line 1210
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->applyMatrix()V

    goto :goto_0
.end method

.method private setState(Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->state:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    .line 326
    return-void
.end method

.method private updatePhotoRect()V
    .locals 5

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrixValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 1265
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrixValues:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    .line 1266
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrixValues:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    .line 1267
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 1268
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleFactor:F

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    .line 1269
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 1270
    return-void
.end method


# virtual methods
.method public applyCrop()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableCrop:Z

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 234
    :goto_0
    return-object v0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 220
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v2, :cond_2

    move-object v0, v1

    .line 221
    goto :goto_0

    .line 224
    :cond_2
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->getRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 226
    iget v0, v3, Landroid/graphics/RectF;->right:F

    iget v4, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v4

    float-to-int v0, v0

    .line 227
    iget v4, v3, Landroid/graphics/RectF;->bottom:F

    iget v5, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    float-to-int v4, v4

    .line 230
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 229
    invoke-static {v0, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 232
    iget v5, v3, Landroid/graphics/RectF;->left:F

    neg-float v5, v5

    iget v3, v3, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public canScrollHorizontally(I)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1397
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    if-nez v1, :cond_0

    .line 1398
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    const-string/jumbo v3, "canScrollHorizontally false"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :goto_0
    return v0

    .line 1402
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 1403
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 1405
    const/4 v1, 0x1

    .line 1406
    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_2

    .line 1413
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "canScrollHorizontally "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_2
    if-gez p1, :cond_3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-gez v4, :cond_1

    .line 1410
    :cond_3
    if-lez p1, :cond_4

    add-float/2addr v2, v3

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-lez v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 339
    .line 340
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableCrop:Z

    if-eqz v0, :cond_3

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 344
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 345
    if-ne v2, v3, :cond_0

    .line 346
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->canScale:Z

    .line 349
    :cond_0
    const/4 v1, 0x5

    if-ne v2, v1, :cond_1

    .line 350
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->canScale:Z

    .line 353
    :cond_1
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableScale:Z

    if-eqz v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 355
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->dragDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 359
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public getEnableCrop()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableCrop:Z

    return v0
.end method

.method public getPhotoRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 330
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 332
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableCrop:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->draw(Landroid/graphics/Canvas;)V

    .line 335
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .prologue
    .line 619
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 620
    if-nez p1, :cond_0

    .line 629
    :goto_0
    return-void

    .line 624
    :cond_0
    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    .line 625
    sub-int v0, p5, p3

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    .line 627
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onLayout viewWidth "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " viewHeight "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->viewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMatrix()V

    goto :goto_0
.end method

.method public onShow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 365
    if-nez v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 370
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    if-gt v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    if-le v0, v1, :cond_3

    .line 371
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 373
    :cond_3
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public postRotate(F)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1241
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "postRotate degrees "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->photoValid:Z

    if-nez v0, :cond_1

    .line 1243
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "invlaid photo content!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1247
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1248
    instance-of v2, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 1252
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1253
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1254
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {v5, p1, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 1255
    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableWidth:I

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->drawableHeight:I

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1256
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setCropSquare(Z)V
    .locals 0

    .prologue
    .line 195
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->cropSquare:Z

    .line 196
    return-void
.end method

.method public setDisplayType(I)V
    .locals 0

    .prologue
    .line 72
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->displayType:I

    .line 73
    return-void
.end method

.method public setEnableCrop(Z)V
    .locals 1

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableCrop:Z

    .line 205
    if-eqz p1, :cond_0

    .line 206
    new-instance v0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->initRect()V

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->invalidate()V

    .line 212
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->gridDetector:Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;

    goto :goto_0
.end method

.method public setEnableScale(Z)V
    .locals 0

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->enableScale:Z

    .line 192
    return-void
.end method

.method public setFitSpace(Z)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->fitSpace:Z

    .line 187
    return-void
.end method

.method public setForceFullScreen(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->forceFullScreen:Z

    .line 53
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 246
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMatrix()V

    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 249
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    if-le v0, v1, :cond_2

    .line 250
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 255
    :cond_1
    :goto_0
    return-void

    .line 252
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 259
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMatrix()V

    .line 262
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 263
    if-eqz p1, :cond_2

    .line 264
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    if-gt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->maxTextureSize:I

    if-le v0, v1, :cond_2

    .line 265
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 270
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 240
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMatrix()V

    .line 241
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 274
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 275
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->initMatrix()V

    .line 276
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->onClickListener:Landroid/view/View$OnClickListener;

    .line 1425
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1420
    return-void
.end method
