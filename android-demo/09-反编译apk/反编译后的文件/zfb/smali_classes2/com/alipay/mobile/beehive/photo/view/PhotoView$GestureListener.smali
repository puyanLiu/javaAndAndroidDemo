.class Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoView.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V
    .locals 0

    .prologue
    .line 691
    iput-object p1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;)V
    .locals 0

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 730
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 740
    :goto_0
    return v0

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$13(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$14(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$15(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    .line 735
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PhotoView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "onDoubleTap targetScale "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    new-instance v1, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 737
    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$16(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FLandroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 738
    new-instance v2, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-direct {v2, v3, v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$ScaleRunnable;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;FLandroid/graphics/PointF;)V

    .line 739
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0, v2}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$12(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Ljava/lang/Runnable;)V

    .line 740
    const/4 v0, 0x1

    goto :goto_0

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$14(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)F

    move-result v0

    goto :goto_1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 745
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onDoubleTapEvent"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    .line 714
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    .line 715
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onFling vx "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " vy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->NONE:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->FLING:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;->DRAG:Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    if-ne v0, v1, :cond_2

    .line 717
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$10(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$10(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;->cancelFling()V

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    new-instance v1, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v1, v2, v3, v4}, Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;-><init>(Lcom/alipay/mobile/beehive/photo/view/PhotoView;II)V

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$11(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;)V

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$10(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$FlingRunnable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$12(Lcom/alipay/mobile/beehive/photo/view/PhotoView;Ljava/lang/Runnable;)V

    .line 725
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0

    .line 723
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "cancel fling for current state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v3}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$5(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Lcom/alipay/mobile/beehive/photo/view/PhotoView$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .prologue
    .line 705
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onLongPress"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$9(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$9(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 709
    :cond_0
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 696
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PhotoView"

    const-string/jumbo v2, "onSingleTapConfirmed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$8(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/photo/view/PhotoView;->access$8(Lcom/alipay/mobile/beehive/photo/view/PhotoView;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/PhotoView$GestureListener;->this$0:Lcom/alipay/mobile/beehive/photo/view/PhotoView;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 700
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
