.class Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;
.super Ljava/lang/Object;
.source "H5WebViewClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

.field private final synthetic b:Lcom/alipay/mobile/nebula/webview/APWebView;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->b:Lcom/alipay/mobile/nebula/webview/APWebView;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->c:Ljava/lang/String;

    iput p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->d:I

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->a:Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->b:Lcom/alipay/mobile/nebula/webview/APWebView;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->c:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient$2;->d:I

    invoke-static {v0, v1, v2, v3}, Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;->a(Lcom/alipay/mobile/nebulacore/web/H5WebViewClient;Lcom/alipay/mobile/nebula/webview/APWebView;Ljava/lang/String;I)V

    .line 372
    return-void
.end method
