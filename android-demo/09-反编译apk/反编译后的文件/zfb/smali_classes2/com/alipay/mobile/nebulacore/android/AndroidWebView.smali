.class public Lcom/alipay/mobile/nebulacore/android/AndroidWebView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;


# instance fields
.field private a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

.field private b:Landroid/webkit/WebView;

.field private c:Lcom/alipay/mobile/nebula/webview/APWebViewListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$1;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 82
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebSettings;-><init>(Landroid/webkit/WebSettings;)V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    .line 83
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 84
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string/jumbo v1, "AndroidWebView"

    const-string/jumbo v2, "setAcceptThirdPartyCookies"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->c:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "JavascriptInterface"
        }
    .end annotation

    .prologue
    .line 116
    const-string/jumbo v0, "AndroidWebView"

    const-string/jumbo v1, "addJavascriptInterface not supported"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 376
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 381
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 386
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    .line 391
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 396
    if-eqz v1, :cond_0

    .line 397
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 399
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 193
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 248
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 251
    :cond_0
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    .line 137
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->freeMemory()V

    .line 371
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 2

    .prologue
    .line 345
    const-string/jumbo v0, "AndroidWebView"

    const-string/jumbo v1, "getContentWidth() is currently not supported yet"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const/4 v0, 0x0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 426
    if-nez v1, :cond_0

    .line 427
    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$AndroidHitTestResult;-><init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/webkit/WebView$HitTestResult;)V

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a:Lcom/alipay/mobile/nebula/webview/APWebSettings;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "1.1"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 271
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 291
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    .line 281
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invokeZoomPicker()V

    .line 311
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 241
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 351
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 354
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 358
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 359
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 361
    :cond_0
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    .line 231
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 261
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 122
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 212
    if-eqz v1, :cond_0

    .line 213
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 215
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_0

    .line 204
    new-instance v0, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebBackForwardList;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 206
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->c:Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    .line 111
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidDownloadListener;

    .line 410
    invoke-direct {v1, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidDownloadListener;-><init>(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 409
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 411
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 152
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 306
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    .line 198
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 157
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebChromeClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 416
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 130
    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 132
    :cond_0
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/nebulacore/android/AndroidWebViewClient;-><init>(Lcom/alipay/mobile/nebula/webview/APWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 405
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 256
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0
.end method
