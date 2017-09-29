.class Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;
.super Ljava/lang/Object;
.source "DragSortListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final DOWN:I = 0x1

.field public static final STOP:I = -0x1

.field public static final UP:I


# instance fields
.field private dt:F

.field private dy:I

.field private mAbort:Z

.field private mCurrTime:J

.field private mFirstFooter:I

.field private mLastHeader:I

.field private mPrevTime:J

.field private mScrollSpeed:F

.field private mScrolling:Z

.field private scrollDir:I

.field private tStart:J

.field final synthetic this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/drag/DragSortListView;)V
    .locals 1

    .prologue
    .line 2359
    iput-object p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2346
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    .line 2360
    return-void
.end method


# virtual methods
.method public getScrollDir()I
    .locals 1

    .prologue
    .line 2356
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->scrollDir:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isScrolling()Z
    .locals 1

    .prologue
    .line 2352
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    return v0
.end method

.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 2387
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mAbort:Z

    if-eqz v0, :cond_0

    .line 2388
    iput-boolean v9, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    .line 2476
    :goto_0
    return-void

    .line 2394
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2395
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getLastVisiblePosition()I

    move-result v0

    .line 2396
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getCount()I

    move-result v3

    .line 2397
    iget-object v2, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingTop()I

    move-result v2

    .line 2398
    iget-object v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v4}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iget-object v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v5}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2400
    iget-object v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v5}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$10(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v5

    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v6}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$11(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v7}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$12(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2401
    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v6}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$10(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v6

    iget-object v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v7}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$11(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v7

    iget-object v8, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v8}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$12(Lcom/alipay/mobile/emotion/drag/DragSortListView;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2403
    iget v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->scrollDir:I

    if-nez v7, :cond_4

    .line 2404
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v3, v9}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2406
    if-nez v3, :cond_1

    .line 2407
    iput-boolean v9, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2410
    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 2411
    iput-boolean v9, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    goto :goto_0

    .line 2415
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$13(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;

    move-result-object v3

    .line 2416
    iget-object v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v5}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$14(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F

    move-result v5

    int-to-float v6, v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v6}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$15(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    .line 2417
    iget-wide v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mPrevTime:J

    .line 2415
    invoke-interface {v3, v5, v6, v7}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrollSpeed:F

    .line 2435
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mCurrTime:J

    .line 2436
    iget-wide v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mCurrTime:J

    iget-wide v7, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mPrevTime:J

    sub-long/2addr v5, v7

    long-to-float v3, v5

    iput v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dt:F

    .line 2442
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrollSpeed:F

    iget v5, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dt:F

    mul-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    .line 2445
    iget v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    if-ltz v3, :cond_7

    .line 2446
    iget v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    move v0, v1

    .line 2453
    :goto_2
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    sub-int v1, v0, v1

    invoke-virtual {v3, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2454
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v1

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    add-int/2addr v1, v4

    .line 2456
    if-nez v0, :cond_3

    if-le v1, v2, :cond_3

    move v1, v2

    .line 2461
    :cond_3
    iget-object v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$18(Lcom/alipay/mobile/emotion/drag/DragSortListView;Z)V

    .line 2463
    iget-object v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    sub-int/2addr v1, v2

    invoke-virtual {v4, v0, v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->setSelectionFromTop(II)V

    .line 2464
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->layoutChildren()V

    .line 2465
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->invalidate()V

    .line 2467
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v1, v9}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$18(Lcom/alipay/mobile/emotion/drag/DragSortListView;Z)V

    .line 2470
    iget-object v1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v1, v0, v3, v9}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$19(Lcom/alipay/mobile/emotion/drag/DragSortListView;ILandroid/view/View;Z)V

    .line 2472
    iget-wide v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mCurrTime:J

    iput-wide v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mPrevTime:J

    .line 2475
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2419
    :cond_4
    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    sub-int v7, v0, v1

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2420
    if-nez v6, :cond_5

    .line 2421
    iput-boolean v9, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2424
    :cond_5
    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_6

    .line 2425
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int v6, v4, v2

    if-gt v3, v6, :cond_6

    .line 2426
    iput-boolean v9, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    goto/16 :goto_0

    .line 2430
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$13(Lcom/alipay/mobile/emotion/drag/DragSortListView;)Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;

    move-result-object v3

    .line 2431
    int-to-float v5, v5

    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v6}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$16(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-static {v6}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->access$17(Lcom/alipay/mobile/emotion/drag/DragSortListView;)F

    move-result v6

    div-float/2addr v5, v6

    .line 2432
    iget-wide v6, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mPrevTime:J

    .line 2430
    invoke-interface {v3, v5, v6, v7}, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScrollProfile;->getSpeed(FJ)F

    move-result v3

    neg-float v3, v3

    iput v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrollSpeed:F

    goto/16 :goto_1

    .line 2449
    :cond_7
    neg-int v3, v4

    iget v4, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->dy:I

    goto/16 :goto_2
.end method

.method public startScrolling(I)V
    .locals 2

    .prologue
    .line 2363
    iget-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    if-nez v0, :cond_0

    .line 2365
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mAbort:Z

    .line 2366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    .line 2367
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->tStart:J

    .line 2368
    iget-wide v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->tStart:J

    iput-wide v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mPrevTime:J

    .line 2369
    iput p1, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->scrollDir:I

    .line 2370
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->post(Ljava/lang/Runnable;)Z

    .line 2372
    :cond_0
    return-void
.end method

.method public stopScrolling(Z)V
    .locals 1

    .prologue
    .line 2375
    if-eqz p1, :cond_0

    .line 2376
    iget-object v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->this$0:Lcom/alipay/mobile/emotion/drag/DragSortListView;

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/emotion/drag/DragSortListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2377
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mScrolling:Z

    .line 2383
    :goto_0
    return-void

    .line 2379
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/emotion/drag/DragSortListView$DragScroller;->mAbort:Z

    goto :goto_0
.end method
