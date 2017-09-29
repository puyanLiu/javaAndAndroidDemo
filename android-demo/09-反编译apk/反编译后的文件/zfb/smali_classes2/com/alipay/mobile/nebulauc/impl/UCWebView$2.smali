.class Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;
.super Ljava/lang/Object;
.source "UCWebView.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$InjectJSProvider;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

.field private final synthetic val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/impl/UCWebView;Lcom/alipay/mobile/nebula/webview/APWebViewClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;->this$0:Lcom/alipay/mobile/nebulauc/impl/UCWebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJS(I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/impl/UCWebView$2;->val$apWebViewClient:Lcom/alipay/mobile/nebula/webview/APWebViewClient;

    invoke-interface {v1}, Lcom/alipay/mobile/nebula/webview/APWebViewClient;->getJSBridge()Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "<script>"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "</script>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
