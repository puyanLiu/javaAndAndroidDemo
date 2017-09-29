.class public Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;
.super Ljava/lang/Object;
.source "GCanvasBridgeManager.java"


# static fields
.field private static a:Lcom/taobao/gcanvas/GCanvas;

.field private static b:Lcom/taobao/gcanvas/GUtil;

.field private static c:Lcom/taobao/gcanvas/GAudioHandler;


# instance fields
.field private d:Lcom/taobao/gcanvas/GCanvasWebView;

.field private e:Lcom/alipay/mobile/nebula/webview/APWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    .line 28
    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->b:Lcom/taobao/gcanvas/GUtil;

    .line 30
    sput-object v0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->c:Lcom/taobao/gcanvas/GAudioHandler;

    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/taobao/gcanvas/GCanvasWebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->d:Lcom/taobao/gcanvas/GCanvasWebView;

    .line 38
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->e:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 39
    return-void
.end method

.method public static call2Js(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 2

    .prologue
    .line 182
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz p1, :cond_2

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_0
    :goto_0
    invoke-interface {p2, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 191
    :cond_1
    return-void

    .line 186
    :cond_2
    if-eqz p1, :cond_0

    const-string/jumbo v1, "{"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "javascript: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public doBridgeFunction(Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 79
    .line 83
    const-string/jumbo v1, ""

    .line 84
    const-string/jumbo v2, ""

    .line 86
    const-string/jumbo v0, "gcanvas://(\\w+)/(\\w+)\\?params=([\\s\\S]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 87
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 91
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :try_start_0
    const-string/jumbo v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 99
    const-string/jumbo v0, "success_callback"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "success_callback"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 102
    :cond_0
    const-string/jumbo v0, "fail_callback"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 103
    const-string/jumbo v0, "fail_callback"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    :try_start_1
    const-string/jumbo v2, "message"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string/jumbo v2, "message"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v2

    move-object v8, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v8

    .line 112
    :goto_1
    const-string/jumbo v6, "showGCanvas"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "disable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 113
    sget-object v6, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    invoke-virtual {v6}, Lcom/taobao/gcanvas/GCanvas;->isPaused()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 160
    :cond_1
    :goto_2
    return-void

    .line 108
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v2

    move-object v2, v8

    .line 109
    :goto_3
    const-string/jumbo v6, "GCanvasBridgeManager"

    const-string/jumbo v7, "exception detail"

    invoke-static {v6, v7, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1

    .line 118
    :cond_3
    new-instance v6, Lcom/taobao/gcanvas/GCanvasResult;

    invoke-direct {v6}, Lcom/taobao/gcanvas/GCanvasResult;-><init>()V

    .line 119
    const-string/jumbo v7, "GCanvas"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 120
    const-string/jumbo v4, "disable"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 121
    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    invoke-virtual {v0}, Lcom/taobao/gcanvas/GCanvas;->onDestroy()V

    sput-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    .line 148
    :cond_4
    :goto_4
    const-string/jumbo v0, "isAvailable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {v6}, Lcom/taobao/gcanvas/GCanvasResult;->getResultCode()Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    move-result-object v0

    sget-object v3, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    if-ne v0, v3, :cond_5

    .line 150
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    const-string/jumbo v3, "success"

    invoke-virtual {v6, v0, v3}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    .line 154
    :cond_5
    invoke-virtual {v6}, Lcom/taobao/gcanvas/GCanvasResult;->getResultMessage()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v3, ""

    instance-of v4, v0, Ljava/lang/String;

    if-eqz v4, :cond_d

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    :goto_5
    invoke-virtual {v6}, Lcom/taobao/gcanvas/GCanvasResult;->getResultCode()Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    move-result-object v3

    sget-object v4, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->OK:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    if-ne v3, v4, :cond_12

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->e:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {v2, v0, v1}, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->call2Js(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    goto :goto_2

    .line 123
    :cond_6
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->d:Lcom/taobao/gcanvas/GCanvasWebView;

    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    if-nez v4, :cond_7

    new-instance v4, Lcom/taobao/gcanvas/GCanvas;

    invoke-direct {v4}, Lcom/taobao/gcanvas/GCanvas;-><init>()V

    sput-object v4, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lcom/taobao/gcanvas/GCanvas;->initialize(Landroid/content/Context;Lcom/taobao/gcanvas/GCanvasWebView;)V

    :cond_7
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    .line 125
    :try_start_2
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->a:Lcom/taobao/gcanvas/GCanvas;

    invoke-virtual {v3, v5, v0, v6}, Lcom/taobao/gcanvas/GCanvas;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 126
    :catch_1
    move-exception v0

    .line 127
    const-string/jumbo v3, "GCanvasBridgeManager"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 130
    :cond_8
    const-string/jumbo v3, "GUtil"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 131
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->d:Lcom/taobao/gcanvas/GCanvasWebView;

    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->b:Lcom/taobao/gcanvas/GUtil;

    if-nez v4, :cond_9

    new-instance v4, Lcom/taobao/gcanvas/GUtil;

    invoke-direct {v4}, Lcom/taobao/gcanvas/GUtil;-><init>()V

    sput-object v4, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->b:Lcom/taobao/gcanvas/GUtil;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lcom/taobao/gcanvas/GUtil;->initialize(Landroid/content/Context;Lcom/taobao/gcanvas/GCanvasWebView;)V

    :cond_9
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->b:Lcom/taobao/gcanvas/GUtil;

    .line 133
    :try_start_3
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->b:Lcom/taobao/gcanvas/GUtil;

    invoke-virtual {v3, v5, v0, v6}, Lcom/taobao/gcanvas/GUtil;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_4

    .line 134
    :catch_2
    move-exception v0

    .line 135
    const-string/jumbo v3, "GCanvasBridgeManager"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 137
    :cond_a
    const-string/jumbo v3, "GMedia"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 138
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->d:Lcom/taobao/gcanvas/GCanvasWebView;

    sget-object v4, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->c:Lcom/taobao/gcanvas/GAudioHandler;

    if-nez v4, :cond_b

    new-instance v4, Lcom/taobao/gcanvas/GAudioHandler;

    invoke-direct {v4}, Lcom/taobao/gcanvas/GAudioHandler;-><init>()V

    sput-object v4, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->c:Lcom/taobao/gcanvas/GAudioHandler;

    invoke-virtual {v3}, Lcom/taobao/gcanvas/GCanvasWebView;->getWebView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7, v3}, Lcom/taobao/gcanvas/GAudioHandler;->initialize(Landroid/content/Context;Lcom/taobao/gcanvas/GCanvasWebView;)V

    :cond_b
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->c:Lcom/taobao/gcanvas/GAudioHandler;

    .line 140
    :try_start_4
    sget-object v3, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->c:Lcom/taobao/gcanvas/GAudioHandler;

    invoke-virtual {v3, v5, v0, v6}, Lcom/taobao/gcanvas/GAudioHandler;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lcom/taobao/gcanvas/GCanvasResult;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_4

    .line 141
    :catch_3
    move-exception v0

    .line 142
    const-string/jumbo v3, "GCanvasBridgeManager"

    const-string/jumbo v4, "exception detail"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 145
    :cond_c
    sget-object v0, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->ERROR:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    const-string/jumbo v3, "error,not support"

    invoke-virtual {v6, v0, v3}, Lcom/taobao/gcanvas/GCanvasResult;->setResult(Lcom/taobao/gcanvas/GCanvasResult$ResultCode;Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 154
    :cond_d
    instance-of v4, v0, Ljava/lang/Integer;

    if-eqz v4, :cond_e

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_e
    instance-of v4, v0, Ljava/lang/Boolean;

    if-eqz v4, :cond_f

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_f
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_10

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_10
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_11

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_11
    instance-of v4, v0, Ljava/lang/Float;

    if-eqz v4, :cond_13

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    .line 157
    :cond_12
    invoke-virtual {v6}, Lcom/taobao/gcanvas/GCanvasResult;->getResultCode()Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    move-result-object v2

    sget-object v3, Lcom/taobao/gcanvas/GCanvasResult$ResultCode;->ERROR:Lcom/taobao/gcanvas/GCanvasResult$ResultCode;

    if-ne v2, v3, :cond_1

    .line 158
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->e:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->call2Js(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    goto/16 :goto_2

    .line 108
    :catch_4
    move-exception v2

    goto/16 :goto_3

    :cond_13
    move-object v0, v3

    goto/16 :goto_5

    :cond_14
    move-object v0, v2

    goto/16 :goto_0
.end method
