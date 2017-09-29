.class public Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;
.super Lcom/alipay/mobile/commonui/widget/APListView;
.source "PullRefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PullRefreshListView"


# instance fields
.field private hasDownEvent:Z

.field private headerView:Landroid/view/View;

.field private isInRefreshingPosition:Z

.field private isLoadMore:Z

.field private isRefreshing:Z

.field private mCurrentSmoothScrollRunnable:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

.field private mInitialMotionY:F

.field private mIsBeingDragged:Z

.field private mLastMotionY:F

.field private mOnLoadMoreListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnLoadMoreListener;

.field private mOnRefreshListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;

.field private mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mTop:I

.field private moveY_1:F

.field private moveY_2:F

.field private rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mIsBeingDragged:Z

    .line 24
    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mTop:I

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/commonui/widget/APListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mIsBeingDragged:Z

    .line 24
    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mTop:I

    .line 30
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    .line 31
    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->init()V

    .line 44
    return-void
.end method

.method private OnRefreshing()V
    .locals 7

    .prologue
    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->rotateAnimation()V

    .line 250
    new-instance v0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget v2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mTop:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    .line 252
    new-instance v6, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$2;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$2;-><init>(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;-><init>(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;IIJLcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;)V

    .line 250
    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mCurrentSmoothScrollRunnable:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mCurrentSmoothScrollRunnable:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;F)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->release(F)V

    return-void
.end method

.method private isFirstItemVisible()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 351
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 352
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return v0

    .line 355
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getFirstVisiblePosition()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 356
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 357
    if-eqz v2, :cond_2

    .line 358
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getTop()I

    move-result v3

    if-ge v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 362
    goto :goto_0
.end method

.method private newMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 8

    .prologue
    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 163
    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    const/4 v7, 0x0

    .line 162
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0
.end method

.method private pullEvent(F)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 333
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PullListView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pullEvent, newScrollValue:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    div-float v1, p1, v5

    float-to-int v1, v1

    invoke-virtual {v0, v4, v1, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    if-eqz v0, :cond_0

    .line 337
    div-float v0, p1, v5

    float-to-int v0, v0

    .line 338
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$dimen;->refresh_icon_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 337
    add-int/2addr v0, v1

    .line 339
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$dimen;->refresh_icon_retate_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 340
    iput-boolean v4, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    .line 341
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setImageViewMarginTop(I)V

    .line 346
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setVisibility(I)V

    .line 348
    :cond_0
    return-void

    .line 343
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$dimen;->refresh_icon_retate_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setImageViewMarginTop(I)V

    goto :goto_0
.end method

.method private release(F)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p1, v1

    float-to-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 330
    return-void
.end method


# virtual methods
.method public completeRefresh()V
    .locals 0

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->onCompleteRefresh()V

    .line 207
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getInstance()Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;
    .locals 0

    .prologue
    .line 47
    return-object p0
.end method

.method public getPullHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    return-object v0
.end method

.method init()V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getInstance()Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    return-void
.end method

.method public onCompleteRefresh()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 210
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    if-eqz v0, :cond_0

    .line 211
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    .line 213
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    if-eqz v0, :cond_1

    .line 214
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->toup()V

    .line 217
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    if-eqz v0, :cond_2

    .line 218
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    .line 220
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    if-lez v0, :cond_3

    .line 221
    new-instance v0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

    .line 222
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    const-wide/16 v4, 0x12c

    .line 223
    new-instance v6, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$1;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$1;-><init>(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;-><init>(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;IIJLcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnSmoothScrollFinishedListener;)V

    .line 221
    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mCurrentSmoothScrollRunnable:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mCurrentSmoothScrollRunnable:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$SmoothScrollRunnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_3
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 368
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    .line 369
    if-lez p4, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    .line 372
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 377
    if-nez p2, :cond_0

    .line 378
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 379
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnLoadMoreListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnLoadMoreListener;

    if-eqz v0, :cond_0

    .line 381
    iput-boolean v2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnLoadMoreListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnLoadMoreListener;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getInstance()Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnLoadMoreListener;->onLoadMore(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)V

    .line 383
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "load more"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 388
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 94
    :pswitch_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PullRefreshListView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isRefreshing:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-boolean v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",isLoadMore:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 94
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    if-eqz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->onCompleteRefresh()V

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mInitialMotionY:F

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    .line 103
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->hasDownEvent:Z

    if-nez v0, :cond_2

    .line 104
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->hasDownEvent:Z

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mInitialMotionY:F

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    .line 107
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isFirstItemVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PullRefreshListView"

    const-string/jumbo v2, "firstItemVisible"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    .line 110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_1:F

    .line 111
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_1:F

    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_2:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 112
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_2:F

    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_1:F

    sub-float/2addr v0, v1

    .line 113
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PullRefreshListView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rotate= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_1:F

    iput v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_2:F

    .line 115
    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    iget v2, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mInitialMotionY:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 116
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mIsBeingDragged:Z

    .line 117
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->reset()V

    .line 118
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->roate(F)V

    .line 119
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    iget v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mInitialMotionY:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->pullEvent(F)V

    .line 120
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->newMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/alipay/mobile/commonui/widget/APListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 123
    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PullRefreshListView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mInitialMotionY:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mInitialMotionY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 124
    const-string/jumbo v3, "mLastMotionY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", moveY_1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_1:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",moveY_2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->moveY_2:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 129
    :pswitch_1
    iput-boolean v5, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->hasDownEvent:Z

    .line 130
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isLoadMore:Z

    if-eqz v0, :cond_5

    .line 131
    :cond_4
    invoke-super {p0, p1}, Lcom/alipay/mobile/commonui/widget/APListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_1

    .line 133
    :cond_5
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isFirstItemVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mInitialMotionY:F

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    goto/16 :goto_0

    .line 140
    :pswitch_2
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->hasDownEvent:Z

    .line 141
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mIsBeingDragged:Z

    if-eqz v0, :cond_0

    .line 142
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mIsBeingDragged:Z

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mLastMotionY:F

    .line 144
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isInRefreshingPosition:Z

    if-eqz v0, :cond_6

    .line 145
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->OnRefreshing()V

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnRefreshListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnRefreshListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;->onRefresh(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)V

    goto/16 :goto_0

    .line 150
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->onCompleteRefresh()V

    goto/16 :goto_0

    .line 92
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final setOnLoadMoreListener(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnLoadMoreListener;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnLoadMoreListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnLoadMoreListener;

    .line 173
    return-void
.end method

.method public final setOnRefreshListener(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnRefreshListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;

    .line 169
    return-void
.end method

.method public setPullHeaderView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    .line 58
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 59
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mTop:I

    if-nez v0, :cond_0

    .line 60
    const/16 v0, 0xd8

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mTop:I

    .line 62
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->pullEvent(F)V

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_1

    .line 64
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 66
    :cond_1
    return-void
.end method

.method public setPullHeaderViewHeight(I)V
    .locals 1

    .prologue
    .line 73
    iput p1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mTop:I

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->headerView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->pullEvent(F)V

    .line 77
    :cond_0
    return-void
.end method

.method public setRotateLayout(Lcom/alipay/mobile/beehive/template/view/RotateLayout;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    .line 81
    return-void
.end method

.method public startRefresh()V
    .locals 3

    .prologue
    .line 234
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PullRefreshListView"

    const-string/jumbo v2, "startRefresh"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->switchToRefreshState()V

    .line 236
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setVisibility(I)V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->isRefreshing:Z

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->rotateLayout:Lcom/alipay/mobile/beehive/template/view/RotateLayout;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->rotateAnimation()V

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnRefreshListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;->mOnRefreshListener:Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/beehive/template/view/PullRefreshListView$OnRefreshListener;->onRefresh(Lcom/alipay/mobile/beehive/template/view/PullRefreshListView;)V

    .line 242
    :cond_0
    return-void
.end method
