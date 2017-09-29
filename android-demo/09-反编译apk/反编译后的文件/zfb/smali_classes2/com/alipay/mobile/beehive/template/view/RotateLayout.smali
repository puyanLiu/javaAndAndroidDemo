.class public Lcom/alipay/mobile/beehive/template/view/RotateLayout;
.super Landroid/widget/LinearLayout;
.source "RotateLayout.java"


# instance fields
.field private bm:Landroid/graphics/Bitmap;

.field private curDegrees:F

.field private iconSize:I

.field private imageview:Landroid/widget/ImageView;

.field private isComplete:Z

.field private isScroll:Z

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->curDegrees:F

    .line 145
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isComplete:Z

    .line 146
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isScroll:Z

    .line 26
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->curDegrees:F

    .line 145
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isComplete:Z

    .line 146
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isScroll:Z

    .line 32
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->curDegrees:F

    .line 145
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isComplete:Z

    .line 146
    iput-boolean v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isScroll:Z

    .line 37
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->init()V

    .line 38
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/beehive/template/view/RotateLayout;Z)V
    .locals 0

    .prologue
    .line 146
    iput-boolean p1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isScroll:Z

    return-void
.end method


# virtual methods
.method public clearAniamtion()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 78
    return-void
.end method

.method public getImageViewMarginTop()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 105
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    return v0
.end method

.method init()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/beehive/R$layout;->rotatelayout:I

    invoke-virtual {v0, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->view:Landroid/view/View;

    .line 49
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/alipay/mobile/beehive/R$dimen;->refresh_icon_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->iconSize:I

    .line 50
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    sget v2, Lcom/alipay/mobile/beehive/R$drawable;->userguide_moments_icon:I

    .line 50
    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    .line 52
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 53
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->iconSize:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->iconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->view:Landroid/view/View;

    sget v1, Lcom/alipay/mobile/beehive/R$id;->ImageView1:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 57
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 112
    iget-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isComplete:Z

    if-eqz v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 115
    :cond_0
    iput-boolean v3, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isComplete:Z

    .line 116
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 117
    sget v1, Lcom/alipay/mobile/beehive/R$anim;->slide_in_from_top:I

    .line 116
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 118
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 120
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/beehive/R$dimen;->refresh_icon_margin_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setImageViewMarginTop(I)V

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    new-instance v1, Lcom/alipay/mobile/beehive/template/view/RotateLayout$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout$1;-><init>(Lcom/alipay/mobile/beehive/template/view/RotateLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method public roate(F)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 86
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 87
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->curDegrees:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->curDegrees:F

    .line 88
    iget v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->curDegrees:F

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->bm:Landroid/graphics/Bitmap;

    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    return-void
.end method

.method public rotateAnimation()V
    .locals 7

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 65
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 68
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 69
    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 70
    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 71
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 72
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 73
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 74
    return-void
.end method

.method public setImageViewMarginTop(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 99
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    return-void
.end method

.method public switchToRefreshState()V
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/beehive/R$dimen;->refresh_icon_retate_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->setImageViewMarginTop(I)V

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 62
    return-void
.end method

.method public toup()V
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->clearAniamtion()V

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->isComplete:Z

    .line 154
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    sget v1, Lcom/alipay/mobile/beehive/R$anim;->slide_out_to_top:I

    .line 156
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 158
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 161
    iget-object v1, p0, Lcom/alipay/mobile/beehive/template/view/RotateLayout;->imageview:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 162
    new-instance v1, Lcom/alipay/mobile/beehive/template/view/RotateLayout$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/beehive/template/view/RotateLayout$2;-><init>(Lcom/alipay/mobile/beehive/template/view/RotateLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 183
    return-void
.end method
