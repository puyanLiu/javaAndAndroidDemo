.class Lcom/alipay/mobile/nebulacore/web/H5WebView$1;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebViewListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private final synthetic b:Landroid/app/Activity;

.field private final synthetic c:Lcom/alipay/mobile/h5container/api/H5Page;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Landroid/app/Activity;Lcom/alipay/mobile/h5container/api/H5Page;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "H5WebView"

    const-string/jumbo v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->b:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->c:Lcom/alipay/mobile/h5container/api/H5Page;

    invoke-interface {v0}, Lcom/alipay/mobile/h5container/api/H5Page;->exitPage()Z

    .line 106
    :cond_0
    return-void
.end method

.method public overScrollBy(IIII)Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$1;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;)Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/refresh/OverScrollListener;->onOverScrolled(IIII)V

    .line 96
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
