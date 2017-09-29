.class public Lcom/alipay/mobile/egg/view/AnimateDrawable;
.super Lcom/alipay/mobile/egg/view/ProxyDrawable;
.source "AnimateDrawable.java"


# instance fields
.field private mAnimation:Landroid/view/animation/Animation;

.field private mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alipay/mobile/egg/view/ProxyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 34
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/alipay/mobile/egg/view/ProxyDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 34
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    .line 42
    iput-object p2, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 43
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/alipay/mobile/egg/view/AnimateDrawable;->getProxy()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 70
    iget-object v2, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    .line 71
    if-eqz v2, :cond_0

    .line 72
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v3

    .line 73
    iget-object v5, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    .line 72
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 74
    iget-object v2, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 77
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 79
    :cond_1
    return-void
.end method

.method public hasEnded()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasStarted()Z
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public startAnimationNow()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 49
    :cond_0
    return-void
.end method

.method public stopAnimationNow()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/AnimateDrawable;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 55
    :cond_0
    return-void
.end method
