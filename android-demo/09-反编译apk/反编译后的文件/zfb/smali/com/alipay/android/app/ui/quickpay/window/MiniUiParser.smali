.class public Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation
.end field

.field b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation
.end field

.field private e:Lcom/alipay/android/app/json/JSONObject;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->g:Z

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    .line 51
    return-void
.end method

.method private a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-static {p1}, Lcom/alipay/android/app/ui/quickpay/util/JsonUtil;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object p1

    .line 107
    :cond_0
    return-object p1
.end method

.method private static a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/json/JSONObject;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;",
            "Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;",
            ")",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 74
    if-nez p0, :cond_1

    .line 75
    const/4 v0, 0x0

    .line 81
    :cond_0
    :goto_0
    return-object v0

    .line 77
    :cond_1
    invoke-static {p2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementFactory;->a(Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    .line 78
    if-eqz p1, :cond_0

    .line 79
    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    goto :goto_0
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONArray;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    move v1, v2

    .line 213
    :goto_0
    if-ge v1, v3, :cond_2

    .line 214
    invoke-virtual {p2, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 215
    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 216
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 218
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 219
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 213
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 222
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 223
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v4

    .line 224
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONArray;)V

    .line 225
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 227
    :cond_1
    invoke-direct {p0, p1, v4, v2}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;I)V

    goto :goto_1

    .line 230
    :cond_2
    return-void
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 6

    .prologue
    .line 164
    const-string/jumbo v0, "value"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v2

    .line 165
    if-nez v2, :cond_1

    .line 193
    :cond_0
    return-void

    .line 168
    :cond_1
    invoke-virtual {v2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v3

    .line 169
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 170
    invoke-virtual {v2, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 171
    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 172
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Component:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 174
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 175
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lcom/alipay/android/app/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lcom/alipay/android/app/json/JSONArray;

    move-result-object v4

    .line 176
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONArray;)V

    .line 177
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 178
    :cond_2
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    :cond_3
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    .line 180
    invoke-static {v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d(Lcom/alipay/android/app/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 181
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Cell:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    .line 183
    :cond_4
    invoke-static {v4, p1, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 184
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 185
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    goto :goto_1

    .line 188
    :cond_5
    const/4 v0, 0x1

    invoke-direct {p0, p1, v4, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;I)V

    goto :goto_1
.end method

.method private a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;I)V
    .locals 4

    .prologue
    .line 241
    const-string/jumbo v0, "parseElement start "

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->f(Ljava/lang/String;)V

    .line 242
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    invoke-static {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    move-result-object v1

    .line 244
    if-nez v1, :cond_0

    .line 245
    new-instance v1, Lcom/alipay/android/app/exception/AppErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u65e0\u6cd5\u5904\u7406\u7684\u5143\u7d20\u7c7b\u578b"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x20

    invoke-static {v0, v2}, Lcom/alipay/android/app/util/ExceptionUtils;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    invoke-static {p2, p1, v1}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 251
    if-eqz v0, :cond_4

    .line 252
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->g:Z

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b(Z)V

    .line 253
    iget-boolean v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    invoke-virtual {v0, v2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->c(Z)V

    .line 254
    invoke-virtual {v0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;)V

    .line 257
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 258
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->y()V

    .line 260
    :cond_1
    invoke-virtual {v0, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 261
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->K()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a()Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->K()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/alipay/android/app/ui/quickpay/util/MarqueeManager;->a(Ljava/lang/String;Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;)V

    .line 263
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    if-nez v2, :cond_3

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v1, v2, :cond_2

    sget-object v2, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-ne v1, v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I()I

    move-result v1

    if-nez v1, :cond_3

    .line 268
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 270
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V

    .line 271
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->e:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->b(Lcom/alipay/android/app/json/JSONObject;)V

    return-void

    .line 273
    :cond_4
    new-instance v0, Lcom/alipay/android/app/exception/AppErrorException;

    const-string/jumbo v1, "element type is null,resp data error"

    invoke-direct {v0, v1}, Lcom/alipay/android/app/exception/AppErrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->f:Z

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->c(Z)V

    .line 197
    invoke-virtual {p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;)V

    .line 199
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->e:Lcom/alipay/android/app/json/JSONObject;

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Lcom/alipay/android/app/json/JSONObject;)V

    .line 200
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->g:Z

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->b(Z)V

    .line 201
    return-void
.end method

.method private static b(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 287
    const-string/jumbo v0, "component"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    const/4 v0, 0x1

    .line 290
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 294
    const-string/jumbo v0, "block"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    const/4 v0, 0x1

    .line 297
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Lcom/alipay/android/app/json/JSONObject;)Z
    .locals 2

    .prologue
    .line 301
    const-string/jumbo v0, "cell"

    const-string/jumbo v1, "type"

    invoke-virtual {p0, v1}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    return-object v0
.end method

.method public final a(Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;Lcom/alipay/android/app/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;",
            "Lcom/alipay/android/app/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 138
    if-nez p2, :cond_0

    move-object v0, v2

    .line 152
    :goto_0
    return-object v0

    .line 141
    :cond_0
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b:Lcom/alipay/android/app/ui/quickpay/event/OnElementEventListener;

    .line 142
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Lcom/alipay/android/app/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 144
    invoke-virtual {p2, v1}, Lcom/alipay/android/app/json/JSONArray;->optJSONObject(I)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    .line 145
    invoke-direct {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;)Lcom/alipay/android/app/json/JSONObject;

    move-result-object v4

    .line 146
    sget-object v0, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Block:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    invoke-static {v4, v2, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;)Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;

    .line 147
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->b(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 148
    invoke-direct {p0, v0, v4}, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a(Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;Lcom/alipay/android/app/json/JSONObject;)V

    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIComponet;->K()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 152
    goto :goto_0
.end method

.method public final b()Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return-object v0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;

    .line 90
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/IUIElement;->J()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->a(Ljava/lang/String;)Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    move-result-object v2

    .line 91
    check-cast v0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 92
    sget-object v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Input:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->Password:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;->SimplePassword:Lcom/alipay/android/app/ui/quickpay/uielement/ElementType;

    if-ne v2, v3, :cond_2

    :cond_3
    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->I()I

    move-result v2

    if-nez v2, :cond_2

    .line 95
    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    .line 100
    :cond_4
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniUiParser;->d:Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;

    goto :goto_0
.end method
