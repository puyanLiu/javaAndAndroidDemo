.class public Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;
.super Ljava/lang/Object;
.source "H5WebViewFactory.java"


# static fields
.field private static a:Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 48
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 49
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 51
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 53
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_1
    return-object v3

    .line 54
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    :try_start_2
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v5, "exception detail"

    invoke-static {v2, v5, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    .line 63
    const-string/jumbo v2, "H5WebViewFactory"

    const-string/jumbo v4, "exception detail."

    invoke-static {v2, v4, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    const-string/jumbo v1, "H5WebViewFactory"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parseObject failed! rules in string format: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 73
    invoke-static {p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 74
    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    :cond_0
    return-object v2

    .line 75
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 76
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 83
    .line 84
    const-string/jumbo v0, "h5_webViewConfig"

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 86
    const-string/jumbo v2, "h5_enableExternalWebView"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 88
    const-string/jumbo v2, "YES"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 90
    :goto_0
    const-string/jumbo v2, "H5WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "enableExternalWebView: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    if-nez v0, :cond_0

    .line 145
    :goto_1
    return v3

    .line 95
    :cond_0
    const-string/jumbo v4, ""

    .line 96
    const-string/jumbo v0, ""

    .line 97
    const-string/jumbo v2, "h5_webViewConfig"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string/jumbo v5, "H5WebViewFactory"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "externalWebViewConfigValue: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :try_start_0
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    .line 101
    if-eqz v5, :cond_8

    const-string/jumbo v2, "h5_externalWebViewUsageRule"

    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 102
    const-string/jumbo v2, "h5_externalWebViewUsageRule"

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 103
    if-eqz v2, :cond_8

    .line 104
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    move-object v2, v4

    .line 107
    :goto_2
    if-eqz v5, :cond_1

    :try_start_1
    const-string/jumbo v4, "h5_externalWebViewSdkVersion"

    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 108
    const-string/jumbo v4, "h5_externalWebViewSdkVersion"

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 109
    if-eqz v4, :cond_1

    .line 110
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 116
    :cond_1
    :goto_3
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 117
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 119
    const-string/jumbo v0, "min"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "max"

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    const-string/jumbo v0, "min"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v5, :cond_2

    const-string/jumbo v0, "max"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v5, v0, :cond_2

    move v0, v1

    .line 124
    :goto_4
    if-eqz v0, :cond_7

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 126
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->a(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-eqz v2, :cond_5

    .line 128
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 129
    const-string/jumbo v2, "SYSTEM_BUILD_IN"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 130
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "SYSTEM_BUILD_IN"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    :catch_0
    move-exception v2

    move-object v8, v2

    move-object v2, v4

    move-object v4, v8

    .line 114
    :goto_5
    const-string/jumbo v5, "H5WebViewFactory"

    const-string/jumbo v6, "exception detail"

    invoke-static {v5, v6, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_2
    move v0, v3

    .line 120
    goto :goto_4

    :cond_3
    move v0, v3

    .line 122
    goto :goto_4

    .line 133
    :cond_4
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v2, "THIRDPARTY"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 134
    goto/16 :goto_1

    .line 137
    :cond_5
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v2, "rulesInMap is null, default"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v1

    .line 138
    goto/16 :goto_1

    :cond_6
    move v3, v1

    .line 141
    goto/16 :goto_1

    .line 144
    :cond_7
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "not in sdkversion scope"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 113
    :catch_1
    move-exception v4

    goto :goto_5

    :cond_8
    move-object v2, v4

    goto/16 :goto_2

    :cond_9
    move v0, v1

    goto/16 :goto_0
.end method

.method public static instance()Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->a:Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;

    return-object v0
.end method


# virtual methods
.method public createWebView(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;
    .locals 6

    .prologue
    .line 178
    const-string/jumbo v0, "H5WebViewFactory"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getWebViewType bizType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string/jumbo v1, "armeabi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "Not armeabi environment use system webview."

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    .line 179
    :goto_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 180
    const/4 v1, 0x0

    .line 181
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getUcService()Lcom/alipay/mobile/h5container/service/UcService;

    move-result-object v3

    .line 182
    if-nez v3, :cond_1

    .line 183
    const-string/jumbo v4, "H5WebViewFactory"

    const-string/jumbo v5, "ucWebService not ready"

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_1
    if-eqz v3, :cond_7

    sget-object v4, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    if-ne v0, v4, :cond_7

    .line 188
    :try_start_0
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v4, "create uc web view"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {v3, p2}, Lcom/alipay/mobile/h5container/service/UcService;->createWebView(Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 196
    :goto_2
    if-nez v0, :cond_2

    .line 197
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "create android web view"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-direct {v0, p2}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;-><init>(Landroid/content/Context;)V

    .line 201
    :cond_2
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 202
    const-string/jumbo v3, "webViewType"

    invoke-virtual {v2, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string/jumbo v3, "H5WebViewFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "webViewType: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 206
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 207
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 208
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getTopSession()Lcom/alipay/mobile/h5container/api/H5Session;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Session;->getTopPage()Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v1

    .line 209
    const-string/jumbo v3, "h5PageCreateWebView"

    invoke-interface {v1, v3, v2}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 211
    :cond_3
    return-object v0

    .line 178
    :cond_4
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "h5_dev_uc"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "h5_uc_webview"

    invoke-static {p2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getConfigBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "debug config to enable uc webview"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "debug config to disable uc webview"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "H5WebViewFactory"

    const-string/jumbo v1, "bizType match online config to use uc webview"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    goto/16 :goto_1

    .line 190
    :catch_0
    move-exception v0

    .line 191
    const-string/jumbo v3, "degradeWebView"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string/jumbo v3, "H5WebViewFactory"

    const-string/jumbo v4, "create uc web view failed"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    move-object v0, v1

    goto/16 :goto_2
.end method
