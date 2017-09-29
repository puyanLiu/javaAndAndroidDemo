.class public Lcom/flybird/FBBorderText;
.super Lcom/alipay/android/app/template/view/TextViewWrapper;
.source "FBBorderText.java"

# interfaces
.implements Lcom/flybird/IBorderable;


# instance fields
.field private a:Lcom/flybird/BorderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/alipay/android/app/template/view/TextViewWrapper;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    .line 14
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    .line 15
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0}, Lcom/flybird/BorderHelper;->destory()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    .line 46
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/TextViewWrapper;->draw(Landroid/graphics/Canvas;)V

    .line 37
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->draw(Landroid/graphics/Canvas;)V

    .line 40
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->clipBorder(Landroid/graphics/Canvas;)V

    .line 30
    :cond_0
    invoke-super {p0, p1}, Lcom/alipay/android/app/template/view/TextViewWrapper;->onDraw(Landroid/graphics/Canvas;)V

    .line 31
    return-void
.end method

.method public setBorder(II)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/flybird/BorderHelper;->setBorder(II)V

    .line 23
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/flybird/FBBorderText;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->setBorderadius(I)V

    .line 19
    return-void
.end method
