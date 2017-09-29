.class public Lcom/alipay/mobile/nebulacore/view/H5Toast;
.super Ljava/lang/Object;
.source "H5Toast.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;II)V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {p0, v0, p2}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 51
    return-void
.end method

.method public static showToast(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 25
    const/16 v3, 0x11

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, v4

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/alipay/mobile/nebulacore/view/H5Toast;->showToast(Landroid/content/Context;ILjava/lang/String;IIII)V

    .line 26
    return-void
.end method

.method public static showToast(Landroid/content/Context;ILjava/lang/String;IIII)V
    .locals 3

    .prologue
    .line 30
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 31
    sget v1, Lcom/alipay/mobile/nebulacore/R$layout;->h5_toast:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 32
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->mini_toast_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 33
    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    :goto_0
    sget v0, Lcom/alipay/mobile/nebulacore/R$id;->mini_toast_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 41
    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0, p3, p4, p5}, Landroid/widget/Toast;->setGravity(III)V

    .line 43
    invoke-virtual {v0, p6}, Landroid/widget/Toast;->setDuration(I)V

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 46
    return-void

    .line 36
    :cond_0
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 56
    return-void
.end method
