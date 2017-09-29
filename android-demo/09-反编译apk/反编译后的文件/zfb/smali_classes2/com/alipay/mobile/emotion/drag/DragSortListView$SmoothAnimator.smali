.class Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mA:F

.field private mAlpha:F

.field private mB:F

.field private mC:F

.field private mCanceled:Z

.field private mD:F

.field private mDurationF:F

.field protected mStartTime:J

.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;FI)V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 932
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 933
    iput p2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    .line 934
    int-to-float v0, p3

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mDurationF:F

    .line 935
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    mul-float/2addr v0, v3

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v1, v2, v1

    mul-float/2addr v0, v1

    div-float v0, v2, v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mD:F

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mA:F

    .line 936
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mB:F

    .line 937
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    div-float v0, v2, v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mC:F

    .line 938
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 959
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 963
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public onUpdate(FF)V
    .locals 0

    .prologue
    .line 967
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 975
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 989
    :goto_0
    return-void

    .line 979
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    .line 980
    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mDurationF:F

    .line 979
    div-float/2addr v0, v1

    .line 982
    cmpl-float v1, v0, v4

    if-ltz v1, :cond_1

    .line 983
    invoke-virtual {p0, v4, v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 984
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->onStop()V

    goto :goto_0

    .line 986
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->transform(F)F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->onUpdate(FF)V

    .line 987
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public start()V
    .locals 2

    .prologue
    .line 951
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mStartTime:J

    .line 952
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mCanceled:Z

    .line 953
    invoke-virtual {p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->onStart()V

    .line 954
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 955
    return-void
.end method

.method public transform(F)F
    .locals 3

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 941
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 942
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mA:F

    mul-float/2addr v0, p1

    mul-float/2addr v0, p1

    .line 946
    :goto_0
    return v0

    .line 943
    :cond_0
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mAlpha:F

    sub-float v0, v2, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 944
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mB:F

    iget v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mC:F

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    goto :goto_0

    .line 946
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$SmoothAnimator;->mD:F

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v1, p1, v2

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    goto :goto_0
.end method
