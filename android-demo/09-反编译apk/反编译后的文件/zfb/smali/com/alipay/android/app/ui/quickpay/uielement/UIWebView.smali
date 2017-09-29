.class public Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;
.super Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Z

.field private L:Landroid/app/Activity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;-><init>()V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->K:Z

    .line 42
    return-void
.end method

.method static synthetic a(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;)Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->K:Z

    return v0
.end method


# virtual methods
.method protected final a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->L:Landroid/app/Activity;

    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/app/sys/DeviceInfo;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(Landroid/app/Activity;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 70
    :cond_0
    if-nez v0, :cond_1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->K:Z

    .line 72
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 74
    :cond_1
    return-object v0
.end method

.method protected final a(Landroid/app/Activity;Landroid/view/View;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 80
    invoke-super {p0, p1, p2}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->I:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->I:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->b(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v0

    .line 88
    :goto_0
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->H:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 89
    iget-object v1, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->H:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/alipay/android/app/ui/quickpay/util/UIPropUtil;->a(Ljava/lang/String;Landroid/app/Activity;)I

    move-result v1

    .line 93
    :goto_1
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 94
    if-nez v2, :cond_3

    .line 95
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 100
    :goto_2
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->J:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 101
    iget-boolean v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->K:Z

    if-nez v0, :cond_0

    .line 102
    check-cast p2, Landroid/webkit/WebView;

    .line 103
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 104
    invoke-virtual {p2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 105
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/ap;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ap;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 112
    new-instance v0, Lcom/alipay/android/app/ui/quickpay/uielement/aq;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/aq;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 123
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 125
    :cond_0
    return-void

    .line 86
    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 91
    :cond_2
    const/4 v1, -0x2

    goto :goto_1

    .line 97
    :cond_3
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 98
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2
.end method

.method public final a(Lcom/alipay/android/app/json/JSONObject;)V
    .locals 1

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->a(Lcom/alipay/android/app/json/JSONObject;)V

    .line 47
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    const-string/jumbo v0, "height"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->H:Ljava/lang/String;

    .line 50
    :cond_0
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string/jumbo v0, "width"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->I:Ljava/lang/String;

    .line 53
    :cond_1
    const-string/jumbo v0, "alt"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54
    const-string/jumbo v0, "alt"

    invoke-virtual {p1, v0}, Lcom/alipay/android/app/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->J:Ljava/lang/String;

    .line 56
    :cond_2
    return-void
.end method

.method public final c()Lcom/alipay/android/app/json/JSONObject;
    .locals 1

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->o()Lcom/alipay/android/app/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/alipay/android/app/ui/quickpay/uielement/BaseElement;->dispose()V

    .line 135
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->L:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;->L:Landroid/app/Activity;

    new-instance v1, Lcom/alipay/android/app/ui/quickpay/uielement/ar;

    invoke-direct {v1, p0}, Lcom/alipay/android/app/ui/quickpay/uielement/ar;-><init>(Lcom/alipay/android/app/ui/quickpay/uielement/UIWebView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 145
    :cond_0
    return-void
.end method

.method protected final p()I
    .locals 1

    .prologue
    .line 60
    const-string/jumbo v0, "mini_ui_webview"

    invoke-static {v0}, Lcom/alipay/android/app/util/ResUtils;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
