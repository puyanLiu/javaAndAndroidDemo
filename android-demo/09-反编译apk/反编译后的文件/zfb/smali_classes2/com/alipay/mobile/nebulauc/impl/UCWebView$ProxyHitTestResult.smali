.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APHitTestResult;


# instance fields
.field mUCHitTestResult:Lcom/uc/webview/export/WebView$HitTestResult;

.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/uc/webview/export/WebView$HitTestResult;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;->mUCHitTestResult:Lcom/uc/webview/export/WebView$HitTestResult;

    .line 84
    return-void
.end method


# virtual methods
.method public getExtra()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;->mUCHitTestResult:Lcom/uc/webview/export/WebView$HitTestResult;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$ProxyHitTestResult;->mUCHitTestResult:Lcom/uc/webview/export/WebView$HitTestResult;

    invoke-virtual {v0}, Lcom/uc/webview/export/WebView$HitTestResult;->getType()I

    move-result v0

    return v0
.end method
