.class public Lcom/alipay/mobile/nebulacore/web/H5WebView;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebView;
.implements Lcom/alipay/mobile/nebulacore/refresh/H5PullableView;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5WebView"

.field private static c:I


# instance fields
.field protected a:Lcom/alipay/mobile/nebula/webview/APWebView;

.field protected b:Landroid/os/Bundle;

.field private d:Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->c:I

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    .line 65
    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:Z

    .line 68
    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->b:Landroid/os/Bundle;

    .line 69
    const-string/jumbo v2, "bizType"

    invoke-static {p3, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 70
    const-string/jumbo v3, "H5WebView"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "createWebView bizType "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {}, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->instance()Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;

    move-result-object v3

    invoke-virtual {v3, v2, p1}, Lcom/alipay/mobile/nebulacore/factory/H5WebViewFactory;->createWebView(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v3

    iput-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    .line 72
    iget-object v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v3, :cond_0

    .line 73
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "couldn\'t instantiate WebView instance for bizType:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_2

    .line 77
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/web/H5HardwarePolicy;->shouldDisableHardwareAccelerate()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/nebula/webview/WebViewType;->SYSTEM_BUILD_IN:Lcom/alipay/mobile/nebula/webview/WebViewType;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/nebula/webview/WebViewType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_1

    .line 82
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    new-instance v1, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;)V

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V

    .line 108
    sget v0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alipay/mobile/nebulacore/web/H5WebView;->c:I

    iput v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    .line 109
    return-void

    :cond_2
    move v0, v1

    .line 76
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string/jumbo v1, "H5WebView"

    const-string/jumbo v2, "set webview layer exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->d:Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 243
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 244
    const-string/jumbo v0, ""

    .line 246
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 247
    if-eqz v2, :cond_0

    .line 249
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    .line 250
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 251
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 252
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " AlipayDefined(nt:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    const-string/jumbo v5, ",ws:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "|"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 259
    :goto_0
    const-string/jumbo v3, ""

    .line 260
    const-string/jumbo v2, ""

    .line 261
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;

    .line 262
    if-eqz v0, :cond_1

    .line 263
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-interface {v0}, Lcom/alipay/mobile/nebula/provider/H5EnvProvider;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " AliApp(AP/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ") AlipayClient/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 268
    return-object v0

    .line 255
    :catch_0
    move-exception v1

    .line 256
    const-string/jumbo v2, "H5WebView"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v2, v3

    goto :goto_1
.end method

.method static synthetic a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    :try_start_0
    const-string/jumbo v1, "javascript"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "H5WebView"

    const-string/jumbo v2, "loadUrl exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 3

    .prologue
    .line 648
    :try_start_0
    const-string/jumbo v0, "H5WebView"

    const-string/jumbo v1, "loadBlankPage"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->reload()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView$4;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "H5WebView"

    const-string/jumbo v2, "loadBlankPage exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 3

    .prologue
    .line 667
    :try_start_0
    const-string/jumbo v0, "H5WebView"

    const-string/jumbo v1, "releaseWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->stopLoading()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearHistory()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->clearSslPreferences()V

    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->freeMemory()V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "H5WebView"

    const-string/jumbo v2, "releaseWebView exception."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearCache(Z)V

    .line 568
    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearFormData()V

    .line 573
    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearHistory()V

    .line 578
    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->clearSslPreferences()V

    .line 583
    return-void
.end method

.method public copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->copyBackForwardList()Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->destroy()V

    .line 408
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
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
    .line 447
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 448
    return-void
.end method

.method public flingScroll(II)V
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->flingScroll(II)V

    .line 353
    return-void
.end method

.method public freeMemory()V
    .locals 1

    .prologue
    .line 562
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->freeMemory()V

    .line 563
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getProgress()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .prologue
    .line 283
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    .line 284
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGEST:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .line 292
    :goto_0
    return-object v0

    .line 285
    :cond_0
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1

    .line 286
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->LARGER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0

    .line 287
    :cond_1
    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    .line 288
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0

    .line 289
    :cond_2
    const/16 v0, 0x4b

    if-lt p1, v0, :cond_3

    .line 290
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->SMALLER:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0

    .line 292
    :cond_3
    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;->NORMAL:Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/alipay/mobile/nebula/webview/WebViewType;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getType()Lcom/alipay/mobile/nebula/webview/WebViewType;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 726
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_0

    .line 727
    const-string/jumbo v0, "(Null webview)"

    .line 729
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getVersion()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final getWebViewConfig()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->b:Landroid/os/Bundle;

    return-object v0
.end method

.method public getWebViewIndex()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->e:I

    return v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBack()V

    .line 468
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->goBackOrForward(I)V

    .line 488
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->goForward()V

    .line 478
    return-void
.end method

.method public init(Z)V
    .locals 7

    .prologue
    const/16 v6, 0x13

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 116
    const-string/jumbo v0, "H5WebView"

    const-string/jumbo v1, "initWebView"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "H5WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "applyCustomSettings allowAccessFromFileURL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v1

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setEnableFastScroller(Z)V

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setPageCacheCapacity(I)V

    const-string/jumbo v0, "utf-8"

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSupportMultipleWindows(Z)V

    const/4 v0, 0x1

    :try_start_0
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/16 v0, 0x10

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDefaultFontSize(I)V

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSavePassword(Z)V

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSaveFormData(Z)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setLoadsImagesAutomatically(Z)V

    sget-object v0, Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;->ON:Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDomStorageEnabled(Z)V

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowFileAccess(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->getApplicationDir()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/app_h5container"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDatabaseEnabled(Z)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v6, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/databases"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/databases"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDatabasePath(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/appcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/appcache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAppCachePath(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAppCacheEnabled(Z)V

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/nebulacore/util/NetworkUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/util/NetworkUtil;->getNetworkType()Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;->NETWORK_NO_CONNECTION:Lcom/alipay/mobile/nebulacore/util/NetworkUtil$Network;

    if-ne v2, v3, :cond_6

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setCacheMode(I)V

    :goto_1
    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setBuiltInZoomControls(Z)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setSupportZoom(Z)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setLoadWithOverviewMode(Z)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUseWideViewPort(Z)V

    invoke-interface {v1, v4}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setGeolocationEnabled(Z)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/geolocation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->mkdirs(Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "/geolocation"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_1

    invoke-interface {v1, v5}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setDisplayZoomControls(Z)V

    :cond_1
    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-interface {v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v6, :cond_2

    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-ge v0, v2, :cond_3

    const-string/jumbo v0, "searchBoxJavaBridge_"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string/jumbo v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_3
    :try_start_1
    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;

    move-result-object v0

    const-class v3, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/nebula/provider/H5ProviderManager;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/provider/H5UaProvider;

    if-eqz v0, :cond_7

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebula/provider/H5UaProvider;->getUa(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-interface {v1, v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    const-string/jumbo v2, "H5WebView"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "set final ua "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "H5WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "final user agent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    if-nez v0, :cond_5

    .line 119
    const-string/jumbo v0, "H5WebView"

    const-string/jumbo v1, "FATAL ERROR, the internal glue apWebView is null!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_5
    return-void

    .line 117
    :catch_0
    move-exception v0

    const-string/jumbo v2, "H5WebView"

    const-string/jumbo v3, "Ignore the exception in AccessibilityInjector when init"

    invoke-static {v2, v3}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "H5WebView"

    const-string/jumbo v3, "exception detail"

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setCacheMode(I)V

    goto/16 :goto_1

    :cond_7
    :try_start_2
    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    const-string/jumbo v1, "H5WebView"

    const-string/jumbo v2, "setUserAgent exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->invokeZoomPicker()V

    .line 508
    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->isPaused()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 298
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 302
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 305
    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
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
    .line 427
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 428
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->onPause()V

    .line 548
    return-void
.end method

.method public onRelease()V
    .locals 3

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:Z

    if-eqz v0, :cond_0

    .line 646
    :goto_0
    return-void

    .line 635
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->f:Z

    .line 636
    const-string/jumbo v0, "H5WebView"

    const-string/jumbo v1, "releaseWebView!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    new-instance v0, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView$3;-><init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;)V

    .line 645
    const-wide/16 v1, 0x3e8

    .line 639
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->onResume()V

    .line 553
    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/nebula/webview/APWebView;->postUrl(Ljava/lang/String;[B)V

    .line 433
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->reload()V

    .line 458
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 616
    const-string/jumbo v0, "H5WebView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "removeJavascriptInterface "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 618
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 620
    :cond_0
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->restoreState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebView;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->saveState(Landroid/os/Bundle;)Lcom/alipay/mobile/nebula/webview/APWebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public setAPWebViewListener(Lcom/alipay/mobile/nebula/webview/APWebViewListener;)V
    .locals 0

    .prologue
    .line 714
    return-void
.end method

.method public setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setDownloadListener(Lcom/alipay/mobile/nebula/webview/APDownloadListener;)V

    .line 593
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHorizontalScrollbarOverlay(Z)V

    .line 368
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public setInitialScale(I)V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setInitialScale(I)V

    .line 503
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setNetworkAvailable(Z)V

    .line 413
    return-void
.end method

.method public setOverScrollListener(Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;)V
    .locals 0

    .prologue
    .line 333
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->d:Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;

    .line 334
    return-void
.end method

.method public setTextSize(I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    .line 274
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 275
    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextZoom(I)V

    .line 280
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getTextSize(I)Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    move-result-object v1

    .line 278
    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V

    goto :goto_0
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setVerticalScrollbarOverlay(Z)V

    .line 373
    return-void
.end method

.method public setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V
    .locals 4

    .prologue
    .line 607
    if-eqz p1, :cond_0

    .line 608
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 609
    const-string/jumbo v1, "H5WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setWebChromeClient "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebChromeClient(Lcom/alipay/mobile/nebula/webview/APWebChromeClient;)V

    .line 612
    return-void
.end method

.method public setWebContentsDebuggingEnabled(Z)V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 348
    return-void
.end method

.method public setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 4

    .prologue
    .line 598
    if-eqz p1, :cond_0

    .line 599
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 600
    const-string/jumbo v1, "H5WebView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setWebViewClient "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebView;->setWebViewClient(Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V

    .line 603
    return-void
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->stopLoading()V

    .line 453
    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a:Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->zoomOut()Z

    move-result v0

    return v0
.end method
