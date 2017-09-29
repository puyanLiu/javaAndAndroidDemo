.class public Lcom/uc/webview/export/internal/android/WebViewAndroid;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/internal/interfaces/IWebView;


# instance fields
.field private a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

.field private b:Lcom/uc/webview/export/WebView;

.field private c:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uc/webview/export/WebView;)V
    .locals 3

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/WebView;

    .line 223
    new-instance v0, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-direct {v0, p0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;-><init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    .line 225
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    new-instance v1, Lcom/uc/webview/export/internal/android/p;

    new-instance v2, Lcom/uc/webview/export/WebViewClient;

    invoke-direct {v2}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    invoke-direct {v1, p2, v2}, Lcom/uc/webview/export/internal/android/p;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 226
    return-void
.end method

.method static synthetic a(Lcom/uc/webview/export/internal/android/WebViewAndroid;)Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->c:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    return-object v0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 656
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->canZoomIn()Z

    move-result v0

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canZoomOut()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 666
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->canZoomOut()Z

    move-result v0

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->clearCache(Z)V

    .line 266
    return-void
.end method

.method public clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->clearFormData()V

    .line 276
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->clearHistory()V

    .line 281
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->clearMatches()V

    .line 286
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->clearSslPreferences()V

    .line 291
    return-void
.end method

.method public copyBackForwardListInner()Lcom/uc/webview/export/WebBackForwardList;
    .locals 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 296
    if-eqz v1, :cond_0

    .line 297
    new-instance v0, Lcom/uc/webview/export/internal/android/i;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/i;-><init>(Landroid/webkit/WebBackForwardList;)V

    .line 299
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->destroy()V

    .line 649
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->documentHasImages(Landroid/os/Message;)V

    .line 305
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 640
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    const-string/jumbo v1, "evaluateJavascript"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/webkit/ValueCallback;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    :cond_0
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 309
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 310
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    const-string/jumbo v1, "findAllAsync"

    new-array v2, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/uc/webview/export/internal/utility/ReflectionUtil;->invokeNoThrow(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_0
    return-void
.end method

.method public findNext(Z)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->findNext(Z)V

    .line 318
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->flingScroll(II)V

    .line 323
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getCommonExtension()Lcom/uc/webview/export/internal/interfaces/ICommonExtension;
    .locals 0

    .prologue
    .line 780
    return-object p0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResultInner()Lcom/uc/webview/export/internal/interfaces/IWebView$IHitTestResult;
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    .line 344
    if-eqz v1, :cond_0

    .line 345
    new-instance v0, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$a;-><init>(Lcom/uc/webview/export/internal/android/WebViewAndroid;Landroid/webkit/WebView$HitTestResult;B)V

    .line 347
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOverrideObject()Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->c:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getScale()F

    move-result v0

    return v0
.end method

.method public getSettingsInner()Lcom/uc/webview/export/WebSettings;
    .locals 2

    .prologue
    .line 477
    new-instance v0, Lcom/uc/webview/export/internal/android/n;

    iget-object v1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/n;-><init>(Landroid/webkit/WebSettings;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUCExtension()Lcom/uc/webview/export/internal/interfaces/IUCExtension;
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->goBack()V

    .line 383
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->goBackOrForward(I)V

    .line 388
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->goForward()V

    .line 393
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->invokeZoomPicker()V

    .line 398
    return-void
.end method

.method public isHorizontalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->isHorizontalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public isInOverScrollMoving()Z
    .locals 1

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public isVerticalScrollBarEnabled()Z
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->isVerticalScrollBarEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 408
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->loadUrl(Ljava/lang/String;)V

    .line 415
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 420
    return-void
.end method

.method public notifyForegroundChanged(Z)V
    .locals 0

    .prologue
    .line 794
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->onPause()V

    .line 425
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->onResume()V

    .line 430
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->pauseTimers()V

    .line 455
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->postUrl(Ljava/lang/String;[B)V

    .line 460
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 464
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->reload()V

    .line 465
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 470
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 471
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 473
    :cond_0
    return-void
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->requestFocusNodeHref(Landroid/os/Message;)V

    .line 483
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->requestImageRef(Landroid/os/Message;)V

    .line 488
    return-void
.end method

.method public restoreStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 493
    if-nez v1, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 496
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/i;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/i;-><init>(Landroid/webkit/WebBackForwardList;)V

    goto :goto_0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->resumeTimers()V

    .line 503
    return-void
.end method

.method public saveStateInner(Landroid/os/Bundle;)Lcom/uc/webview/export/WebBackForwardList;
    .locals 2

    .prologue
    .line 507
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 508
    if-nez v1, :cond_0

    .line 509
    const/4 v0, 0x0

    .line 511
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/uc/webview/export/internal/android/i;

    invoke-direct {v0, v1}, Lcom/uc/webview/export/internal/android/i;-><init>(Landroid/webkit/WebBackForwardList;)V

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setBackgroundColor(I)V

    .line 518
    return-void
.end method

.method public setDownloadListener(Lcom/uc/webview/export/DownloadListener;)V
    .locals 2

    .prologue
    .line 522
    if-nez p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 527
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    new-instance v1, Lcom/uc/webview/export/internal/android/b;

    invoke-direct {v1, p1}, Lcom/uc/webview/export/internal/android/b;-><init>(Lcom/uc/webview/export/DownloadListener;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_0
.end method

.method public setDropDownOverScrollEnabled(Z)V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public setFindListener(Lcom/uc/webview/export/WebView$FindListener;)V
    .locals 0

    .prologue
    .line 532
    return-void
.end method

.method public setHorizontalScrollBarEnabled(Z)V
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setHorizontalScrollBarEnabled(Z)V

    .line 586
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setInitialScale(I)V

    .line 543
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 548
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setLayerType(ILandroid/graphics/Paint;)V

    .line 551
    :cond_0
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 556
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setNetworkAvailable(Z)V

    .line 561
    return-void
.end method

.method public setOnKeyListener(Landroid/view/View$OnKeyListener;)V
    .locals 1

    .prologue
    .line 768
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 769
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 760
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 764
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public setOverrideObject(Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->c:Lcom/uc/webview/export/internal/interfaces/IWebViewOverride;

    .line 231
    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1

    .prologue
    .line 634
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setScrollBarStyle(I)V

    .line 635
    return-void
.end method

.method public setVerticalScrollBarEnabled(Z)V
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setVerticalScrollBarEnabled(Z)V

    .line 576
    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setVerticalScrollbarOverlay(Z)V

    .line 591
    return-void
.end method

.method public setWebChromeClient(Lcom/uc/webview/export/WebChromeClient;)V
    .locals 3

    .prologue
    .line 619
    if-nez p1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 624
    :goto_0
    return-void

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    new-instance v1, Lcom/uc/webview/export/internal/android/j;

    iget-object v2, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/WebView;

    invoke-direct {v1, v2, p1}, Lcom/uc/webview/export/internal/android/j;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebChromeClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    goto :goto_0
.end method

.method public setWebViewClient(Lcom/uc/webview/export/WebViewClient;)V
    .locals 3

    .prologue
    .line 611
    if-nez p1, :cond_0

    .line 612
    new-instance p1, Lcom/uc/webview/export/WebViewClient;

    invoke-direct {p1}, Lcom/uc/webview/export/WebViewClient;-><init>()V

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    new-instance v1, Lcom/uc/webview/export/internal/android/p;

    iget-object v2, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->b:Lcom/uc/webview/export/WebView;

    invoke-direct {v1, v2, p1}, Lcom/uc/webview/export/internal/android/p;-><init>(Lcom/uc/webview/export/WebView;Lcom/uc/webview/export/WebViewClient;)V

    invoke-virtual {v0, v1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 615
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 595
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->stopLoading()V

    .line 596
    return-void
.end method

.method public superComputeScroll()V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a()V

    .line 681
    return-void
.end method

.method public superDestroy()V
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->b()V

    .line 711
    return-void
.end method

.method public superDispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public superDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(Landroid/graphics/Canvas;)V

    .line 706
    return-void
.end method

.method public superOnConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(Landroid/content/res/Configuration;)V

    .line 686
    return-void
.end method

.method public superOnScrollChanged(IIII)V
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(IIII)V

    .line 696
    return-void
.end method

.method public superOnVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1, p2}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(Landroid/view/View;I)V

    .line 691
    return-void
.end method

.method public superOverScrollBy(IIIIIIIIZ)Z
    .locals 10

    .prologue
    .line 727
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method public superRequestLayout()V
    .locals 1

    .prologue
    .line 720
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->c()V

    .line 721
    return-void
.end method

.method public superSetVisibility(I)V
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0, p1}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->a(I)V

    .line 716
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 600
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/uc/webview/export/internal/android/WebViewAndroid;->a:Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;

    invoke-virtual {v0}, Lcom/uc/webview/export/internal/android/WebViewAndroid$WebViewAndroidInner;->zoomOut()Z

    move-result v0

    return v0
.end method
