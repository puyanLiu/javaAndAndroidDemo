.class public Lcom/alipay/mobile/socialsdk/api/widget/XListView;
.super Landroid/widget/ListView;
.source "XListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private a:F

.field private b:Landroid/widget/Scroller;

.field private c:Landroid/widget/AbsListView$OnScrollListener;

.field private d:Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;

.field private e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

.field private f:Landroid/widget/RelativeLayout;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

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

    .line 58
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    .line 37
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->n:Z

    .line 59
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    .line 37
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->n:Z

    .line 64
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a(Landroid/content/Context;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    .line 31
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    .line 37
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->n:Z

    .line 69
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a(Landroid/content/Context;)V

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/widget/XListView;)Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->f:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/alipay/mobile/socialsdk/api/widget/XListView$OnXScrollListener;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/alipay/mobile/socialsdk/api/widget/XListView$OnXScrollListener;

    .line 178
    invoke-interface {v0, p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    .line 180
    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 73
    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b:Landroid/widget/Scroller;

    .line 76
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 79
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    .line 81
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_header_content:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 80
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->f:Landroid/widget/RelativeLayout;

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    .line 83
    sget v1, Lcom/alipay/mobile/socialsdk/R$id;->xlistview_header_time:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->g:Landroid/widget/TextView;

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->addHeaderView(Landroid/view/View;)V

    .line 87
    new-instance v0, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 91
    new-instance v1, Lcom/alipay/mobile/socialsdk/api/widget/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/api/widget/a;-><init>(Lcom/alipay/mobile/socialsdk/api/widget/XListView;)V

    .line 90
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/api/widget/XListView;I)V
    .locals 0

    .prologue
    .line 29
    iput p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->h:I

    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->getVisiableHeight()I

    move-result v2

    .line 200
    if-nez v2, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->h:I

    if-le v2, v0, :cond_0

    .line 208
    :cond_2
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->h:I

    if-le v2, v0, :cond_3

    .line 209
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->h:I

    move v3, v0

    .line 211
    :goto_1
    iput v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->p:I

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    .line 213
    const/16 v5, 0x190

    move v3, v1

    .line 212
    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 215
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/api/widget/XListView;)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c()V

    return-void
.end method

.method private c()V
    .locals 2

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->m:Z

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setState(I)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->d:Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->d:Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;->onLoadMore()V

    .line 249
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->p:I

    if-nez v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->setVisiableHeight(I)V

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->postInvalidate()V

    .line 313
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a()V

    .line 315
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    .line 316
    return-void

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .prologue
    .line 334
    iput p4, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->o:I

    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 339
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 328
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const v6, 0x3fe66666    # 1.8f

    const/4 v5, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 253
    iget v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    .line 257
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :pswitch_0
    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    .line 279
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_2

    .line 281
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    if-eqz v0, :cond_1

    .line 282
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->h:I

    if-le v0, v2, :cond_1

    .line 283
    iput-boolean v4, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    .line 284
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->setState(I)V

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->d:Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->d:Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;->onRefresh()V

    .line 289
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b()V

    .line 291
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->getLastVisiblePosition()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->o:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_4

    .line 293
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->l:Z

    if-eqz v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->getBottomMargin()I

    move-result v0

    const/16 v2, 0x32

    if-le v0, v2, :cond_3

    .line 295
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c()V

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->getBottomMargin()I

    move-result v2

    if-lez v2, :cond_4

    iput v4, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->p:I

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->invalidate()V

    .line 301
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 259
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    goto :goto_0

    .line 262
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    sub-float/2addr v0, v2

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a:F

    .line 266
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->getFirstVisiblePosition()I

    move-result v2

    if-nez v2, :cond_8

    .line 267
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->getVisiableHeight()I

    move-result v2

    if-gtz v2, :cond_5

    cmpl-float v2, v0, v5

    if-lez v2, :cond_8

    .line 269
    :cond_5
    div-float/2addr v0, v6

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    float-to-int v0, v0

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v3}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->getVisiableHeight()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->h:I

    if-le v0, v2, :cond_7

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->setState(I)V

    :cond_6
    :goto_1
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->setSelection(I)V

    .line 270
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->a()V

    goto :goto_0

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->e:Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewHeader;->setState(I)V

    goto :goto_1

    .line 271
    :cond_8
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->getLastVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->o:I

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_4

    .line 272
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->getBottomMargin()I

    move-result v2

    if-gtz v2, :cond_9

    cmpg-float v2, v0, v5

    if-gez v2, :cond_4

    .line 274
    :cond_9
    neg-float v0, v0

    div-float/2addr v0, v6

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->getBottomMargin()I

    move-result v2

    float-to-int v0, v0

    add-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->l:Z

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->m:Z

    if-nez v2, :cond_a

    const/16 v2, 0x32

    if-le v0, v2, :cond_b

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setState(I)V

    :cond_a
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setBottomMargin(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setState(I)V

    goto :goto_2

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->n:Z

    if-nez v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->n:Z

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->addFooterView(Landroid/view/View;)V

    .line 108
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->c:Landroid/widget/AbsListView$OnScrollListener;

    .line 321
    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->l:Z

    .line 130
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->l:Z

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->hide()V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->m:Z

    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->show()V

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setState(I)V

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    new-instance v1, Lcom/alipay/mobile/socialsdk/api/widget/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/api/widget/b;-><init>(Lcom/alipay/mobile/socialsdk/api/widget/XListView;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    .line 117
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->i:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method

.method public setXListViewListener(Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;)V
    .locals 0

    .prologue
    .line 342
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->d:Lcom/alipay/mobile/socialsdk/api/widget/XListView$IXListViewListener;

    .line 343
    return-void
.end method

.method public stopLoadMore()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 161
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->m:Z

    if-eqz v0, :cond_0

    .line 162
    iput-boolean v1, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->m:Z

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->k:Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/api/widget/XListViewFooter;->setState(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->j:Z

    .line 153
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/api/widget/XListView;->b()V

    .line 155
    :cond_0
    return-void
.end method
