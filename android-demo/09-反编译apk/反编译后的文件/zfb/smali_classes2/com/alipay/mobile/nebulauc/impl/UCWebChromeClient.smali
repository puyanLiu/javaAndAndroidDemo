.class Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;
.super Lcom/uc/webview/export/WebChromeClient;
.source "UCWebChromeClient.java"


# instance fields
.field private mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/uc/webview/export/WebChromeClient;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 29
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 30
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onCloseWindow(Lcom/uc/webview/export/WebView;)V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 92
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    new-instance v1, Landroid/webkit/ConsoleMessage;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    .line 138
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->valueOf(Ljava/lang/String;)Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    .line 136
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 132
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 122
    const-class v0, Landroid/webkit/GeolocationPermissions$Callback;

    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 121
    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onHideCustomView()V

    .line 73
    :cond_0
    return-void
.end method

.method public onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 97
    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 96
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 115
    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 114
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 103
    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 102
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 108
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 109
    const-class v2, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-static {v2, p5}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 108
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Lcom/uc/webview/export/WebView;I)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V

    .line 37
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public onRequestFocus(Lcom/uc/webview/export/WebView;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 85
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 64
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulauc/impl/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 63
    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V

    .line 66
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 169
    :cond_0
    return-void
.end method
