.class Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;
.super Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;
.source "DragSortListView.java"


# instance fields
.field private mDropPos:I

.field private mInitDeltaX:F

.field private mInitDeltaY:F

.field private srcPos:I

.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;FI)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    .line 1003
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;-><init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;FI)V

    .line 1004
    return-void
.end method

.method private getTargetY()I
    .locals 4

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v0

    .line 1017
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$6(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getDividerHeight()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 1018
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mDropPos:I

    sub-int v0, v3, v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1019
    const/4 v0, -0x1

    .line 1020
    if-eqz v2, :cond_2

    .line 1021
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->srcPos:I

    if-ne v0, v3, :cond_0

    .line 1022
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 1035
    :goto_0
    return v0

    .line 1023
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mDropPos:I

    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->srcPos:I

    if-ge v0, v3, :cond_1

    .line 1025
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1028
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$7(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 1032
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->cancel()V

    goto :goto_0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$2(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mDropPos:I

    .line 1009
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$3(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->srcPos:I

    .line 1010
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$4(Lcom/alipay/mobile/emotion/drag/DragSortListView;I)V

    .line 1011
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->getTargetY()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mInitDeltaY:F

    .line 1012
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mInitDeltaX:F

    .line 1013
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$9(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V

    .line 1056
    return-void
.end method

.method public onUpdate(FF)V
    .locals 5

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->getTargetY()I

    move-result v0

    .line 1041
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingLeft()I

    move-result v1

    .line 1042
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    .line 1043
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int v1, v3, v1

    int-to-float v1, v1

    .line 1044
    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    .line 1045
    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mInitDeltaY:F

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v3, v2

    if-ltz v2, :cond_0

    .line 1046
    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mInitDeltaX:F

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v1, v3, v1

    if-gez v1, :cond_1

    .line 1047
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mInitDeltaY:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 1048
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$5(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Landroid/graphics/Point;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->mInitDeltaX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 1049
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DropAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$8(Lcom/alipay/mobile/emotion/drag/DragSortListView;Z)V

    .line 1051
    :cond_1
    return-void
.end method
