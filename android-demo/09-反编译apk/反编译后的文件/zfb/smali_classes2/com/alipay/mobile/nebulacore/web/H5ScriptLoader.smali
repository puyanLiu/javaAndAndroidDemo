.class public Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;
.super Ljava/lang/Object;
.source "H5ScriptLoader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "H5ScriptLoader"


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Z

.field public bizLoaded:Z

.field public bridgeLoaded:Z

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 49
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 50
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 51
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getParams()Landroid/os/Bundle;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "publicId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->f:Ljava/lang/String;

    .line 53
    const-string/jumbo v1, "appId"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->e:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    .line 56
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    .line 57
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    .line 58
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->toJSONObject(Landroid/os/Bundle;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 59
    const-string/jumbo v1, "bizScenario"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    const-string/jumbo v2, "scanApp"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    .line 63
    :cond_0
    const-string/jumbo v1, "startupParams"

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method private a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 16

    .prologue
    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 225
    const-string/jumbo v1, "h5_dsRules"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 227
    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    :cond_0
    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v2, "no config found for dynamic script"

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v9

    .line 233
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    :cond_2
    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v2, "invalid dynamic script."

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_3
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-lt v2, v1, :cond_4

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v7

    .line 260
    const-string/jumbo v3, "H5ScriptLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "load dynamic delta time "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_4
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    .line 240
    const/4 v4, 0x0

    .line 242
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-eqz v1, :cond_5

    if-eqz v10, :cond_5

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const/4 v1, 0x0

    .line 247
    :goto_2
    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 248
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 251
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_12

    .line 238
    :cond_7
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 242
    :cond_8
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Lcom/alibaba/fastjson/JSONObject;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_a

    move-object v1, v3

    goto :goto_2

    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v10, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_b

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_b
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 243
    :catch_0
    move-exception v1

    .line 244
    const-string/jumbo v3, "H5ScriptLoader"

    const-string/jumbo v5, "parse dynamic script exception."

    invoke-static {v3, v5, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v4

    goto :goto_2

    .line 242
    :cond_c
    const/4 v5, 0x0

    move v6, v5

    :goto_5
    :try_start_2
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    if-ge v6, v5, :cond_9

    invoke-virtual {v12, v6}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    const-string/jumbo v13, "appId"

    invoke-static {v5, v13}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "publicId"

    invoke-static {v5, v14}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "url"

    invoke-static {v5, v15}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->e:Ljava/lang/String;

    invoke-static {v15, v13}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_d
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->f:Ljava/lang/String;

    invoke-static {v13, v14}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    :cond_e
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->g:Ljava/lang/String;

    invoke-static {v13, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    const/4 v5, 0x1

    :goto_6
    if-eqz v5, :cond_11

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :cond_10
    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_5

    .line 248
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 252
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 253
    const-string/jumbo v4, "H5ScriptLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "load dynamic script "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "var jsref=document.createElement(\'script\');jsref.setAttribute(\"type\",\"text/javascript\");jsref.setAttribute(\"src\", \""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "\");document.getElementsByTagName(\"head\")[0].appendChild(jsref)"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "javascript:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private static a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 323
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 324
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 325
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public composeBridge()Ljava/lang/String;
    .locals 7

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v0, :cond_0

    .line 153
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "bridge already loaded!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v3, 0x0

    .line 183
    :goto_0
    return-object v3

    .line 156
    :cond_0
    const-string/jumbo v0, "H5ScriptLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "composeBridge "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 158
    sget v0, Lcom/alipay/mobile/nebulacore/R$raw;->h5_bridge:I

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v3

    .line 159
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "no bridge data defined!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    const-string/jumbo v4, "AlipayJSBridge.startupParams=\'{startupParams}\'"

    .line 165
    const-string/jumbo v0, ""

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v2, v0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 172
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;->WINDOW_PROMPT:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    if-ne v1, v2, :cond_2

    .line 180
    const-string/jumbo v1, "var messenger = window.__alipayConsole__ || window.console, log = messenger.log"

    .line 181
    const-string/jumbo v2, "var messenger = window, log = window.prompt"

    .line 180
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    move-object v3, v0

    .line 183
    goto :goto_0

    .line 166
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ";AlipayJSBridge."

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 175
    :cond_4
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "no params data defined!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_2
.end method

.method public loadScript()Z
    .locals 11

    .prologue
    const/4 v0, 0x1

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    if-nez v1, :cond_0

    .line 78
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "invalid web view parameter!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->g:Ljava/lang/String;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 84
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    monitor-enter v4

    .line 85
    :try_start_0
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-eqz v1, :cond_1

    .line 86
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    .line 89
    :cond_1
    :try_start_1
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-nez v1, :cond_2

    .line 91
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->composeBridge()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "H5ScriptLoader"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "bridgeStr "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "javascript:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v7, "bridge data loaded!"

    invoke-static {v1, v7}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-string/jumbo v1, "H5ScriptLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "load bridge delta time "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_2
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    if-nez v1, :cond_3

    .line 95
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 97
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v5, Lcom/alipay/mobile/nebulacore/R$raw;->h5_performance:I

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 100
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v5, Lcom/alipay/mobile/nebulacore/R$raw;->h5location_min:I

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v5, Lcom/alipay/mobile/nebulacore/R$raw;->h5_share:I

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget-boolean v5, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-nez v5, :cond_4

    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v5, "weinre only work for debug package."

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 112
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->b:Z

    if-eqz v1, :cond_3

    .line 113
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    sget v5, Lcom/alipay/mobile/nebulacore/R$raw;->h5_scan:I

    invoke-static {v5}, Lcom/alipay/mobile/nebulacore/global/H5ResourceManager;->getRaw(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 84
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v1, v4, v2

    .line 118
    const-string/jumbo v3, "H5ScriptLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "load javascript elapse ["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :cond_4
    :try_start_2
    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "weinre_enable"

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v5, "weinre feature not enabled"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string/jumbo v8, "weinre_server"

    invoke-static {v5, v8}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getConfigString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "weinre_port"

    invoke-static {v5, v9}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getConfigString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v5

    :try_start_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    if-gtz v5, :cond_7

    :cond_6
    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v5, "invalid weinre settings!"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v5, "H5ScriptLoader"

    const-string/jumbo v6, "load weinre exception"

    invoke-static {v5, v6, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "http://"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "/target/target-script-min.js:clientIP"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "(function(){var js=document.createElement(\'script\');js.src=\'"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "\';document.body.appendChild(js);})();"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "javascript:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    const-string/jumbo v1, "H5ScriptLoader"

    const-string/jumbo v5, "weinre data loaded!"

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v8, v6

    const-string/jumbo v1, "H5ScriptLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "load weinre delta time "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method

.method public resetBridge()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 71
    const-string/jumbo v0, "H5ScriptLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "resetBridge "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bizLoaded:Z

    .line 73
    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    .line 74
    return-void
.end method

.method public setParamsToWebPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v1, "invalid js parameters!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->bridgeLoaded:Z

    if-nez v0, :cond_2

    .line 130
    const-string/jumbo v0, "H5ScriptLoader"

    const-string/jumbo v2, "bridge not loaded."

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 133
    :cond_2
    :try_start_1
    const-string/jumbo v0, "H5ScriptLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setParamsToWebPage [key] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " [value] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5ScriptLoader;->d:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "javascript:if(typeof AlipayJSBridge === \'object\'){AlipayJSBridge."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v0, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    .line 127
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
