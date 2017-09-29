.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;
.super Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;-><init>()V

    return-void
.end method


# virtual methods
.method protected final O()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->P()V

    .line 34
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->f()V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->j()Landroid/view/View;

    move-result-object v0

    .line 37
    if-nez v0, :cond_1

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final bridge synthetic a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 15
    check-cast p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    return-void
.end method

.method protected final a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V
    .locals 2

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a(Landroid/app/Activity;Landroid/widget/LinearLayout;)V

    .line 50
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->m()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "mini_input_layout"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 52
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 53
    const-string/jumbo v1, "minpwd_red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-string/jumbo v0, "mini_ui_input_bg_red"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->e(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->c(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIPassword;->I()I

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIInput;->a()Z

    move-result v0

    goto :goto_0
.end method

.method protected final p()I
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "mini_ui_password"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
