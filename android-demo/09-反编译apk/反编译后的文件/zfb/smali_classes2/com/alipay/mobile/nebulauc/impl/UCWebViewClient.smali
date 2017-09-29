.class Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;
.super Lcom/uc/webview/export/WebViewClient;
.source "UCWebViewClient.java"


# instance fields
.field private currentTrafficFlow:J

.field private mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 28
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 29
    return-void
.end method

.method private getTrafficFlow()J
    .locals 5

    .prologue
    .line 53
    const-wide/16 v1, 0x0

    .line 57
    :try_start_0
    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getTraffic()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {}, Lcom/uc/webview/export/extension/UCCore;->getTraffic()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    add-long/2addr v0, v3

    .line 61
    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    move-wide v0, v1

    goto :goto_0
.end method


# virtual methods
.method public doUpdateVisitedHistory(Lcom/uc/webview/export/WebView;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->doUpdateVisitedHistory(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Z)V

    .line 117
    :cond_0
    return-void
.end method

.method public onFormResubmission(Lcom/uc/webview/export/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFormResubmission(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/os/Message;Landroid/os/Message;)V

    .line 109
    :cond_0
    return-void
.end method

.method public onLoadResource(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onLoadResource(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)V

    .line 69
    :cond_0
    return-void
.end method

.method public onPageFinished(Lcom/uc/webview/export/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->getTrafficFlow()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->currentTrafficFlow:J

    sub-long/2addr v0, v2

    .line 48
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, p2, v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageFinished(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 50
    :cond_0
    return-void
.end method

.method public onPageStarted(Lcom/uc/webview/export/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->getTrafficFlow()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->currentTrafficFlow:J

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onPageStarted(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 42
    :cond_0
    return-void
.end method

.method public onReceivedError(Lcom/uc/webview/export/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedError(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public onReceivedHttpAuthRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulauc/impl/UCHttpAuthHandler;-><init>(Lcom/uc/webview/export/HttpAuthHandler;)V

    invoke-interface {v0, v1, v2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedHttpAuthRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APHttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 6

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v2, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/nebulauc/impl/UCSslErrorHandler;-><init>(Lcom/uc/webview/export/SslErrorHandler;)V

    .line 123
    new-instance v3, Lcom/alipay/mobile/nebulauc/impl/UCSslError;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p3}, Lcom/alipay/mobile/nebulauc/impl/UCSslError;-><init>(ILandroid/net/http/SslCertificate;Landroid/net/http/SslError;)V

    .line 122
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onReceivedSslError(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APSslErrorHandler;Landroid/net/http/SslError;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onScaleChanged(Lcom/uc/webview/export/WebView;FF)V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onScaleChanged(Lcom/alipay/mobile/nebula/webview/APWebView;FF)V

    .line 153
    :cond_0
    return-void
.end method

.method public onUnhandledKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onUnhandledKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)V

    .line 146
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebResourceRequest;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 83
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v1, :cond_0

    if-nez p2, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;

    invoke-direct {v1, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebResourceRequest;-><init>(Lcom/uc/webview/export/WebResourceRequest;)V

    .line 87
    iget-object v2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Lcom/uc/webview/export/WebResourceResponse;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public shouldInterceptRequest(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Lcom/uc/webview/export/WebResourceResponse;
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptRequest(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Lcom/uc/webview/export/WebResourceResponse;

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/uc/webview/export/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 79
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideKeyEvent(Lcom/uc/webview/export/WebView;Landroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideKeyEvent(Lcom/alipay/mobile/nebula/webview/APWebView;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Lcom/uc/webview/export/WebView;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;->mAPView:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, v1, p2}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldOverrideUrlLoading(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
