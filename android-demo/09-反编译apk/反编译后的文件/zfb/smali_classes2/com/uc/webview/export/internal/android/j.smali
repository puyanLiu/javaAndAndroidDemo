.class final Lcom/uc/webview/export/internal/android/j;
.super Landroid/webkit/WebChromeClient;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IOpenFileChooser;


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Lcom/uc/webview/export/WebChromeClient;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebChromeClient;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    .line 61
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    .line 62
    return-void
.end method

.method private a(Landroid/webkit/ValueCallback;)V
    .locals 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/l;

    invoke-direct {v2, p0, p1}, Lcom/uc/webview/export/internal/android/l;-><init>(Lcom/uc/webview/export/internal/android/j;Landroid/webkit/ValueCallback;)V

    new-instance v3, Lcom/uc/webview/export/internal/android/m;

    invoke-direct {v3, p0}, Lcom/uc/webview/export/internal/android/m;-><init>(Lcom/uc/webview/export/internal/android/j;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/uc/webview/export/WebChromeClient;->onShowFileChooser(Lcom/uc/webview/export/WebView;Landroid/webkit/ValueCallback;Lcom/uc/webview/export/WebChromeClient$FileChooserParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public final getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 192
    return-void
.end method

.method public final onCloseWindow(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebChromeClient;->onCloseWindow(Lcom/uc/webview/export/WebView;)V

    .line 128
    return-void
.end method

.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v0

    return v0
.end method

.method public final onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5

    .prologue
    .line 98
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 99
    new-instance v1, Lcom/uc/webview/export/WebView$WebViewTransport;

    iget-object v2, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/uc/webview/export/WebView$WebViewTransport;-><init>(Lcom/uc/webview/export/WebView;)V

    .line 100
    new-instance v2, Lcom/uc/webview/export/internal/android/k;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/uc/webview/export/internal/android/k;-><init>(Lcom/uc/webview/export/internal/android/j;Landroid/os/Looper;)V

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 105
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 106
    const/4 v3, 0x1

    sput-boolean v3, Lcom/uc/webview/export/internal/d;->g:Z

    .line 107
    iget-object v3, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v4, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v3, v4, p2, p3, v2}, Lcom/uc/webview/export/WebChromeClient;->onCreateWindow(Lcom/uc/webview/export/WebView;ZZLandroid/os/Message;)Z

    move-result v2

    .line 108
    const/4 v3, 0x0

    sput-boolean v3, Lcom/uc/webview/export/internal/d;->g:Z

    .line 109
    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$WebViewTransport;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v3

    if-nez v3, :cond_1

    .line 110
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 114
    :goto_0
    invoke-virtual {v0}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 117
    :cond_0
    return v2

    .line 112
    :cond_1
    invoke-virtual {v1}, Lcom/uc/webview/export/WebView$WebViewTransport;->getWebView()Lcom/uc/webview/export/WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uc/webview/export/WebView;->getCoreView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public final onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    .line 170
    return-void
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    new-instance v1, Lcom/uc/webview/export/internal/android/j$b;

    invoke-direct {v1, p0, p2}, Lcom/uc/webview/export/internal/android/j$b;-><init>(Lcom/uc/webview/export/internal/android/j;Landroid/webkit/GeolocationPermissions$Callback;)V

    invoke-virtual {v0, p1, v1}, Lcom/uc/webview/export/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Lcom/uc/webview/export/GeolocationPermissions$Callback;)V

    .line 165
    return-void
.end method

.method public final onHideCustomView()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebChromeClient;->onHideCustomView()V

    .line 93
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {v2, p4}, Lcom/uc/webview/export/internal/android/f;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/uc/webview/export/WebChromeClient;->onJsAlert(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {v2, p4}, Lcom/uc/webview/export/internal/android/f;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/uc/webview/export/WebChromeClient;->onJsBeforeUnload(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/f;

    invoke-direct {v2, p4}, Lcom/uc/webview/export/internal/android/f;-><init>(Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/uc/webview/export/WebChromeClient;->onJsConfirm(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsResult;)Z

    move-result v0

    return v0
.end method

.method public final onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 6

    .prologue
    .line 145
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    new-instance v5, Lcom/uc/webview/export/internal/android/e;

    invoke-direct {v5, p5}, Lcom/uc/webview/export/internal/android/e;-><init>(Landroid/webkit/JsPromptResult;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebChromeClient;->onJsPrompt(Lcom/uc/webview/export/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/uc/webview/export/JsPromptResult;)Z

    move-result v0

    return v0
.end method

.method public final onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebChromeClient;->onProgressChanged(Lcom/uc/webview/export/WebView;I)V

    .line 67
    return-void
.end method

.method public final onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedIcon(Lcom/uc/webview/export/WebView;Landroid/graphics/Bitmap;)V

    .line 77
    return-void
.end method

.method public final onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTitle(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebChromeClient;->onReceivedTouchIconUrl(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 83
    return-void
.end method

.method public final onRequestFocus(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/j;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebChromeClient;->onRequestFocus(Lcom/uc/webview/export/WebView;)V

    .line 123
    return-void
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/j;->b:Lcom/uc/webview/export/WebChromeClient;

    new-instance v1, Lcom/uc/webview/export/internal/android/j$a;

    invoke-direct {v1, p0, p2}, Lcom/uc/webview/export/internal/android/j$a;-><init>(Lcom/uc/webview/export/internal/android/j;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/uc/webview/export/WebChromeClient;->onShowCustomView(Landroid/view/View;Lcom/uc/webview/export/WebChromeClient$CustomViewCallback;)V

    .line 88
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 0

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/android/j;->a(Landroid/webkit/ValueCallback;)V

    .line 211
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/android/j;->a(Landroid/webkit/ValueCallback;)V

    .line 206
    return-void
.end method

.method public final openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/uc/webview/export/internal/android/j;->a(Landroid/webkit/ValueCallback;)V

    .line 200
    return-void
.end method
