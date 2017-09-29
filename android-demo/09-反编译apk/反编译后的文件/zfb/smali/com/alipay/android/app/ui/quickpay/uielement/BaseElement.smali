.class public abstract Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
.super Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private H:F

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Ljava/lang/String;

.field private P:Ljava/lang/String;

.field private Q:Ljava/lang/String;

.field private R:Z

.field private S:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

.field private T:Z

.field private U:[I

.field private V:Ljava/lang/String;

.field private W:Z

.field public a:Ljava/lang/Object;

.field protected b:Ljava/lang/String;

.field protected c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected d:Z

.field protected e:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected f:Z

.field protected g:Ljava/lang/String;

.field protected h:[Ljava/lang/String;

.field protected i:[Ljava/lang/String;

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;-><init>()V

    .line 73
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->d:Z

    .line 75
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->T:Z

    .line 77
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->U:[I

    .line 82
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->W:Z

    .line 83
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->f:Z

    .line 85
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g:Ljava/lang/String;

    .line 93
    const/4 v0, -0x2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->p:I

    .line 94
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->q:I

    .line 95
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->R:Z

    .line 96
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->L:Z

    .line 100
    return-void
.end method

.method protected static a(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 225
    if-nez p0, :cond_0

    move-object v0, v1

    .line 260
    :goto_0
    return-object v0

    .line 229
    :cond_0
    const-string/jumbo v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 230
    new-instance v2, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v2}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 232
    if-eqz v5, :cond_2

    .line 233
    array-length v6, v5

    .line 235
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-ge v4, v6, :cond_2

    .line 236
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a()Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;

    aget-object v0, v5, v4

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/data/CssDataSource;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 238
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v0

    .line 247
    :goto_2
    if-eqz v3, :cond_1

    .line 248
    invoke-virtual {v3}, Lcom/alipay/android/app/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 249
    :goto_3
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 250
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 252
    :try_start_1
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2, v0, v8}, Lcom/alipay/android/app/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/alipay/android/app/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 255
    :catch_0
    move-exception v0

    goto :goto_3

    .line 244
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move-object v3, v1

    goto :goto_2

    .line 235
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 260
    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->R:Z

    return v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->R:Z

    return v0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 390
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 391
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->p()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->w:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c(Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method protected final a(Landroid/widget/TextView;Landroid/content/Context;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 461
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    .line 462
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v8, :cond_2

    .line 463
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h:[Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Landroid/content/Context;[Ljava/lang/String;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    .line 465
    if-eqz v0, :cond_0

    .line 466
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v8, :cond_4

    .line 475
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i:[Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a([Ljava/lang/String;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 477
    if-eqz v0, :cond_1

    .line 478
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 489
    :cond_1
    :goto_1
    return-void

    .line 468
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->z()I

    move-result v2

    iget v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->q:I

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->l:Z

    iget-boolean v7, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->s:Z

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Landroid/view/View;Ljava/lang/String;IILjava/lang/String;Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 471
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 481
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 484
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 128
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 130
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    const-string/jumbo v0, "value"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    .line 137
    :cond_2
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 138
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b:Ljava/lang/String;

    .line 141
    :cond_3
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string/jumbo v0, "filter"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g:Ljava/lang/String;

    .line 145
    :cond_4
    const-string/jumbo v0, "size"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->c(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->H:F

    .line 148
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    const-string/jumbo v0, "color"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    .line 150
    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i:[Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->i:[Ljava/lang/String;

    .line 155
    :cond_5
    const-string/jumbo v0, "tip"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 156
    const-string/jumbo v0, "tip"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->J:Ljava/lang/String;

    .line 158
    :cond_6
    const-string/jumbo v0, "hint"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    const-string/jumbo v0, "hint"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->K:Ljava/lang/String;

    .line 161
    :cond_7
    const-string/jumbo v0, "underline"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 162
    const-string/jumbo v0, "underline"

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->L:Z

    .line 164
    :cond_8
    const-string/jumbo v0, "crossline"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    const-string/jumbo v0, "crossline"

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->M:Z

    .line 167
    :cond_9
    const-string/jumbo v0, "overline"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 168
    const-string/jumbo v0, "overline"

    invoke-virtual {p1, v0, v2}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->N:Z

    .line 170
    :cond_a
    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 171
    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    .line 172
    iput-object v3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h:[Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 174
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 175
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h:[Ljava/lang/String;

    .line 181
    :cond_b
    :goto_1
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 182
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->P:Ljava/lang/String;

    .line 184
    :cond_c
    const-string/jumbo v0, "followView"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    const-string/jumbo v0, "followView"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->Q:Ljava/lang/String;

    .line 188
    :cond_d
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 189
    const-string/jumbo v0, "content"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->V:Ljava/lang/String;

    .line 191
    :cond_e
    const-string/jumbo v0, "onload"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 192
    const-string/jumbo v0, "onload"

    invoke-static {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 194
    :cond_f
    const-string/jumbo v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 195
    const-string/jumbo v0, "cursor"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->T:Z

    .line 199
    :cond_10
    const-string/jumbo v0, "defaultValue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string/jumbo v0, "defaultValue"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->j:Ljava/lang/String;

    goto/16 :goto_0

    .line 177
    :cond_11
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->h:[Ljava/lang/String;

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->S:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 109
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 451
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->W:Z

    .line 452
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/app/Activity;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Z)TT;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    if-nez v2, :cond_3

    .line 337
    iput-boolean p3, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->d:Z

    .line 339
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 340
    const/4 v3, 0x2

    if-ne v3, v2, :cond_1

    .line 341
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->f:Z

    .line 345
    :goto_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->p()I

    move-result v2

    if-eqz v2, :cond_0

    .line 346
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    .line 347
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a(Landroid/view/View;)V

    .line 348
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v2, p3}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 351
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 352
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->B:Z

    if-nez v2, :cond_2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->d(Z)V

    .line 353
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/a;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/a;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 364
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->L()V

    .line 370
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    return-object v0

    .line 343
    :cond_1
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->f:Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 352
    goto :goto_1

    .line 366
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    goto :goto_2
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->S:Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 410
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;->a()V

    .line 412
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->C:Lcom/alipay/android/app/ui/quickpay/event/UIElementOnClickListener;

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    if-eqz v0, :cond_2

    .line 419
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->k:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    .line 421
    :cond_2
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->v:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 422
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 423
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 424
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 119
    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public final g()Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->T:Z

    return v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I:Ljava/lang/String;

    return-object v0
.end method

.method public j()Landroid/view/View;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    return-object v0
.end method

.method public final k()F
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->H:F

    return v0
.end method

.method protected final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->K:Ljava/lang/String;

    return-object v0
.end method

.method protected final m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->O:Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->V:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Lcom/alipay/android/app/json/JSONObject;
    .locals 3

    .prologue
    .line 319
    const/4 v1, 0x0

    .line 321
    :try_start_0
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->P:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 324
    :try_start_1
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method protected abstract p()I
.end method

.method protected q()V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->e:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v0

    invoke-virtual {p0, p0, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 404
    :cond_0
    return-void
.end method

.method public final r()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->q:I

    return v0
.end method

.method public final s()Z
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->L:Z

    return v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 435
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public final u()Landroid/view/View;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c:Landroid/view/View;

    return-object v0
.end method

.method public v()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Z
    .locals 1

    .prologue
    .line 447
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->W:Z

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->Q:Ljava/lang/String;

    return-object v0
.end method
