.class public Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;
.super Landroid/view/View;
.source "CirclePageIndicator.java"

# interfaces
.implements Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/j;


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private e:Landroid/support/v4/view/ViewPager;

.field private f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private g:I

.field private h:I

.field private i:F

.field private j:I

.field private k:I

.field private l:Z

.field private m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/alipay/android/phone/businesscommon/advertisement/i/b;->a:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 69
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 79
    :cond_0
    const-wide/16 v0, 0x0

    .line 78
    invoke-static {p1, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    .line 81
    const-wide/high16 v1, 0x4008000000000000L    # 3.0

    .line 80
    invoke-static {p1, v1, v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/d;->a(Landroid/content/Context;D)I

    move-result v1

    int-to-float v1, v1

    .line 87
    sget-object v2, Lcom/alipay/android/phone/businesscommon/advertisement/i/c;->a:[I

    .line 86
    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 89
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->l:Z

    .line 91
    invoke-virtual {v2, v4, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    .line 94
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 95
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    .line 96
    const/4 v4, 0x4

    const v5, -0x19191a

    .line 95
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 99
    const/4 v4, 0x7

    .line 100
    const v5, -0x222223

    .line 99
    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 98
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 101
    iget-object v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    .line 102
    const/16 v4, 0x8

    invoke-virtual {v2, v4, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 101
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 104
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->d:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->d:Landroid/graphics/Paint;

    .line 106
    const/4 v3, 0x3

    const v4, -0xff5501

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    const/4 v0, 0x5

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    .line 109
    const/4 v0, 0x6

    invoke-virtual {v2, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->m:Z

    .line 112
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    :cond_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method

.method private a(I)I
    .locals 6

    .prologue
    .line 492
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 493
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 495
    const/high16 v0, 0x40000000    # 2.0f

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    .line 510
    :cond_1
    :goto_0
    return v0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 501
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 500
    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    .line 501
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v0

    .line 502
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 503
    mul-int/lit8 v4, v0, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    mul-float/2addr v4, v5

    .line 502
    add-float/2addr v3, v4

    .line 503
    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    mul-float/2addr v0, v4

    .line 502
    add-float/2addr v0, v3

    .line 503
    const/high16 v3, 0x3f800000    # 1.0f

    .line 502
    add-float/2addr v0, v3

    float-to-int v0, v0

    .line 506
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 507
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method private b(I)I
    .locals 4

    .prologue
    .line 522
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 523
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 525
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v2, v1, :cond_0

    .line 537
    :goto_0
    return v0

    .line 530
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    iget v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    mul-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingBottom()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v1, v3

    float-to-int v1, v1

    .line 533
    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_1

    .line 534
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
    .line 147
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    return v0
.end method

.method public getPageColor()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    return v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isCentered()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->l:Z

    return v0
.end method

.method public isSnap()Z
    .locals 1

    .prologue
    .line 201
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->m:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 416
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 417
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 206
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 212
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 211
    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    .line 212
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v6

    .line 213
    if-eqz v6, :cond_0

    .line 217
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    if-lt v0, v6, :cond_2

    .line 218
    add-int/lit8 v0, v6, -0x1

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setCurrentItem(I)V

    goto :goto_0

    .line 226
    :cond_2
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    if-nez v0, :cond_6

    .line 227
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getWidth()I

    move-result v3

    .line 228
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v2

    .line 229
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingRight()I

    move-result v1

    .line 230
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v0

    .line 238
    :goto_1
    iget v4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v7, v4, v5

    .line 239
    int-to-float v0, v0

    iget v4, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    add-float/2addr v4, v0

    .line 240
    int-to-float v0, v2

    iget v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    add-float/2addr v0, v5

    .line 241
    iget-boolean v5, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->l:Z

    if-eqz v5, :cond_3

    .line 242
    sub-int v2, v3, v2

    sub-int v1, v2, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    .line 243
    int-to-float v2, v6

    mul-float/2addr v2, v7

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 249
    :cond_3
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    .line 250
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 251
    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v2

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    .line 255
    :cond_4
    const/4 v2, 0x0

    move v5, v2

    :goto_2
    if-lt v5, v6, :cond_7

    .line 276
    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->m:Z

    if-eqz v1, :cond_b

    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->h:I

    :goto_3
    int-to-float v1, v1

    mul-float/2addr v1, v7

    .line 277
    iget-boolean v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->m:Z

    if-nez v2, :cond_5

    .line 278
    iget v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->i:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    .line 280
    :cond_5
    iget v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    if-nez v2, :cond_c

    .line 281
    add-float/2addr v0, v1

    .line 287
    :goto_4
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 232
    :cond_6
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getHeight()I

    move-result v3

    .line 233
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingTop()I

    move-result v2

    .line 234
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingBottom()I

    move-result v1

    .line 235
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->getPaddingLeft()I

    move-result v0

    goto :goto_1

    .line 256
    :cond_7
    int-to-float v2, v5

    mul-float/2addr v2, v7

    add-float/2addr v2, v0

    .line 257
    iget v3, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    if-nez v3, :cond_a

    move v3, v2

    move v2, v4

    .line 262
    :goto_5
    iget-object v8, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getAlpha()I

    move-result v8

    if-lez v8, :cond_8

    .line 266
    iget-object v8, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 270
    :cond_8
    iget v8, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    cmpl-float v8, v1, v8

    if-eqz v8, :cond_9

    .line 271
    iget v8, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    iget-object v9, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 255
    :cond_9
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_a
    move v3, v4

    .line 261
    goto :goto_5

    .line 276
    :cond_b
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    goto :goto_3

    .line 285
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
    .line 474
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    if-nez v0, :cond_0

    .line 475
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a(I)I

    move-result v0

    .line 476
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b(I)I

    move-result v1

    .line 475
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setMeasuredDimension(II)V

    .line 481
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b(I)I

    move-result v0

    .line 479
    invoke-direct {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a(I)I

    move-result v1

    .line 478
    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 421
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->j:I

    .line 423
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 426
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 432
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 431
    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    .line 432
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v0

    .line 433
    if-nez v0, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    rem-int v0, p1, v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    .line 436
    iput p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->i:F

    .line 437
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 439
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    goto :goto_0
.end method

.method public onPageSelected(I)V
    .locals 2

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->m:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->j:I

    if-nez v0, :cond_3

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 449
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 448
    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    .line 449
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v0

    .line 450
    if-nez v0, :cond_2

    .line 460
    :cond_1
    :goto_0
    return-void

    .line 452
    :cond_2
    rem-int v1, p1, v0

    iput v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    .line 453
    rem-int v0, p1, v0

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->h:I

    .line 454
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 457
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 542
    check-cast p1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;

    .line 543
    invoke-virtual {p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 544
    iget v0, p1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    .line 545
    iget v0, p1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;->a:I

    iput v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->h:I

    .line 546
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->requestLayout()V

    .line 547
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 551
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 552
    new-instance v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;

    invoke-direct {v1, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 553
    iget v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    iput v0, v1, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator$SavedState;->a:I

    .line 554
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 291
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setCentered(Z)V
    .locals 0

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->l:Z

    .line 125
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 126
    return-void
.end method

.method public setCurrentItem(I)V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "ViewPager has not been bound."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 410
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->g:I

    .line 411
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 412
    return-void
.end method

.method public setFillColor(I)V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 144
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->f:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 465
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .prologue
    .line 151
    packed-switch p1, :pswitch_data_0

    .line 159
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 160
    const-string/jumbo v1, "Orientation must be either HORIZONTAL or VERTICAL."

    .line 159
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :pswitch_0
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->k:I

    .line 155
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->requestLayout()V

    .line 156
    return-void

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setPageColor(I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 134
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 135
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .prologue
    .line 187
    iput p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->a:F

    .line 188
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 189
    return-void
.end method

.method public setSnap(Z)V
    .locals 0

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->m:Z

    .line 197
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 198
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 170
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 171
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    .line 180
    return-void
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-ne v0, p1, :cond_0

    .line 396
    :goto_0
    return-void

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 389
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    if-nez v0, :cond_2

    .line 390
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 391
    const-string/jumbo v1, "ViewPager does not have adapter instance."

    .line 390
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_2
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    .line 394
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->e:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 395
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->invalidate()V

    goto :goto_0
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;I)V
    .locals 0

    .prologue
    .line 400
    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 401
    invoke-virtual {p0, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/CirclePageIndicator;->setCurrentItem(I)V

    .line 402
    return-void
.end method
