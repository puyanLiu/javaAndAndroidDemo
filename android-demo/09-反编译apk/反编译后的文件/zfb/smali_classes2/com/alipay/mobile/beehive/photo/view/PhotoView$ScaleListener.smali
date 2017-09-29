.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "PhotoView.java"


# instance fields
.field private overZoom:Z

.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;)V
    .locals 0

    .prologue
    .line 750
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 767
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->SCALE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    .line 768
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancel scale for current state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    :goto_0
    return v7

    .line 771
    :cond_0
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    .line 772
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    .line 773
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 774
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v3

    mul-float/2addr v3, v0

    .line 778
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_2

    .line 779
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v3

    div-float/2addr v0, v3

    .line 785
    :cond_1
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "PhotoView"

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "onScale current "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v6}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " factor "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " px "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " py "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 785
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3, v0, v1, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$19(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FFF)V

    .line 788
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$20(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V

    goto :goto_0

    .line 780
    :cond_2
    iget-boolean v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->overZoom:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 781
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v3

    div-float/2addr v0, v3

    goto :goto_1

    .line 782
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$18(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    .line 783
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$18(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v3

    div-float/2addr v0, v3

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 756
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onScaleBegin canScale "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$17(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$17(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 762
    :goto_0
    return v1

    .line 760
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->overZoom:Z

    .line 761
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v2, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->SCALE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    goto :goto_0

    .line 760
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 3

    .prologue
    .line 794
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 795
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onScaleEnd"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->overZoom:Z

    .line 797
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->SCALE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_1

    .line 811
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$4(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;)V

    .line 803
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 804
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    .line 805
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 806
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$21(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Landroid/graphics/PointF;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "adjustToScale"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$22(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "adjustToBounds"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
