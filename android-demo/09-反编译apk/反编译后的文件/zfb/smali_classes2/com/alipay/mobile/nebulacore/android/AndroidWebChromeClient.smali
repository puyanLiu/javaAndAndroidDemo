.class Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AndroidWebChromeClient.java"


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 32
    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 33
    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
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
    .line 178
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 179
    const-class v0, Landroid/webkit/ValueCallback;

    .line 178
    invoke-static {v0, p1}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 180
    return-void
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCloseWindow(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 97
    :cond_0
    return-void
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 6

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 148
    new-instance v1, Landroid/webkit/ConsoleMessage;

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v4

    .line 149
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->messageLevel()Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/ConsoleMessage$MessageLevel;->valueOf(Ljava/lang/String;)Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    .line 148
    invoke-direct {v1, v2, v3, v4, v5}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    .line 147
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

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onCreateWindow(Lcom/alipay/mobile/nebula/webview/APWebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 143
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 133
    const-class v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 132
    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/GeolocationPermissions$Callback;

    .line 131
    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onHideCustomView()V

    .line 77
    :cond_0
    return-void
.end method

.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 102
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 103
    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 102
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsAlert(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 124
    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 123
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsBeforeUnload(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 110
    const-class v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    invoke-static {v0, p4}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APJsResult;

    .line 109
    invoke-interface {v1, v2, p2, p3, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsConfirm(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsResult;)Z

    move-result v0

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 117
    const-class v2, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    invoke-static {v2, p5}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alipay/mobile/nebula/webview/APJsPromptResult;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 116
    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onJsPrompt(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/nebula/webview/APJsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onProgressChanged(Lcom/alipay/mobile/nebula/webview/APWebView;I)V

    .line 40
    :cond_0
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedIcon(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/graphics/Bitmap;)V

    .line 54
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTitle(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onReceivedTouchIconUrl(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 61
    :cond_0
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onRequestFocus(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 90
    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    .line 68
    const-class v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    .line 67
    invoke-static {v0, p2}, Lcom/alipay/mobile/nebulacore/android/DynamicProxy;->dynamicProxy(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;

    invoke-interface {v1, p1, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/alipay/mobile/nebula/webview/APWebChromeClient$CustomViewCallback;)V

    .line 70
    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    invoke-interface {v1, p2, v0}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 206
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 186
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 192
    :cond_0
    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;->b:Lcom/alipay/mobile/nebula/webview/APWebChromeClient;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/nebula/webview/APWebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Z)V

    .line 198
    :cond_0
    return-void
.end method
