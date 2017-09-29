.class public Lcom/alipay/android/app/display/uielement/UINavigator;
.super Lcom/alipay/android/app/display/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/display/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;-><init>()V

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->Navigator:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .locals 3

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/UINavigator;->d()Ljava/lang/String;

    move-result-object v1

    .line 65
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const-string/jumbo v0, "title_img"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 67
    const-string/jumbo v0, "title_name"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UINavigator;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/UINavigator;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V

    .line 35
    const-string/jumbo v0, "middle"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 36
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    :goto_0
    const-string/jumbo v1, "text"

    invoke-virtual {p0, v1, v0}, Lcom/alipay/android/app/display/uielement/UINavigator;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void

    .line 36
    :cond_0
    const-string/jumbo v1, "text"

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final o()I
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "msp_ui_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
