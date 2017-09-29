.class public Lcom/flybird/FBBorderImg;
.super Landroid/widget/ImageView;
.source "FBBorderImg.java"

# interfaces
.implements Lcom/flybird/IBorderable;


# instance fields
.field private a:Lcom/flybird/BorderHelper;

.field private b:Lcom/flybird/ProgressWheelHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 15
    iput-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    .line 29
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 15
    iput-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    .line 24
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 15
    iput-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    .line 19
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 20
    return-void
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/flybird/ProgressWheelHelper;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 106
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0}, Lcom/flybird/BorderHelper;->destory()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    .line 91
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 79
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->draw(Landroid/graphics/Canvas;)V

    .line 85
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/ProgressWheelHelper;->a(Landroid/graphics/Canvas;)V

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->clipBorder(Landroid/graphics/Canvas;)V

    .line 71
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 96
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0, p1, p2}, Lcom/flybird/ProgressWheelHelper;->measure(II)[I

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p0, v1, v0}, Lcom/flybird/FBBorderImg;->setMeasuredDimension(II)V

    .line 100
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 128
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/ProgressWheelHelper;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 131
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/flybird/ProgressWheelHelper;->onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 112
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0, p1, p2}, Lcom/flybird/ProgressWheelHelper;->a(II)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 136
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0, p2}, Lcom/flybird/ProgressWheelHelper;->a(I)V

    .line 139
    :cond_0
    return-void
.end method

.method public resetWheelHelper(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 41
    const-string/jumbo v0, "com.alipay.android.app/alipay_msp_loading_blue.gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "com.alipay.android.app/alipay_msp_loading.gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    if-nez v0, :cond_2

    .line 43
    const/4 v3, 0x4

    .line 44
    const/4 v5, -0x1

    .line 45
    const-string/jumbo v0, "com.alipay.android.app/alipay_msp_loading_blue.gif"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const-string/jumbo v0, "#00aaee"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    .line 47
    const/16 v3, 0xa

    .line 49
    :cond_1
    new-instance v0, Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {p0}, Lcom/flybird/FBBorderImg;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/flybird/ProgressWheelHelper;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    iput-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    .line 50
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/flybird/ProgressWheelHelper;->setupPaints()V

    .line 51
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {p0}, Lcom/flybird/FBBorderImg;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/flybird/ProgressWheelHelper;->setCircleRadius(I)V

    .line 52
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {p0}, Lcom/flybird/FBBorderImg;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/flybird/FBBorderImg;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/flybird/ProgressWheelHelper;->b(II)V

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/flybird/ProgressWheelHelper;->spin()V

    .line 55
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/flybird/ProgressWheelHelper;->start()V

    .line 60
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/flybird/FBBorderImg;->invalidate()V

    .line 61
    return-void

    .line 56
    :cond_4
    invoke-direct {p0}, Lcom/flybird/FBBorderImg;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 57
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/flybird/ProgressWheelHelper;->pause()V

    .line 58
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->b:Lcom/flybird/ProgressWheelHelper;

    invoke-virtual {v0}, Lcom/flybird/ProgressWheelHelper;->stopSpinning()V

    goto :goto_0
.end method

.method public setBorder(II)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/flybird/BorderHelper;->setBorder(II)V

    .line 38
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/flybird/FBBorderImg;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->setBorderadius(I)V

    .line 34
    return-void
.end method
