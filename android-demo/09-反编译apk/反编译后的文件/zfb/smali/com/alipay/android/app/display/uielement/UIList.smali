.class public Lcom/alipay/android/app/display/uielement/UIList;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IUIElement;
.implements Lcom/alipay/android/app/display/uielement/IUIElementContainer;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/display/uielement/IUIElement;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/ViewGroup;

.field private c:Ljava/lang/String;

.field private d:Lcom/alipay/android/app/json/JSONArray;

.field private e:Lcom/alipay/android/app/display/uielement/ElementStyle;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    .line 35
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 102
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "msp_panel_vertical"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    .line 105
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/alipay/android/app/display/uielement/ElementFactory;->a(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Landroid/view/View;)V

    .line 109
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/uielement/IUIElement;

    .line 111
    iget-object v2, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    invoke-interface {v0, p1, v3}, Lcom/alipay/android/app/display/uielement/IUIElement;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->b:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    .prologue
    .line 89
    sget-object v0, Lcom/alipay/android/app/display/uielement/ElementType;->List:Lcom/alipay/android/app/display/uielement/ElementType;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 161
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 0

    .prologue
    .line 132
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/uielement/IUIElement;)V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 148
    return-void
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 2

    .prologue
    .line 57
    const-string/jumbo v0, "component"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->c:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "ds"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 60
    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->d:Lcom/alipay/android/app/json/JSONArray;

    .line 62
    :cond_0
    return-void
.end method

.method public final b()Lcom/alipay/android/app/display/uielement/ElementType;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/display/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/uielement/ElementType;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lcom/alipay/android/app/json/JSONArray;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->d:Lcom/alipay/android/app/json/JSONArray;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/UIList;->e:Lcom/alipay/android/app/display/uielement/ElementStyle;

    return-object v0
.end method
