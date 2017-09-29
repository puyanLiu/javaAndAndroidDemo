.class public Lcom/flybird/FBWebView;
.super Lcom/flybird/FBView;
.source "FBWebView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/alipay/mobile/h5container/api/H5Page;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/flybird/FBDocument;)V
    .locals 3

    .prologue
    .line 36
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/flybird/FBView;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/flybird/FBDocument;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/flybird/FBWebView;->k:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    invoke-static {p1, v0}, Lcom/alipay/android/app/template/UiAssistantor;->inflateWebView(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/h5container/api/H5Page;

    move-result-object v0

    iput-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    iget-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->getContentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    const-string/jumbo v0, "alipay_msp_view_wrapper"

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "com.alipay.android.app.template"

    invoke-static {p1, v0, v1, v2}, Lcom/alipay/android/app/template/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    invoke-virtual {v1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/flybird/FBView;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/flybird/FBView;->j:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void

    .line 37
    :cond_0
    invoke-direct {p0}, Lcom/flybird/FBWebView;->a()Landroid/content/res/AssetManager;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/flybird/FBWebView;->a(Landroid/webkit/WebView;)V

    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method private a()Landroid/content/res/AssetManager;
    .locals 7

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBWebView;->e:Lcom/flybird/FBDocument;

    iget-object v0, v0, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :try_start_1
    const-class v1, Landroid/content/res/AssetManager;

    const-string/jumbo v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    .line 62
    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 63
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :try_start_2
    iget-object v2, p0, Lcom/flybird/FBWebView;->e:Lcom/flybird/FBDocument;

    iget-object v2, v2, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "android:string/config_webViewPackageName"

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/flybird/FBWebView;->e:Lcom/flybird/FBDocument;

    iget-object v4, v4, Lcom/flybird/FBDocument;->mContext:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v4, v2, v3}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 68
    :cond_0
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static a(Landroid/webkit/WebView;)V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 88
    new-instance v0, Lcom/flybird/FBWebView$1;

    invoke-direct {v0}, Lcom/flybird/FBWebView$1;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "removeJavascriptInterface"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "searchBoxJavaBridge_"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "accessibility"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "accessibilityTraversal"

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 107
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 108
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 109
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 110
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 111
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 112
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 114
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 115
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->setScrollbarFadingEnabled(Z)V

    .line 116
    new-instance v0, Lcom/flybird/FBWebView$2;

    invoke-direct {v0}, Lcom/flybird/FBWebView$2;-><init>()V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public doDestroy()V
    .locals 1

    .prologue
    .line 185
    invoke-super {p0}, Lcom/flybird/FBView;->doDestroy()V

    .line 186
    iget-boolean v0, p0, Lcom/flybird/FBWebView;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-static {v0}, Lcom/alipay/android/app/template/UiAssistantor;->destroyH5WebView(Lcom/alipay/mobile/h5container/api/H5Page;)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    goto :goto_0
.end method

.method public updateAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 126
    const-string/jumbo v0, "src"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0, p2}, Lcom/alipay/mobile/h5container/api/H5Page;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string/jumbo v1, "FBWebView"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 136
    :cond_2
    const-string/jumbo v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    const-string/jumbo v1, "text/html"

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, p2, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_3
    iget-object v0, p0, Lcom/flybird/FBWebView;->b:Lcom/alipay/mobile/h5container/api/H5Page;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 147
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateCSS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 152
    const-string/jumbo v0, "font-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 155
    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 156
    iget-object v0, p0, Lcom/flybird/FBWebView;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 157
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    .line 158
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/flybird/FBWebView;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 165
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 166
    iget-object v0, p0, Lcom/flybird/FBWebView;->mView:Landroid/view/View;

    check-cast v0, Lcom/alipay/mobile/nebula/webview/APWebView;

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setTextZoom(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    :try_start_2
    const-string/jumbo v1, "FBWebView"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 175
    :catch_1
    move-exception v0

    .line 176
    const-string/jumbo v1, "FBWebView"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 179
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/flybird/FBView;->updateCSS(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
