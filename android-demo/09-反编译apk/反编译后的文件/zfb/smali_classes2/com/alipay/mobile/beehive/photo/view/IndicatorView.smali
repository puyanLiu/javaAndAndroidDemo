.class public Lcom/alipay/mobile/beehive/photo/view/IndicatorView;
.super Landroid/widget/LinearLayout;
.source "IndicatorView.java"


# instance fields
.field private indicatorNormal:Landroid/graphics/drawable/Drawable;

.field private indicatorPadding:I

.field private indicatorSelected:Landroid/graphics/drawable/Drawable;

.field private indicatorWidth:I

.field private selected:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorWidth:I

    .line 21
    iput v1, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorPadding:I

    .line 33
    iput v0, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->selected:I

    .line 34
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->setOrientation(I)V

    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->indicator_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$drawable;->indicator_selected:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorSelected:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method


# virtual methods
.method public setCount(I)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->removeAllViews()V

    move v0, v1

    .line 41
    :goto_0
    if-lt v0, p1, :cond_0

    .line 51
    return-void

    .line 42
    :cond_0
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorWidth:I

    iget v5, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorWidth:I

    .line 43
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    if-lez v0, :cond_1

    .line 46
    iget v4, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorPadding:I

    invoke-virtual {v3, v4, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 48
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0, v2, v0, v3}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setSelection(I)V
    .locals 2

    .prologue
    .line 54
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget v0, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->selected:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 59
    if-eqz v0, :cond_2

    .line 60
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    :cond_2
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->indicatorSelected:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iput p1, p0, Lcom/alipay/mobile/beehive/photo/view/IndicatorView;->selected:I

    goto :goto_0
.end method
