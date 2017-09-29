.class public abstract Lcom/alipay/android/app/ui/quickpay/window/IUIForm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/android/app/sys/IDispose;
.implements Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Ljava/lang/String;

.field protected D:I

.field protected E:Z

.field protected g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

.field protected h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

.field protected i:Landroid/app/Activity;

.field protected j:Ljava/lang/String;

.field protected k:Z

.field protected l:Ljava/lang/String;

.field protected m:[Ljava/lang/String;

.field protected n:[Ljava/lang/String;

.field protected o:I

.field protected p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected q:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected r:Z

.field protected s:Ljava/lang/Object;

.field protected t:Lcom/alipay/android/app/json/JSONObject;

.field protected u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

.field protected v:Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;

.field protected w:Lcom/alipay/android/app/json/JSONArray;

.field protected x:I

.field protected y:Ljava/lang/String;

.field protected z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k:Z

    .line 49
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->l:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->m:[Ljava/lang/String;

    .line 51
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->n:[Ljava/lang/String;

    .line 52
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o:I

    .line 59
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->t:Lcom/alipay/android/app/json/JSONObject;

    .line 62
    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    .line 63
    iput v3, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->x:I

    .line 67
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->A:Z

    .line 69
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->B:Z

    .line 72
    iput v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->D:I

    .line 73
    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->E:Z

    .line 93
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    .line 94
    return-void
.end method

.method public static d(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 4

    .prologue
    .line 193
    const-string/jumbo v0, "client_key"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tid"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v0, "client_key"

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "tid"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v2

    .line 200
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v3

    .line 201
    invoke-virtual {v3, v1}, Lcom/alipay/android/app/tid/TidInfo;->a(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v3, v0}, Lcom/alipay/android/app/tid/TidInfo;->b(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v3, v2}, Lcom/alipay/android/app/tid/TidInfo;->a(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 101
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->x:I

    .line 102
    return-void
.end method

.method abstract a(Landroid/app/Activity;Landroid/view/ViewGroup;)V
.end method

.method a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 105
    const-string/jumbo v1, "form"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 106
    const-string/jumbo v2, "time"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 108
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->D:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    const-string/jumbo v2, "lua"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string/jumbo v2, "lua"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->C:Ljava/lang/String;

    .line 116
    :cond_0
    const-string/jumbo v2, "menu"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    const-string/jumbo v2, "menu"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->w:Lcom/alipay/android/app/json/JSONArray;

    .line 120
    :cond_1
    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-string/jumbo v2, "height"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->y:Ljava/lang/String;

    .line 124
    :cond_2
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    const-string/jumbo v2, "width"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->z:Ljava/lang/String;

    .line 128
    :cond_3
    const-string/jumbo v2, "onload"

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 129
    const-string/jumbo v2, "onback"

    invoke-static {v1, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Lcom/alipay/android/app/json/JSONObject;Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->q:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    .line 131
    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 132
    const-string/jumbo v2, "exit"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->l:Ljava/lang/String;

    .line 134
    :cond_4
    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 135
    const-string/jumbo v2, "allowBack"

    invoke-virtual {v1, v2}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k:Z

    .line 140
    :goto_1
    const-string/jumbo v0, "keep-background"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->A:Z

    .line 141
    const-string/jumbo v0, "keepre"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->B:Z

    .line 142
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->m:[Ljava/lang/String;

    .line 143
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->n:[Ljava/lang/String;

    .line 144
    const-string/jumbo v0, "confirm"

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_7

    .line 146
    const-string/jumbo v0, "image"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string/jumbo v1, "color"

    invoke-virtual {p1, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 149
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->m:[Ljava/lang/String;

    .line 151
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 152
    const-string/jumbo v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->n:[Ljava/lang/String;

    .line 155
    :cond_7
    return-void

    .line 110
    :catch_0
    move-exception v2

    iput v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->D:I

    goto/16 :goto_0

    .line 138
    :cond_8
    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k:Z

    goto :goto_1
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-static {p1, p2, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->openWalletUri(Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V

    .line 395
    return-void
.end method

.method protected final a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;[Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x4

    const/4 v7, 0x1

    const/4 v5, 0x3

    const/4 v1, 0x0

    .line 257
    const/4 v4, 0x0

    .line 258
    iget-object v0, p1, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->Alert:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    if-ne v0, v2, :cond_1

    .line 260
    array-length v0, p2

    if-le v0, v5, :cond_0

    aget-object v0, p2, v5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    aget-object v0, p2, v5

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v4

    .line 273
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    aget-object v1, p2, v1

    aget-object v2, p2, v7

    const/4 v3, 0x2

    aget-object v3, p2, v3

    const-string/jumbo v5, ""

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    array-length v0, p2

    if-le v0, v3, :cond_3

    aget-object v0, p2, v3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 278
    aget-object v0, p2, v3

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v4

    .line 283
    :cond_2
    :goto_1
    array-length v0, p2

    if-le v0, v6, :cond_4

    aget-object v0, p2, v6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 284
    aget-object v0, p2, v6

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;->a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v6

    .line 290
    :goto_2
    if-eqz v4, :cond_5

    .line 291
    array-length v2, v4

    move v0, v1

    .line 292
    :goto_3
    if-ge v0, v2, :cond_5

    .line 293
    aget-object v3, v4, v0

    invoke-virtual {v3}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->o()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 280
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    if-eqz v0, :cond_2

    .line 281
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->u:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;)[Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    move-result-object v4

    goto :goto_1

    .line 287
    :cond_4
    new-array v6, v7, [Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    new-instance v0, Lcom/alipay/android/app/ui/quickpay/event/ActionType;

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;->LocalDismiss:Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;

    invoke-direct {v0, v2}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType$Type;)V

    aput-object v0, v6, v1

    goto :goto_2

    .line 297
    :cond_5
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    aget-object v1, p2, v1

    aget-object v2, p2, v7

    const/4 v3, 0x2

    aget-object v3, p2, v3

    aget-object v5, p2, v5

    invoke-interface/range {v0 .. v6}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;Ljava/lang/String;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    goto :goto_0
.end method

.method protected abstract a(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V
.end method

.method a(Lcom/alipay/android/app/ui/quickpay/window/IFormShower;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    .line 178
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->s:Ljava/lang/Object;

    .line 311
    return-void
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 322
    :goto_0
    return-void

    .line 318
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i:Landroid/app/Activity;

    const-class v2, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 319
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 320
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected final varargs a([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v0, p1}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a([Ljava/lang/String;)V

    .line 211
    :cond_0
    return-void
.end method

.method protected abstract a(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
.end method

.method public final a(Ljava/lang/Object;[Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 5

    .prologue
    .line 398
    const/4 v1, 0x1

    .line 399
    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p2, v0

    .line 400
    new-instance v4, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;

    invoke-direct {v4, v3}, Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;-><init>(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V

    invoke-virtual {p0, p1, v4}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->a(Ljava/lang/Object;Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)Z

    move-result v3

    and-int/2addr v1, v3

    .line 399
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 402
    :cond_0
    return v1
.end method

.method final b(I)V
    .locals 0

    .prologue
    .line 173
    iput p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->o:I

    .line 174
    return-void
.end method

.method abstract b(Lcom/alipay/android/app/json/JSONObject;)V
.end method

.method protected final b(Lcom/alipay/android/app/ui/quickpay/event/MiniEventArgs;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Ljava/lang/Object;Landroid/app/Activity;)V

    .line 215
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->j:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public final b(Z)V
    .locals 0

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->E:Z

    .line 82
    return-void
.end method

.method protected b(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 234
    new-instance v0, Lcom/alipay/android/app/json/JSONObject;

    invoke-direct {v0}, Lcom/alipay/android/app/json/JSONObject;-><init>()V

    .line 235
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->u()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    .line 237
    if-eqz v1, :cond_0

    .line 238
    invoke-static {v0, v1}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 241
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->g()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/util/JsonUtils;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 242
    new-instance v1, Lcom/alipay/android/app/base/message/MspMessage;

    invoke-direct {v1}, Lcom/alipay/android/app/base/message/MspMessage;-><init>()V

    .line 243
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-virtual {v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->b()I

    move-result v2

    iput v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->a:I

    .line 244
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->a()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/app/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    iput-object v2, v1, Lcom/alipay/android/app/base/message/MspMessage;->d:Ljava/lang/Object;

    .line 246
    const/16 v0, 0xb

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->b:I

    .line 247
    const/16 v0, 0x3eb

    iput v0, v1, Lcom/alipay/android/app/base/message/MspMessage;->c:I

    .line 248
    invoke-static {}, Lcom/alipay/android/app/base/message/MsgSubject;->a()Lcom/alipay/android/app/base/message/MsgSubject;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/base/message/MsgSubject;->b(Lcom/alipay/android/app/base/message/MspMessage;)V

    .line 250
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->g:Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniWindowManager;->a(J)V

    .line 251
    return v4
.end method

.method public final c(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->d()Ljava/util/List;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_1

    .line 410
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 411
    instance-of v2, v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->K()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 413
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 417
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract c()V
.end method

.method abstract c(Lcom/alipay/android/app/json/JSONObject;)V
.end method

.method protected final c(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 325
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 329
    const/4 v0, 0x0

    aget-object v2, v1, v0

    .line 332
    const-string/jumbo v0, "\u670d\u52a1\u534f\u8bae"

    .line 333
    array-length v3, v1

    if-le v3, v4, :cond_1

    .line 334
    aget-object v0, v1, v4

    .line 337
    :cond_1
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i:Landroid/app/Activity;

    const-class v4, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 338
    const-string/jumbo v3, "url"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string/jumbo v2, "title"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected c(Z)Z
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public abstract d()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation
.end method

.method protected final d(Lcom/alipay/android/app/ui/quickpay/event/ActionType;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 344
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->i:Landroid/app/Activity;

    invoke-static {v0}, Lcom/alipay/android/app/sys/DeviceInfo;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 345
    invoke-virtual {p1}, Lcom/alipay/android/app/ui/quickpay/event/ActionType;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 347
    const/4 v0, 0x0

    aget-object v2, v1, v0

    .line 348
    const/4 v0, 0x1

    aget-object v3, v1, v0

    .line 349
    const/4 v0, 0x0

    .line 350
    const-string/jumbo v4, "loginpwd"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 351
    const-string/jumbo v0, "20000015"

    .line 357
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    const-string/jumbo v4, "alipays://platformapi/startApp?appId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "&sourceId=trustedMsp&logonId="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "&fromWhich="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    array-length v0, v1

    if-le v0, v5, :cond_1

    .line 363
    aget-object v0, v1, v5

    .line 364
    const-string/jumbo v1, "&userId="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 368
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 370
    const-string/jumbo v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 371
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Landroid/content/Intent;)V

    .line 378
    :goto_1
    return-void

    .line 352
    :cond_2
    const-string/jumbo v4, "paypwd"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 353
    const-string/jumbo v0, "20000013"

    goto :goto_0

    .line 354
    :cond_3
    const-string/jumbo v4, "simplepwd"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 355
    const-string/jumbo v0, "20000060"

    goto :goto_0

    .line 373
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    const-string/jumbo v1, "https://d.alipay.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 376
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->h:Lcom/alipay/android/app/ui/quickpay/window/IFormShower;

    invoke-interface {v1, v0}, Lcom/alipay/android/app/ui/quickpay/window/IFormShower;->a(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method protected g()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->s:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->s:Ljava/lang/Object;

    instance-of v0, v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->s:Ljava/lang/Object;

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;

    .line 305
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIButton;->N()V

    .line 307
    :cond_0
    return-void
.end method

.method abstract i()V
.end method

.method abstract j()V
.end method

.method public abstract k()V
.end method

.method abstract l()V
.end method

.method protected abstract m()Lcom/alipay/android/app/ui/quickpay/window/UISubForm;
.end method

.method public final n()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->E:Z

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->A:Z

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->B:Z

    return v0
.end method

.method final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->k:Z

    return v0
.end method

.method protected final s()Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/IUIForm;->p:Lcom/alipay/android/app/ui/quickpay/uielement/ElementAction;

    return-object v0
.end method

.method protected abstract t()Z
.end method

.method protected abstract u()Lcom/alipay/android/app/json/JSONObject;
.end method
