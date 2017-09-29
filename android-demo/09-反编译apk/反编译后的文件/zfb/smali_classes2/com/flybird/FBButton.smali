.class public Lcom/flybird/FBButton;
.super Lcom/flybird/FBLabel;
.source "FBButton.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/flybird/FBBorderButton;

    invoke-direct {v0, p1}, Lcom/flybird/FBBorderButton;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBLabel;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/flybird/FBButton;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    .line 19
    iget-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    iget-object v1, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    invoke-static {v1}, Lcom/flybird/FBTools;->genTextSelector([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-super {p0}, Lcom/flybird/FBLabel;->doDestroy()V

    .line 64
    iput-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    .line 66
    return-void
.end method

.method public setSupportEmoji(Z)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    invoke-virtual {v1, v2, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 54
    :goto_0
    return-void

    .line 36
    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 38
    invoke-direct {p0}, Lcom/flybird/FBButton;->a()V

    goto :goto_0

    .line 39
    :cond_1
    const-string/jumbo v0, "color:active"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    iget-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    aput-object p2, v0, v2

    .line 41
    invoke-direct {p0}, Lcom/flybird/FBButton;->a()V

    goto :goto_0

    .line 42
    :cond_2
    const-string/jumbo v0, "color:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    iget-object v0, p0, Lcom/flybird/FBButton;->a:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    .line 44
    invoke-direct {p0}, Lcom/flybird/FBButton;->a()V

    goto :goto_0

    .line 45
    :cond_3
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 46
    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 47
    iget-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 49
    :cond_4
    iget-object v0, p0, Lcom/flybird/FBButton;->b:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 52
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/flybird/FBLabel;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
