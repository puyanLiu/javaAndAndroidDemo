.class public Lcom/alipay/android/app/widget/CustomListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;,
        Lcom/alipay/android/app/widget/CustomListView$OnXScrollListener;
    }
.end annotation


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

.field private e:Lcom/alipay/android/app/widget/CustomListViewHeader;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/alipay/android/app/widget/CustomListViewFooter;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    .line 36
    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    .line 36
    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    .line 36
    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    .line 42
    iput-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    .line 74
    invoke-direct {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->a(Landroid/content/Context;)V

    .line 75
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/alipay/android/app/widget/CustomListView$OnXScrollListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 215
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    .line 81
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 84
    new-instance v0, Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/widget/CustomListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    const-string/jumbo v1, "xlistview_header_content"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    const-string/jumbo v1, "xlistview_header_time"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->g:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomListView;->addHeaderView(Landroid/view/View;)V

    .line 92
    new-instance v0, Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-direct {v0, p1}, Lcom/alipay/android/app/widget/CustomListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    .line 94
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/widget/i;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/i;-><init>(Lcom/alipay/android/app/widget/CustomListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 104
    return-void
.end method

.method static synthetic access$002(Lcom/alipay/android/app/widget/CustomListView;I)I
    .locals 0

    .prologue
    .line 19
    iput p1, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    return p1
.end method

.method static synthetic access$100(Lcom/alipay/android/app/widget/CustomListView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/android/app/widget/CustomListView;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->d()V

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v2

    .line 237
    if-nez v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v2, v0, :cond_0

    .line 245
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v2, v0, :cond_3

    .line 246
    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    move v3, v0

    .line 248
    :goto_1
    iput v1, p0, Lcom/alipay/android/app/widget/CustomListView;->p:I

    .line 249
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 252
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method private c()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v2

    .line 272
    if-lez v2, :cond_0

    .line 273
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->p:I

    .line 274
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 276
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->invalidate()V

    .line 278
    :cond_0
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    .line 285
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    .line 286
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    invoke-interface {v0}, Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;->b()V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->p:I

    if-nez v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setVisiableHeight(I)V

    .line 349
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->postInvalidate()V

    .line 350
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->a()V

    .line 352
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 353
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 371
    iput p4, p0, Lcom/alipay/android/app/widget/CustomListView;->o:I

    .line 372
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 376
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 365
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const v6, 0x3fe66666    # 1.8f

    const/4 v5, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 293
    iget v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    .line 297
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    :pswitch_0
    iput v1, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    .line 317
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_a

    .line 319
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v0, v1, :cond_1

    .line 321
    iput-boolean v4, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    .line 322
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setState(I)V

    .line 323
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    invoke-interface {v0}, Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;->a()V

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->b()V

    .line 338
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 299
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    goto :goto_0

    .line 302
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    sub-float/2addr v0, v1

    .line 303
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/alipay/android/app/widget/CustomListView;->a:F

    .line 304
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_3

    cmpl-float v1, v0, v5

    if-lez v1, :cond_6

    .line 307
    :cond_3
    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    float-to-int v0, v0

    iget-object v2, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v2}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->h:I

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0, v4}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setState(I)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v3}, Lcom/alipay/android/app/widget/CustomListView;->setSelection(I)V

    .line 308
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->a()V

    goto :goto_0

    .line 307
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->e:Lcom/alipay/android/app/widget/CustomListViewHeader;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/widget/CustomListViewHeader;->setState(I)V

    goto :goto_1

    .line 309
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/alipay/android/app/widget/CustomListView;->o:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_7

    cmpg-float v1, v0, v5

    if-gez v1, :cond_2

    .line 312
    :cond_7
    neg-float v0, v0

    div-float/2addr v0, v6

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v1

    float-to-int v0, v0

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    if-nez v1, :cond_8

    const/16 v1, 0x32

    if-le v0, v1, :cond_9

    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1, v4}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    :cond_8
    :goto_2
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setBottomMargin(I)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    goto :goto_2

    .line 328
    :cond_a
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/CustomListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/alipay/android/app/widget/CustomListView;->o:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    .line 330
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_b

    .line 332
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->d()V

    .line 334
    :cond_b
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->c()V

    goto/16 :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 19
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/alipay/android/app/widget/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->n:Z

    .line 111
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/widget/CustomListView;->addFooterView(Landroid/view/View;)V

    .line 113
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 358
    return-void
.end method

.method public setPullLoadState(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 138
    packed-switch p1, :pswitch_data_0

    .line 159
    :pswitch_0
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->hide()V

    .line 161
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    :goto_0
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->hide()V

    .line 167
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v3}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    :goto_1
    return-void

    .line 140
    :pswitch_1
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    .line 141
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->show()V

    .line 142
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    goto :goto_0

    .line 146
    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->l:Z

    .line 147
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    .line 148
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->show()V

    .line 149
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    new-instance v1, Lcom/alipay/android/app/widget/j;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/j;-><init>(Lcom/alipay/android/app/widget/CustomListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 169
    :cond_0
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    .line 170
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/android/app/widget/CustomListViewFooter;->show()V

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    new-instance v1, Lcom/alipay/android/app/widget/k;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/widget/k;-><init>(Lcom/alipay/android/app/widget/CustomListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    .line 123
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->i:Z

    if-nez v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    return-void
.end method

.method public setXListViewListener(Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/alipay/android/app/widget/CustomListView;->d:Lcom/alipay/android/app/widget/CustomListView$ICustomListViewListener;

    .line 380
    return-void
.end method

.method public stopLoadMore()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iput-boolean v2, p0, Lcom/alipay/android/app/widget/CustomListView;->m:Z

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/widget/CustomListView;->k:Lcom/alipay/android/app/widget/CustomListViewFooter;

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/widget/CustomListViewFooter;->setState(I)V

    .line 199
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->c()V

    .line 201
    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/widget/CustomListView;->j:Z

    .line 188
    invoke-direct {p0}, Lcom/alipay/android/app/widget/CustomListView;->b()V

    .line 190
    :cond_0
    return-void
.end method
