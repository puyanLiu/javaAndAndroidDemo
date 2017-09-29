.class final Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullRefreshListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;IIJLcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;)V
    .locals 2

    .prologue
    .line 273
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->this$0:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mContinueRunning:Z

    .line 269
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mStartTime:J

    .line 270
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mCurrentY:I

    .line 274
    iput p2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mScrollFromY:I

    .line 275
    iput p3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mScrollToY:I

    .line 276
    invoke-static {p1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->access$0(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 277
    iput-wide p4, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mDuration:J

    .line 278
    iput-object p6, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;

    .line 279
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 288
    iget-wide v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mStartTime:J

    .line 309
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mScrollToY:I

    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mCurrentY:I

    if-eq v0, v1, :cond_2

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->this$0:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 316
    :cond_0
    :goto_1
    return-void

    .line 297
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    mul-long/2addr v0, v4

    .line 298
    iget-wide v2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mDuration:J

    .line 297
    div-long/2addr v0, v2

    .line 299
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 301
    iget v2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mScrollFromY:I

    iget v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 302
    iget-object v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 303
    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 301
    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 304
    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mScrollFromY:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mCurrentY:I

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->this$0:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;

    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mCurrentY:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->access$1(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;F)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;

    invoke-interface {v0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1
.end method

.method public final stop()V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->mContinueRunning:Z

    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;->this$0:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 321
    return-void
.end method
