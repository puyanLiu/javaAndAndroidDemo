.class public Lcom/flybird/FBCheckbox;
.super Lcom/flybird/FBView;
.source "FBCheckbox.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field private a:Landroid/widget/CheckBox;

.field private b:Z

.field private k:Landroid/graphics/drawable/StateListDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/flybird/FBCheckbox;->b:Z

    .line 17
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    iput-object v0, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    .line 22
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mView:Landroid/view/View;

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    .line 23
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 24
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    new-instance v1, Lcom/flybird/FBCheckbox$1;

    invoke-direct {v1, p0}, Lcom/flybird/FBCheckbox$1;-><init>(Lcom/flybird/FBCheckbox;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lcom/flybird/FBCheckbox;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/flybird/FBCheckbox;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/flybird/FBCheckbox;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 108
    iput-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    .line 109
    iput-object v0, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    .line 110
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 98
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->onFocusChange(Landroid/view/View;Z)V

    .line 100
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->mView:Landroid/view/View;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/flybird/FBCheckbox;->f:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {p0, p1}, Lcom/flybird/FBCheckbox;->onClick(Landroid/view/View;)V

    .line 103
    :cond_0
    return-void
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    const-string/jumbo v2, "checked"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    iput-boolean v0, p0, Lcom/flybird/FBCheckbox;->b:Z

    .line 87
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 88
    iput-boolean v1, p0, Lcom/flybird/FBCheckbox;->b:Z

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    const-string/jumbo v2, "disabled"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 92
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v1, -0x1

    .line 43
    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    const-string/jumbo v0, "px"

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v0}, Landroid/widget/CheckBox;->setTextSize(IF)V

    .line 81
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    invoke-static {p2}, Lcom/flybird/FBTools;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTextColor(I)V

    goto :goto_0

    .line 49
    :cond_1
    const-string/jumbo v0, "font-weight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 50
    const-string/jumbo v0, "bold"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    goto :goto_0

    .line 55
    :cond_3
    const-string/jumbo v0, "background-image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 56
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 59
    :cond_4
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-static {p2, v0, v1, v1}, Lcom/alipay/android/app/template/util/UiUtil;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 62
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 63
    :cond_5
    const-string/jumbo v0, "background-image:checked"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 64
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 67
    :cond_6
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-static {p2, v0, v1, v1}, Lcom/alipay/android/app/template/util/UiUtil;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    fill-array-data v2, :array_1

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 69
    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 70
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 71
    :cond_7
    const-string/jumbo v0, "background-image:disabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 72
    const-string/jumbo v0, "url"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 73
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 75
    :cond_8
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-static {p2, v0, v1, v1}, Lcom/alipay/android/app/template/util/UiUtil;->getLocalDrawable(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    new-array v2, v2, [I

    const v3, -0x101009e

    aput v3, v2, v4

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v0, p0, Lcom/flybird/FBCheckbox;->a:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/flybird/FBCheckbox;->k:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 79
    :cond_9
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 60
    :array_0
    .array-data 4
        0x101009e
        -0x10100a0
        -0x101009c
    .end array-data

    .line 68
    :array_1
    .array-data 4
        0x101009e
        0x10100a0
    .end array-data

    .line 69
    :array_2
    .array-data 4
        0x101009e
        0x101009c
    .end array-data
.end method
