.class final Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;
.super Lcom/uc/webview/export/WebView;
.source "UCWebView.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    .line 43
    invoke-direct {p0, p2}, Lcom/uc/webview/export/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;-><init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public coreOverScrollBy(IIIIIIIIZ)Z
    .locals 1

    .prologue
    .line 50
    if-gez p2, :cond_0

    if-nez p4, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$0(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$0(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->overScrollBy(IIII)Z

    move-result v0

    .line 53
    :goto_0
    return v0

    :cond_0
    invoke-super/range {p0 .. p9}, Lcom/uc/webview/export/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/uc/webview/export/WebView;->onDetachedFromWindow()V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$0(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$WebViewEx;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulauc/impl/UCWebView;->access$0(Lcom/alipay/mobile/nebulauc/impl/UCWebView;)Lcom/alipay/mobile/nebula/webview/APWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebViewListener;->onDetachedFromWindow()V

    .line 65
    :cond_0
    return-void
.end method
