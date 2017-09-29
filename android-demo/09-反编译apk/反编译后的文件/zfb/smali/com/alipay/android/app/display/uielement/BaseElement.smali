.class public abstract Lcom/alipay/android/app/display/uielement/BaseElement;
.super Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;

# interfaces
.implements Lcom/alipay/android/app/display/uielement/IUIElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;",
        "Lcom/alipay/android/app/display/uielement/IUIElement;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/app/display/uielement/ElementStyle;

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alipay/android/app/display/event/OnElementEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/app/display/event/EventType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 53
    invoke-direct {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;-><init>()V

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->g:I

    .line 54
    iput v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->h:I

    .line 55
    iput v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->i:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->j:Z

    .line 57
    new-instance v0, Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-direct {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/display/uielement/BaseElement;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->o()I

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->o()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 158
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->b(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->i:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->c(Landroid/view/View;)V

    .line 162
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {p0, p1, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V

    .line 164
    iget-boolean v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->j:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/display/uielement/o;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/display/uielement/o;-><init>(Lcom/alipay/android/app/display/uielement/BaseElement;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 165
    :cond_2
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->b()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Landroid/os/Handler;I)V

    .line 166
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a_()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->g()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->c(Landroid/os/Handler;Z)V

    .line 170
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    return-object v0
.end method

.method protected final a(Lcom/alipay/android/app/display/event/EventType;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 234
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 126
    iput p1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->g:I

    .line 127
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Landroid/view/View;Lcom/alipay/android/app/display/uielement/ElementStyle;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;",
            "Lcom/alipay/android/app/display/uielement/ElementStyle;",
            ")V"
        }
    .end annotation
.end method

.method protected a(Landroid/os/Handler;I)V
    .locals 2

    .prologue
    .line 296
    const-string/jumbo v0, "visible"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    .line 298
    new-instance v1, Lcom/alipay/android/app/display/uielement/p;

    invoke-direct {v1, p0, p2, v0}, Lcom/alipay/android/app/display/uielement/p;-><init>(Lcom/alipay/android/app/display/uielement/BaseElement;ILcom/alipay/android/app/display/event/MspEventArgs;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 308
    return-void
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/view/View;)V

    .line 266
    :cond_0
    return-void
.end method

.method protected final a(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 245
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/display/uielement/BaseElement;->b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 246
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/display/event/EventType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 322
    if-nez p1, :cond_0

    .line 329
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/android/app/display/event/MspEventArgs;)V
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->e:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/display/event/OnElementEventListener;

    invoke-interface {v0, p0, p1}, Lcom/alipay/android/app/display/event/OnElementEventListener;->a(Lcom/alipay/android/app/display/uielement/IUIElement;Lcom/alipay/android/app/display/event/MspEventArgs;)Z

    .line 222
    :cond_0
    return-void
.end method

.method public final a(Lcom/alipay/android/app/display/event/OnElementEventListener;)V
    .locals 1

    .prologue
    .line 205
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->e:Ljava/lang/ref/WeakReference;

    .line 206
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/json/JSONArray;)V
    .locals 4

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 123
    :cond_0
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    .line 110
    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 111
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    const-string/jumbo v2, "name"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    const-string/jumbo v3, "script"

    invoke-virtual {v1, v3}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    invoke-static {v2}, Lcom/alipay/android/app/display/event/EventType;->a(Ljava/lang/String;)Lcom/alipay/android/app/display/event/EventType;

    move-result-object v2

    .line 119
    if-eqz v2, :cond_2

    .line 120
    iget-object v3, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 68
    const-string/jumbo v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->a:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "format"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->b:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "text"

    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 71
    const-string/jumbo v0, "value"

    const-string/jumbo v1, "value"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    const-string/jumbo v0, "checked"

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "checked"

    invoke-virtual {p1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    const-string/jumbo v0, "toast_message"

    const-string/jumbo v1, "toast_message"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    const-string/jumbo v0, "false"

    const-string/jumbo v1, "visible"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    const-string/jumbo v0, "visible"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    :goto_0
    const-string/jumbo v0, "false"

    const-string/jumbo v1, "enable"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 80
    const-string/jumbo v0, "enable"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    :goto_1
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string/jumbo v0, "events"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONArray;)V

    .line 88
    :cond_0
    const-string/jumbo v0, "styles"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    const-string/jumbo v0, "styles"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 92
    :cond_1
    return-void

    .line 77
    :cond_2
    const-string/jumbo v0, "visible"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_3
    const-string/jumbo v0, "enable"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected final b(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 255
    :goto_0
    return-void

    .line 252
    :cond_0
    const-string/jumbo v0, "text/html"

    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    invoke-virtual {v1, p1, p2, v0}, Lcom/alipay/android/app/display/uielement/ElementStyle;->a(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method protected c(Landroid/os/Handler;Z)V
    .locals 2

    .prologue
    .line 312
    const-string/jumbo v0, "enable"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Lcom/alipay/android/app/display/event/MspEventArgs;

    sget-object v1, Lcom/alipay/android/app/display/event/EventType;->Change:Lcom/alipay/android/app/display/event/EventType;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/display/event/MspEventArgs;-><init>(Lcom/alipay/android/app/display/event/EventType;)V

    .line 315
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    .line 318
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/alipay/android/app/display/uielement/BaseAttrScriptable;->dispose()V

    .line 380
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 383
    :cond_0
    return-void
.end method

.method public getById(Ljava/lang/String;)Lcom/alipay/android/app/script/IDocumentScriptable;
    .locals 0

    .prologue
    .line 291
    return-object p0
.end method

.method protected final k()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->g:I

    return v0
.end method

.method protected final l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/app/display/event/EventType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final n()Lcom/alipay/android/app/display/uielement/ElementStyle;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->d:Lcom/alipay/android/app/display/uielement/ElementStyle;

    return-object v0
.end method

.method protected abstract o()I
.end method

.method protected final p()V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->j:Z

    .line 277
    return-void
.end method

.method protected q()V
    .locals 0

    .prologue
    .line 284
    return-void
.end method

.method protected final r()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 332
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    if-nez v0, :cond_0

    move v0, v2

    .line 355
    :goto_0
    return v0

    .line 335
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->g()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    .line 336
    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0}, Lcom/alipay/android/app/display/uielement/BaseElement;->b()I

    move-result v0

    if-lez v0, :cond_2

    move v0, v3

    .line 339
    goto :goto_0

    .line 341
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    .line 342
    goto :goto_0

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/display/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 345
    :goto_1
    if-eqz v1, :cond_6

    .line 346
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    move-object v0, v1

    .line 347
    check-cast v0, Landroid/view/ViewGroup;

    .line 348
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_5

    :cond_4
    move v0, v3

    .line 350
    goto :goto_0

    .line 353
    :cond_5
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_6
    move v0, v2

    .line 355
    goto :goto_0
.end method

.method protected final s()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/alipay/android/app/display/uielement/q;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/display/uielement/q;-><init>(Lcom/alipay/android/app/display/uielement/BaseElement;)V

    .line 375
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/display/uielement/BaseElement;->a(Lcom/alipay/android/app/display/event/MspEventArgs;)V

    .line 376
    return-void
.end method
