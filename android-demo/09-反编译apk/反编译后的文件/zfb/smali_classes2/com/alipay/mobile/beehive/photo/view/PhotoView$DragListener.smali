.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/photo/view/PhotoView$SimpleDragListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;)V
    .locals 0

    .prologue
    .line 631
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onDrag(FF)V
    .locals 7

    .prologue
    .line 641
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onDrag deltaX "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " deltaY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->DRAG:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    .line 643
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancel drag for current state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :goto_0
    return-void

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 647
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/RectF;->top:F

    .line 648
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 649
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$1(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/graphics/RectF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 651
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v5, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v5}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$0(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v5

    int-to-float v5, v5

    invoke-static {v4, p1, v5, v0, v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$6(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFFF)F

    move-result v3

    .line 652
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v4

    int-to-float v4, v4

    invoke-static {v0, p2, v4, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$6(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFFF)F

    move-result v0

    .line 654
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-virtual {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 655
    const/high16 v5, 0x41c80000    # 25.0f

    iget v6, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 656
    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v6

    add-int/2addr v6, v5

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v6, v4, :cond_1

    .line 657
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$2(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v4, v0, v5, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$6(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFFF)F

    move-result v0

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1, v3, v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$7(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FF)V

    goto :goto_0
.end method

.method public onDragBegin()V
    .locals 3

    .prologue
    .line 635
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onDragBegin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->DRAG:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 637
    return-void
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    .line 664
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onDragEnd"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->DRAG:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-ne v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$DragListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 668
    :cond_0
    return-void
.end method
