.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;
.super Lcom/taobao/gcanvas/GCanvasWebView;
.source "H5WebChromeClient.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field private final synthetic b:Lcom/alipay/mobile/nebulacore/web/H5WebView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/view/View;Lcom/alipay/mobile/nebulacore/web/H5WebView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    .line 70
    invoke-direct {p0, p2}, Lcom/taobao/gcanvas/GCanvasWebView;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$1;->b:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getSettings()Lcom/alipay/mobile/nebula/webview/APWebSettings;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/alipay/mobile/nebula/webview/APWebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
