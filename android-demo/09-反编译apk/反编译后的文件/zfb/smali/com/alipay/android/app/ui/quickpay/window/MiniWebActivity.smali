.class public Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;
.super Lcom/alipay/android/app/AbsActivity;


# instance fields
.field private b:Landroid/webkit/WebView;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/ProgressBar;

.field private i:Ljava/lang/String;

.field private j:Landroid/widget/TextView;

.field private k:Z

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/alipay/android/app/AbsActivity;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    .line 55
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    .line 59
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    .line 61
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    return-void
.end method

.method private a()Landroid/content/res/AssetManager;
    .locals 7

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 133
    :try_start_1
    const-class v1, Landroid/content/res/AssetManager;

    const-string/jumbo v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    :try_start_2
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "android:string/config_webViewPackageName"

    const-string/jumbo v4, "string"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

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

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 137
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

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    return-object v0
.end method

.method private b()Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 162
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->a()Landroid/content/res/AssetManager;

    .line 163
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 173
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    .line 174
    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->l:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 178
    :cond_0
    const-string/jumbo v0, "mini_webView_frame"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    .line 180
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    const/16 v3, 0x1a0a

    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setId(I)V

    .line 183
    const-string/jumbo v0, "mini_webview_back"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    .line 184
    const-string/jumbo v0, "title_back_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_1

    .line 186
    new-instance v3, Lcom/alipay/android/app/ui/quickpay/window/ao;

    invoke-direct {v3, p0}, Lcom/alipay/android/app/ui/quickpay/window/ao;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_1
    const-string/jumbo v0, "mini_webview_forward"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    .line 198
    const-string/jumbo v0, "mini_webview_refresh"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    .line 200
    const-string/jumbo v0, "mini_web_title"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    .line 201
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 202
    const-string/jumbo v0, "mini_web_title_layout"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_2

    .line 204
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 211
    :cond_2
    :goto_0
    const-string/jumbo v0, "mini_web_ProgressBar_loading"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    .line 213
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 214
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 216
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 217
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 219
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 220
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 221
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 227
    const-string/jumbo v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/helper/MspConfig;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 231
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 235
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x7

    if-lt v0, v2, :cond_4

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "setDomStorageEnabled"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 239
    if-eqz v0, :cond_4

    .line 240
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ap;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/ap;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 287
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/ar;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/ar;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 334
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/as;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/as;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/at;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/at;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    new-instance v2, Lcom/alipay/android/app/ui/quickpay/window/au;

    invoke-direct {v2, p0}, Lcom/alipay/android/app/ui/quickpay/window/au;-><init>(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v2, "removeJavascriptInterface"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_5

    .line 359
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "searchBoxJavaBridge_"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "accessibility"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    iget-object v2, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "accessibilityTraversal"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    move v0, v1

    .line 367
    :goto_3
    return v0

    .line 164
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    move v0, v2

    .line 166
    goto :goto_3

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 208
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 242
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 364
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic c(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method private static c()V
    .locals 2

    .prologue
    .line 434
    sget-object v1, Lcom/alipay/android/app/ui/quickpay/window/MiniEventHandleHelper;->a:Ljava/lang/Object;

    .line 435
    monitor-enter v1

    .line 437
    :try_start_0
    const-string/jumbo v0, " MiniWebActivity notify caller"

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    .line 439
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic d(Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 429
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c()V

    .line 430
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->finish()V

    .line 431
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    .line 119
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 124
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 71
    invoke-super {p0, p1}, Lcom/alipay/android/app/AbsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 73
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 76
    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    .line 114
    :goto_0
    return-void

    .line 80
    :cond_0
    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->i:Ljava/lang/String;

    .line 81
    const-string/jumbo v1, "cookie"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->l:Ljava/lang/String;

    .line 83
    const-string/jumbo v1, "from_mcashier"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    .line 84
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    .line 85
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "openweb"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/android/app/util/Utils;->c(Ljava/lang/String;)Z

    move-result v0

    .line 92
    if-nez v0, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    goto :goto_0

    .line 98
    :cond_1
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/app/helper/MspConfig;->r()Lcom/alipay/android/app/helper/MspConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alipay/android/app/sys/GlobalContext;->a(Landroid/content/Context;Lcom/alipay/android/app/IAppConfig;)V

    .line 101
    const-string/jumbo v0, "mini_web_view"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->setContentView(I)V

    .line 102
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 103
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 104
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 106
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b()Z

    move-result v0

    .line 107
    if-nez v0, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->finish()V

    goto/16 :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 374
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c:Landroid/widget/FrameLayout;

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 377
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 378
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 379
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 380
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 381
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 382
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->b:Landroid/webkit/WebView;

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->d:Landroid/widget/ImageView;

    .line 388
    :cond_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 389
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->e:Landroid/widget/ImageView;

    .line 392
    :cond_3
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 393
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iput-object v1, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->f:Landroid/widget/ImageView;

    .line 396
    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->k:Z

    if-eqz v0, :cond_5

    .line 397
    invoke-static {}, Lcom/alipay/android/app/ui/quickpay/window/MiniWebActivity;->c()V

    .line 399
    :cond_5
    invoke-super {p0}, Lcom/alipay/android/app/AbsActivity;->onDestroy()V

    .line 400
    return-void
.end method
