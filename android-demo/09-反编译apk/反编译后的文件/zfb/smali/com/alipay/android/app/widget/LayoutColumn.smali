.class public final Lcom/alipay/android/app/widget/LayoutColumn;
.super Landroid/widget/LinearLayout;


# instance fields
.field private a:F

.field private b:I

.field private c:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    .line 31
    invoke-direct {p0}, Lcom/alipay/android/app/widget/LayoutColumn;->a()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    .line 36
    invoke-direct {p0}, Lcom/alipay/android/app/widget/LayoutColumn;->a()V

    .line 37
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 40
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutColumn;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 42
    const-string/jumbo v1, "msp_debug_layout_column_frame"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 43
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/alipay/android/app/widget/LayoutColumn;->c:Landroid/graphics/Paint;

    .line 44
    iget-object v1, p0, Lcom/alipay/android/app/widget/LayoutColumn;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 45
    iget-object v1, p0, Lcom/alipay/android/app/widget/LayoutColumn;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 89
    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/alipay/android/app/pay/GlobalConstant;->DRAW_COLUMN_FRAME:Z

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutColumn;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutColumn;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v4, v0

    iget-object v5, p0, Lcom/alipay/android/app/widget/LayoutColumn;->c:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    :cond_0
    return-void
.end method

.method protected final getWidthFixValue()F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    return v0
.end method

.method protected final measureChild(Landroid/view/View;II)V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    .line 78
    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->b:I

    .line 53
    invoke-virtual {p0}, Lcom/alipay/android/app/widget/LayoutColumn;->requestLayout()V

    .line 55
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 56
    return-void
.end method

.method protected final onMeasure(II)V
    .locals 3

    .prologue
    const/high16 v2, 0x42c80000    # 100.0f

    .line 60
    iget v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    .line 61
    iget v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->b:I

    if-nez v0, :cond_0

    .line 62
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 63
    int-to-float v0, v0

    iget v1, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    float-to-int v0, v0

    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->b:I

    .line 67
    :cond_0
    iget v0, p0, Lcom/alipay/android/app/widget/LayoutColumn;->b:I

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public final setWidthFixValue(F)V
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/alipay/android/app/widget/LayoutColumn;->a:F

    .line 98
    return-void
.end method
