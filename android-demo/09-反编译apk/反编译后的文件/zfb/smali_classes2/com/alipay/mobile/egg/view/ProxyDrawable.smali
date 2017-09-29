.class public Lcom/alipay/mobile/egg/view/ProxyDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ProxyDrawable.java"


# instance fields
.field private mMutated:Z

.field private mProxy:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 53
    :cond_0
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public getProxy()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mMutated:Z

    .line 104
    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 96
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 89
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 75
    :cond_0
    return-void
.end method

.method public setProxy(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 43
    if-eq p1, p0, :cond_0

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/egg/view/ProxyDrawable;->mProxy:Landroid/graphics/drawable/Drawable;

    .line 46
    :cond_0
    return-void
.end method
