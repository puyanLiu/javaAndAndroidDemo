.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;
.super Lcom/uc/webview/export/extension/UCClient;
.source "UCWebView.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

.field private final synthetic val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 403
    invoke-direct {p0}, Lcom/uc/webview/export/extension/UCClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstVisuallyNonEmptyDraw()V
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onFirstVisuallyRender(Lcom/alipay/mobile/nebula/webview/APWebView;)V

    .line 420
    return-void
.end method

.method public onReceivedDispatchResponse(Ljava/util/HashMap;)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)V

    .line 408
    return-void
.end method

.method public onResourceDidFinishLoading(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onResourceFinishLoad(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;J)V

    .line 425
    return-void
.end method

.method public onWebViewEvent(Lcom/uc/webview/export/WebView;ILjava/lang/Object;)V
    .locals 2

    .prologue
    .line 412
    const/16 v0, 0x9

    if-ne v0, p2, :cond_0

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p2, p3}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->onWebViewEvent(Lcom/alipay/mobile/nebula/webview/APWebView;ILjava/lang/Object;)V

    .line 415
    :cond_0
    return-void
.end method

.method public onWillInterceptResponse(Ljava/util/HashMap;)Z
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$1;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-interface {v0, v1, p1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->shouldInterceptResponse(Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method
