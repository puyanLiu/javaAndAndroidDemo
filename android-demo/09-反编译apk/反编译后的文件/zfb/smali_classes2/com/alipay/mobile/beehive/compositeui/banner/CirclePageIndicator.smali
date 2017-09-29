.class public Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/banner/PageIndicator;


# instance fields
.field private mCentered:Z

.field private mCurrentPage:I

.field private mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOrientation:I

.field private mPageOffset:F

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintStroke:Landroid/graphics/Paint;

.field private mRadius:F

.field private mScrollState:I

.field private mSnap:Z

.field private mSnapPage:I

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/alipay/mobile/beehive/R$attr;->vpiCirclePageIndicatorStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 48
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 70
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 80
    :cond_0
    const-wide/16 v0, 0x0

    .line 79
    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerResConst;->dip2px(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    .line 82
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 81
    invoke-static {p1, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerResConst;->dip2px(Landroid/content/Context;D)I

    move-result v1

    int-to-float v1, v1

    .line 88
    sget-object v2, Lcom/alipay/mobile/beehive/R$styleable;->CirclePageIndicator:[I

    .line 87
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 90
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCentered:Z

    .line 92
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    .line 95
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    .line 97
    const/4 v4, 0x4

    const v5, -0x19191a

    .line 96
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 100
    const/4 v4, 0x7

    .line 101
    const v5, -0x222223

    .line 100
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 99
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 102
    iget-object v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    .line 103
    const/16 v4, 0x8

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 102
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    .line 107
    const/4 v3, 0x3

    const v4, -0xff5501

    .line 106
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 108
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    .line 110
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnap:Z

    .line 113
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 119
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private measureLong(I)I
    .locals 6

    .prologue
    .line 493
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 494
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 496
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 511
    :cond_1
    :goto_0
    return v0

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 502
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 501
    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    .line 502
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v0

    .line 503
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 504
    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    mul-float/2addr v4, v5

    .line 503
    add-float/2addr v3, v4

    .line 504
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    mul-float/2addr v0, v4

    .line 503
    add-float/2addr v0, v3

    .line 504
    const/high16 v3, 0x3f800000    # 1.0f

    .line 503
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 507
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 508
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureShort(I)I
    .locals 4

    .prologue
    .line 523
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 524
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 526
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 538
    :goto_0
    return v0

    .line 531
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 534
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 535
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getFillColor()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCentered:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnap:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 417
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 418
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 207
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 213
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 212
    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    .line 213
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v6

    .line 214
    if-eqz v6, :cond_0

    .line 218
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    if-lt v0, v6, :cond_2

    .line 219
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 227
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_6

    .line 228
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 229
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 230
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 231
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 239
    :goto_1
    iget v4, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v7, v4, v5

    .line 240
    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    add-float/2addr v4, v0

    .line 241
    int-to-float v0, v2

    iget v5, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    add-float/2addr v0, v5

    .line 242
    iget-boolean v5, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCentered:Z

    if-eqz v5, :cond_3

    .line 243
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 244
    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 250
    :cond_3
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 252
    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 256
    :cond_4
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-lt v5, v6, :cond_7

    .line 277
    iget-boolean v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnap:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnapPage:I

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 278
    iget-boolean v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnap:Z

    if-nez v2, :cond_5

    .line 279
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPageOffset:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 281
    :cond_5
    iget v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    if-nez v2, :cond_c

    .line 282
    add-float/2addr v0, v1

    .line 288
    :goto_4
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    iget-object v2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 233
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 234
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 235
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 236
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    .line 257
    :cond_7
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 258
    iget v3, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    if-nez v3, :cond_a

    move v3, v2

    move v2, v4

    .line 263
    :goto_5
    iget-object v8, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_8

    .line 267
    iget-object v8, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 271
    :cond_8
    iget v8, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_9

    .line 272
    iget v8, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    iget-object v9, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 256
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_a
    move v3, v4

    .line 262
    goto :goto_5

    .line 277
    :cond_b
    iget v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    goto :goto_3

    .line 286
    :cond_c
    add-float/2addr v0, v1

    move v10, v0

    move v0, v4

    move v4, v10

    goto :goto_4
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 475
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    if-nez v0, :cond_0

    .line 476
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->measureLong(I)I

    move-result v0

    .line 477
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->measureShort(I)I

    move-result v1

    .line 476
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 482
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->measureShort(I)I

    move-result v0

    .line 480
    invoke-direct {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->measureLong(I)I

    move-result v1

    .line 479
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 422
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mScrollState:I

    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 427
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 433
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 432
    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    .line 433
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v0

    .line 434
    if-nez v0, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    rem-int v0, p1, v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    .line 437
    iput p2, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPageOffset:F

    .line 438
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 440
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnap:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mScrollState:I

    if-nez v0, :cond_3

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 450
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 449
    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;

    .line 450
    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/banner/BannerView$BannerPagerAdapter;->getRealCount()I

    move-result v0

    .line 451
    if-nez v0, :cond_2

    .line 461
    :cond_1
    :goto_0
    return-void

    .line 453
    :cond_2
    rem-int v1, p1, v0

    iput v1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    .line 454
    rem-int v0, p1, v0

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnapPage:I

    .line 455
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 458
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 543
    check-cast p1, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;

    .line 544
    invoke-virtual {p1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 545
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    .line 546
    iget v0, p1, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;->currentPage:I

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnapPage:I

    .line 547
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->requestLayout()V

    .line 548
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 552
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 553
    new-instance v1, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 554
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    iput v0, v1, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator$SavedState;->currentPage:I

    .line 555
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 292
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCentered:Z

    .line 126
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 127
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 411
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mCurrentPage:I

    .line 412
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 413
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 145
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 466
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 161
    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :pswitch_0
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mOrientation:I

    .line 156
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->requestLayout()V

    .line 157
    return-void

    .line 152
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 136
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 188
    iput p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mRadius:F

    .line 189
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 190
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mSnap:Z

    .line 198
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 199
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 172
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 180
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    .line 181
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 397
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 390
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 392
    const-string/jumbo v1, "ViewPager does not have adapter instance."

    .line 391
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_2
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 396
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 401
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 402
    invoke-virtual {p0, p2}, Lcom/alipay/mobile/beehive/compositeui/banner/CirclePageIndicator;->setCurrentItem(I)V

    .line 403
    return-void
.end method
