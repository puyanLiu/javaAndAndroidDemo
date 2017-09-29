.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;
.super Ljava/lang/Object;
.source "PhotoView.java"


# static fields
.field private static final BORDER_COLOR:I = -0x1

.field private static final COVER_COLOR:I = 0x66000000

.field private static final DRAG_BOTTOM:I = 0x8

.field private static final DRAG_CENTER:I = 0x10

.field private static final DRAG_LEFT:I = 0x1

.field private static final DRAG_NONE:I = 0x0

.field private static final DRAG_RIGHT:I = 0x4

.field private static final DRAG_TOP:I = 0x2

.field private static final EDGE_SIZE:I = 0x1e

.field private static final STROKE_SIZE:I = 0x4


# instance fields
.field private borderSize:I

.field private dragType:I

.field private edgeSize:I

.field private innerRectF:Landroid/graphics/RectF;

.field private lastPoint:Landroid/graphics/PointF;

.field private minSize:F

.field private rectF:Landroid/graphics/RectF;

.field private rectPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V
    .locals 2

    .prologue
    .line 416
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    .line 418
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->innerRectF:Landroid/graphics/RectF;

    .line 419
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->lastPoint:Landroid/graphics/PointF;

    .line 420
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    .line 421
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    .line 422
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    .line 423
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 425
    return-void
.end method

.method private dragRect(Landroid/view/MotionEvent;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->lastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float v5, v0, v2

    .line 549
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->lastPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float v7, v0, v2

    .line 550
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 553
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v1

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->top:F

    .line 554
    :goto_1
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    .line 555
    :goto_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v6

    int-to-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    .line 557
    :goto_3
    iget v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_5

    .line 558
    new-instance v1, Landroid/graphics/RectF;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-direct {v1, v6}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 559
    invoke-virtual {v1, v5, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 560
    iget v6, v1, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_0

    iget v2, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_0

    iget v0, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_0

    iget v0, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v5, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 613
    :cond_0
    :goto_4
    return-void

    :cond_1
    move v0, v1

    .line 552
    goto :goto_0

    :cond_2
    move v2, v1

    .line 553
    goto :goto_1

    .line 554
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    goto :goto_2

    .line 555
    :cond_4
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    .line 566
    :cond_5
    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$3(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    const/16 v8, 0x10

    if-eq v6, v8, :cond_6

    .line 567
    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v9, v6, v0

    .line 568
    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v10, v6, v2

    .line 569
    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v6, v3, v6

    .line 570
    iget-object v8, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    sub-float v8, v4, v8

    .line 571
    cmpl-float v11, v5, v1

    if-lez v11, :cond_13

    .line 572
    cmpg-float v9, v5, v6

    if-gez v9, :cond_12

    :goto_5
    move v6, v5

    .line 577
    :goto_6
    cmpl-float v5, v7, v1

    if-lez v5, :cond_16

    .line 578
    cmpg-float v5, v7, v8

    if-gez v5, :cond_15

    move v5, v7

    .line 583
    :goto_7
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 584
    cmpl-float v1, v7, v1

    if-eqz v1, :cond_0

    .line 587
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v1, v6, v1

    mul-float/2addr v1, v7

    .line 588
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    mul-float/2addr v7, v5

    .line 589
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PhotoView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "cropSquare "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v1

    .line 592
    :cond_6
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_9

    .line 593
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    cmpg-float v1, v1, v0

    if-gez v1, :cond_7

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v5, v0, v1

    .line 594
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v5

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    sub-float v5, v0, v1

    .line 595
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 597
    :cond_9
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c

    .line 598
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v7

    cmpg-float v0, v0, v2

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v7, v2, v0

    .line 599
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    sub-float v7, v0, v1

    .line 600
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 602
    :cond_c
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_f

    .line 603
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v5

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sub-float v5, v3, v0

    .line 604
    :cond_d
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v5

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_e

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float v5, v0, v1

    .line 605
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float/2addr v1, v5

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 607
    :cond_f
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v7

    cmpl-float v0, v0, v4

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v4, v0

    .line 609
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v7

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_11

    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->minSize:F

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    add-float v7, v0, v1

    .line 611
    :cond_11
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v7

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    :cond_12
    move v5, v6

    .line 572
    goto/16 :goto_5

    .line 574
    :cond_13
    neg-float v6, v5

    cmpg-float v6, v6, v9

    if-gez v6, :cond_14

    :goto_8
    move v6, v5

    goto/16 :goto_6

    :cond_14
    neg-float v5, v9

    goto :goto_8

    :cond_15
    move v5, v8

    .line 578
    goto/16 :goto_7

    .line 580
    :cond_16
    neg-float v5, v7

    cmpg-float v5, v5, v10

    if-gez v5, :cond_17

    :goto_9
    move v5, v7

    goto/16 :goto_7

    :cond_17
    neg-float v7, v10

    goto :goto_9
.end method

.method private getDrag(Landroid/view/MotionEvent;)I
    .locals 7

    .prologue
    const/16 v1, 0x10

    const/high16 v6, 0x40000000    # 2.0f

    .line 512
    const/4 v0, 0x0

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 515
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 517
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_1

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_1

    .line 518
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 519
    const/4 v0, 0x1

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 522
    or-int/lit8 v0, v0, 0x4

    .line 525
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_3

    .line 526
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 527
    or-int/lit8 v0, v0, 0x2

    .line 529
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v4, v3, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_3

    .line 530
    or-int/lit8 v0, v0, 0x8

    .line 534
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    add-float/2addr v4, v5

    div-float/2addr v4, v6

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v4, v4

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    .line 535
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v4

    div-float/2addr v2, v6

    sub-float v2, v3, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->edgeSize:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    move v0, v1

    .line 539
    :cond_4
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$3(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->isPowerOfTwo(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 543
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDrag type "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->borderSize:I

    .line 433
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/util/PhotoUtil;->dp2px(Landroid/content/Context;I)I

    move-result v6

    .line 434
    mul-int/lit8 v7, v6, 0x2

    .line 435
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->borderSize:I

    div-int/lit8 v0, v0, 0x2

    .line 436
    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->borderSize:I

    div-int/lit8 v1, v1, 0x3

    .line 437
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 438
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->innerRectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    int-to-float v3, v0

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    int-to-float v4, v0

    add-float/2addr v3, v4

    .line 439
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    int-to-float v5, v0

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    int-to-float v0, v0

    sub-float v0, v5, v0

    .line 438
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 445
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 446
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v6

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 447
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    int-to-float v3, v6

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 448
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    int-to-float v2, v6

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 449
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    int-to-float v3, v6

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 450
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 451
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 452
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 453
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 454
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 455
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 456
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 457
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 458
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 459
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 460
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 461
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    int-to-float v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 463
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 464
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 465
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    int-to-float v2, v7

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 468
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 469
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 470
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 471
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 472
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    int-to-float v2, v7

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 473
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    int-to-float v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 474
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 475
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->innerRectF:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Region$Op;->XOR:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 478
    const/high16 v0, 0x66000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 479
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->borderSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->innerRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 482
    return-void
.end method

.method public getRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    return-object v0
.end method

.method public initRect()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 503
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    .line 504
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 506
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    mul-float/2addr v0, v6

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    .line 507
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->rectF:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    div-float/2addr v3, v6

    .line 508
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v0

    div-float/2addr v4, v6

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v0, v5

    div-float/2addr v0, v6

    .line 507
    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 509
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 504
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v1

    int-to-float v1, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 485
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 486
    if-nez v2, :cond_1

    .line 487
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->getDrag(Landroid/view/MotionEvent;)I

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    .line 488
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->lastPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 499
    :cond_0
    :goto_0
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    if-eqz v2, :cond_4

    :goto_1
    return v0

    .line 489
    :cond_1
    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    .line 490
    if-eq v2, v0, :cond_2

    .line 491
    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 492
    :cond_2
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    goto :goto_0

    .line 493
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 494
    iget v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragType:I

    if-eqz v2, :cond_0

    .line 495
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->dragRect(Landroid/view/MotionEvent;)V

    .line 496
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GridDetector;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->invalidate()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 499
    goto :goto_1
.end method
