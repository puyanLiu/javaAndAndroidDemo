.class public final Lcom/uc/webview/export/internal/android/p;
.super Landroid/webkit/WebViewClient;
.source "ProGuard"


# instance fields
.field private a:Lcom/uc/webview/export/WebView;

.field private b:Lcom/uc/webview/export/WebViewClient;


# direct methods
.method public constructor <init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebViewClient;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    .line 24
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    .line 25
    return-void
.end method


# virtual methods
.method public final doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V

    .line 84
    return-void
.end method

.method public final onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/uc/webview/export/internal/a/a/a;->a:Lcom/uc/webview/export/internal/a/a/a;

    invoke-virtual {v0, p2}, Lcom/uc/webview/export/internal/a/a/a;->a(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 35
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public final onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/d;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/internal/android/d;-><init>(Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1, v2, p3, p4}, Lcom/uc/webview/export/WebViewClient;->onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3

    .prologue
    .line 89
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    new-instance v2, Lcom/uc/webview/export/internal/android/h;

    invoke-direct {v2, p2}, Lcom/uc/webview/export/internal/android/h;-><init>(Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v0, v1, v2, p3}, Lcom/uc/webview/export/WebViewClient;->onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 90
    return-void
.end method

.method public final onScaleChanged(Landroid/webkit/WebView;FF)V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2, p3}, Lcom/uc/webview/export/WebViewClient;->onScaleChanged(Lcom/uc/webview/export/WebView;FF)V

    .line 125
    return-void
.end method

.method public final onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V

    .line 120
    return-void
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;

    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 59
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/uc/webview/export/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public final shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/p;->b:Lcom/uc/webview/export/WebViewClient;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/p;->a:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, v1, p2}, Lcom/uc/webview/export/WebViewClient;->shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
