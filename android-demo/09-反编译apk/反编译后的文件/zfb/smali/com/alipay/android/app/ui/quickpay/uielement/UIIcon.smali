.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Landroid/view/View;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    .line 27
    return-void
.end method

.method private M()V
    .locals 9

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->m()Ljava/lang/String;

    move-result-object v1

    .line 94
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->z()I

    move-result v2

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->r()I

    move-result v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->l:Z

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->j:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->s:Z

    invoke-static/range {v0 .. v8}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZZ)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->M()V

    return-void
.end method


# virtual methods
.method protected final L()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->a(Landroid/view/View;)V

    .line 52
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->F()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_0

    .line 53
    :cond_2
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/q;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;)V

    .line 69
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->a(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 42
    iput-object p2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    .line 43
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->M()V

    .line 44
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 32
    return-void
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->attr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 77
    if-nez v0, :cond_0

    .line 78
    const/4 v1, 0x1

    .line 79
    const-string/jumbo v0, "tips"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    instance-of v0, v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    if-eqz v0, :cond_2

    .line 81
    new-instance v2, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;

    invoke-direct {v2}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;-><init>()V

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/window/AbstractUIForm;->a()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    invoke-virtual {v2, v0, v3, p2}, Lcom/alipay/android/app/ui/quickpay/util/ViewTipsUtils;->a(Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;)V

    move v0, v1

    .line 89
    :cond_0
    :goto_0
    return v0

    .line 86
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 113
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIIcon;->H:Landroid/view/View;

    .line 115
    return-void
.end method

.method protected final p()I
    .locals 1

    .prologue
    .line 36
    const-string/jumbo v0, "mini_ui_image"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
