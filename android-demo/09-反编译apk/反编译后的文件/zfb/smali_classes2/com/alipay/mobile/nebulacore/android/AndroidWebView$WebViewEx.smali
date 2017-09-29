.class final Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;
.super Landroid/webkit/WebView;
.source "AndroidWebView.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->a:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    .line 48
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->a:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->a:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onDetachedFromWindow()V

    .line 70
    :cond_0
    return-void
.end method

.method protected final overScrollBy(IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 55
    if-gez p2, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->a:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/android/AndroidWebView$WebViewEx;->a:Lcom/alipay/mobile/nebulacore/android/AndroidWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/android/AndroidWebView;->a(Lcom/alipay/mobile/nebulacore/android/AndroidWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->overScrollBy(IIII)Z

    move-result v0

    .line 58
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method
