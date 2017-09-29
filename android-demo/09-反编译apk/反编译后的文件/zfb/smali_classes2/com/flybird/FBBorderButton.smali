.class public Lcom/flybird/FBBorderButton;
.super Landroid/widget/Button;
.source "FBBorderButton.java"

# interfaces
.implements Lcom/flybird/IBorderable;


# instance fields
.field private a:Lcom/flybird/BorderHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 24
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 19
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 14
    new-instance v0, Lcom/flybird/BorderHelper;

    invoke-direct {v0}, Lcom/flybird/BorderHelper;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 15
    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0}, Lcom/flybird/BorderHelper;->destory()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    .line 56
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    .line 47
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->draw(Landroid/graphics/Canvas;)V

    .line 50
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->clipBorder(Landroid/graphics/Canvas;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 41
    return-void
.end method

.method public setBorder(II)V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1, p2}, Lcom/flybird/BorderHelper;->setBorder(II)V

    .line 33
    return-void
.end method

.method public setBorderRadius(I)V
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/flybird/FBBorderButton;->a:Lcom/flybird/BorderHelper;

    invoke-virtual {v0, p1}, Lcom/flybird/BorderHelper;->setBorderadius(I)V

    .line 29
    return-void
.end method
