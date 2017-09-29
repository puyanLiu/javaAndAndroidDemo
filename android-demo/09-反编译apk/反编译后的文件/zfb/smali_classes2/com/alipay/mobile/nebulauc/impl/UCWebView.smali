.class public Lcom/alipay/mobile/nebulauc/impl/UCWebView;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# instance fields
.field private apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

.field private webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

.field private webView:Lcom/uc/webview/export/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->initUCWebView()V

    .line 100
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    return-object v0
.end method

.method private initUCWebView()V
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebSettings;-><init>(Lcom/uc/webview/export/WebView;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    .line 104
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->clearCache(Z)V

    .line 366
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearFormData()V

    .line 371
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearHistory()V

    .line 376
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->clearSslPreferences()V

    .line 381
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->copyBackForwardList()Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_0

    .line 387
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    .line 389
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->destroy()V

    .line 190
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 244
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->flingScroll(II)V

    .line 134
    return-void
.end method

.method public freeMemory()V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 339
    const/4 v0, 0x0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getHitTestResult()Lcom/uc/webview/export/WebView$HitTestResult;

    move-result-object v1

    .line 482
    if-nez v1, :cond_0

    .line 483
    const/4 v0, 0x0

    .line 485
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/uc/webview/export/WebView$HitTestResult;)V

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webSettings:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->THIRD_PARTY:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "1.1"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goBack()V

    .line 264
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->goBackOrForward(I)V

    .line 284
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->goForward()V

    .line 274
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->invokeZoomPicker()V

    .line 304
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onPause()V

    .line 345
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->onResume()V

    .line 350
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 228
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->reload()V

    .line 254
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .prologue
    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->restoreState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v1

    .line 209
    if-eqz v1, :cond_0

    .line 210
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->saveState(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    new-instance v0, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulauc/impl/UCWebBackForwardList;-><init>(Lcom/uc/webview/export/WebBackForwardList;)V

    .line 203
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->apWebViewListener:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 76
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 2

    .prologue
    .line 453
    if-nez p1, :cond_0

    .line 454
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;

    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulauc/impl/UCDownloadListener;-><init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V

    goto :goto_0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setInitialScale(I)V

    .line 299
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setNetworkAvailable(Z)V

    .line 195
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 154
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 2

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    .line 467
    :goto_0
    return-void

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebChromeClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V

    goto :goto_0
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 0

    .prologue
    .line 129
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 3

    .prologue
    .line 394
    if-nez p1, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/WebView;->setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V

    .line 399
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/extension/UCExtension;->setClient(Lcom/uc/webview/export/extension/UCClient;)V

    .line 434
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->getUCExtension()Lcom/uc/webview/export/extension/UCExtension;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 447
    const/4 v2, 0x1

    .line 434
    invoke-virtual {v0, v1, v2}, Lcom/uc/webview/export/extension/UCExtension;->setInjectJSProvider(Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;I)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->stopLoading()V

    .line 249
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->webView:Lcom/uc/webview/export/WebView;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method
