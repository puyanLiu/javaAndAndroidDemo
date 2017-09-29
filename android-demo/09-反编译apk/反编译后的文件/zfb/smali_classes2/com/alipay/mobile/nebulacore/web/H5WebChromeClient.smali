.class public Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# static fields
.field public static final FILE_CHOOSER_RESULT:Ljava/lang/String; = "FILE_CHOOSER_RESULT"

.field public static final TAG:Ljava/lang/String; = "H5WebChromeClient"


# instance fields
.field private a:Lcom/alipay/mobile/h5container/api/H5Page;

.field private b:Lcom/alipay/mobile/h5container/api/H5PageData;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    const-string/jumbo v0, "alitrip-android://"

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->e:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 67
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getPageData()Lcom/alipay/mobile/h5container/api/H5PageData;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    .line 69
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    .line 70
    new-instance v2, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v2, p0, v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/view/View;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 92
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 94
    :try_start_0
    invoke-static {v0, v2}, Lcom/taobao/gcanvas/GCanvas;->initGCanvasActivity(Landroid/app/Activity;Lcom/taobao/gcanvas/GCanvasWebView;)V

    .line 95
    new-instance v0, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;-><init>(Lcom/taobao/gcanvas/GCanvasWebView;Lcom/alipay/mobile/nebula/webview/APWebView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    const-string/jumbo v1, "H5WebChromeClient"

    const-string/jumbo v2, "failed to init gcanvas!"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 162
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_1

    move v0, v3

    .line 119
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "alitrip-android://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_1
    move v0, v3

    .line 124
    goto :goto_0

    .line 123
    :cond_3
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "gcanvas://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->doBridgeFunction(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    :cond_4
    const-string/jumbo v0, "h5container.message: "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 129
    const-string/jumbo v0, "h5container.message: "

    const-string/jumbo v4, ""

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move v0, v2

    .line 133
    goto :goto_0

    .line 136
    :cond_5
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v0, v2

    .line 138
    goto :goto_0

    .line 141
    :cond_7
    const-string/jumbo v4, "clientId"

    invoke-static {v0, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 142
    const-string/jumbo v5, "func"

    invoke-static {v0, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 143
    const-string/jumbo v6, "msgType"

    invoke-static {v0, v6}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    const-string/jumbo v7, "keepCallback"

    invoke-static {v0, v7, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v7

    .line 146
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 147
    const-string/jumbo v0, "H5WebChromeClient"

    const-string/jumbo v1, "invalid client id!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 148
    goto/16 :goto_0

    .line 151
    :cond_8
    const-string/jumbo v2, "H5WebChromeClient"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "[name] "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [msgType] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 152
    const-string/jumbo v9, " [clientId] "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 151
    invoke-static {v2, v8}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v2, "param"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getJSONObject(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v1}, Lcom/alipay/mobile/h5container/api/H5Page;->getBridge()Lcom/alipay/mobile/h5container/api/H5Bridge;

    move-result-object v1

    .line 157
    new-instance v2, Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    invoke-direct {v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;-><init>()V

    .line 158
    invoke-virtual {v2, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->action(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->param(Lcom/alibaba/fastjson/JSONObject;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->target(Lcom/alipay/mobile/h5container/api/H5CoreNode;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->type(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->id(Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->keepCallback(Z)Lcom/alipay/mobile/h5container/api/H5Event$Builder;

    .line 160
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/api/H5Event$Builder;->build()Lcom/alipay/mobile/h5container/api/H5Event;

    move-result-object v0

    .line 161
    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5Bridge;->sendToNative(Lcom/alipay/mobile/h5container/api/H5Event;)V

    move v0, v3

    .line 162
    goto/16 :goto_0

    :cond_9
    move-object v0, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 2

    .prologue
    .line 299
    const-string/jumbo v0, "H5WebChromeClient"

    const-string/jumbo v1, "getVideoLoadingProgressView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    return-void
.end method

.method public onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    .prologue
    .line 389
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 103
    if-nez p1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;->CONSOLE_LOG:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    if-ne v2, v3, :cond_0

    .line 108
    invoke-direct {p0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-nez v0, :cond_1

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5UrlHelper;->parseUrl(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5AppProvider;

    .line 245
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v1

    .line 246
    const-class v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 247
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v3}, Lcom/alipay/mobile/h5container/api/H5Page;->getParams()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "appId"

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 248
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v4

    .line 249
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "Y"

    invoke-interface {v4, v2}, Lcom/alipay/mobile/h5container/api/H5Data;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 250
    if-eqz v0, :cond_2

    invoke-interface {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5AppProvider;->isH5App(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 251
    :cond_2
    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->permitLocation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 252
    :cond_3
    invoke-interface {p2, p1, v6, v6}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 256
    :cond_4
    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 274
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 277
    :try_start_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\"http://"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/alipay/mobile/nebulacore/R$string;->locationmsg:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->locationnegbtn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alipay/mobile/nebulacore/R$string;->locationposbtn:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WalletLocationPlugin"

    const-string/jumbo v2, "show location dialog exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    .line 369
    const-string/jumbo v0, "H5WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onShowCustomView [SDK Version] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 374
    return-void
.end method

.method public onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method public onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 3

    .prologue
    .line 229
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 230
    const-string/jumbo v0, "H5WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onJsBeforeUnload [url] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [message] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z
    .locals 1

    .prologue
    .line 398
    const/4 v0, 0x0

    return v0
.end method

.method public onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z
    .locals 2

    .prologue
    .line 407
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy;->get()Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;->WINDOW_PROMPT:Lcom/alipay/mobile/nebulacore/web/H5BridgePolicy$Policy;

    if-ne v0, v1, :cond_0

    .line 408
    invoke-direct {p0, p3}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const-string/jumbo v0, "true"

    invoke-interface {p5, v0}, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;->confirm(Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V
    .locals 3

    .prologue
    .line 183
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "H5WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onProgressChanged [progress] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 189
    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v2, "h5PageProgress"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 192
    :cond_1
    return-void
.end method

.method public onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 212
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 213
    const-string/jumbo v0, "H5WebChromeClient"

    const-string/jumbo v1, "onReceivedIcon"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 196
    const-string/jumbo v0, "H5WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedTitle [title] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->b:Lcom/alipay/mobile/h5container/api/H5PageData;

    iput-object p2, v0, Lcom/alipay/mobile/h5container/api/H5PageData;->title:Ljava/lang/String;

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 201
    const-string/jumbo v0, "javascript:{window.__alipayConsole__ = window.console}"

    invoke-interface {p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    .line 203
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 204
    const-string/jumbo v1, "url"

    invoke-interface {p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    const-string/jumbo v2, "h5PageReceivedTitle"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/h5container/api/H5Page;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 220
    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "H5WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceivedTouchIconUrl. [url] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " [precomposed] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 221
    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 418
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

    const-string/jumbo v1, "gcanvas://GCanvas/disable?params={}"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;->doBridgeFunction(Ljava/lang/String;)V

    .line 420
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->d:Lcom/alipay/mobile/nebulacore/wallet/GCanvasBridgeManager;

    .line 422
    :cond_0
    return-void
.end method

.method public onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V
    .locals 3

    .prologue
    .line 364
    const-string/jumbo v0, "H5WebChromeClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onShowCustomView [SDK Version] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Z)V
    .locals 4

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 360
    :goto_0
    return-void

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->a:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 314
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 316
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 317
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 318
    const-string/jumbo v3, "FILE_CHOOSER_RESULT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    .line 321
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 322
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    .line 325
    :cond_1
    new-instance v3, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/support/v4/content/LocalBroadcastManager;Landroid/webkit/ValueCallback;Z)V

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    .line 351
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 353
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alipay/mobile/nebulacore/ui/H5FileChooserActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 354
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    const-string/jumbo v1, "H5WebChromeClient"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 357
    :catch_1
    move-exception v0

    .line 358
    const-string/jumbo v1, "H5WebChromeClient"

    const-string/jumbo v2, "exception detail"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
