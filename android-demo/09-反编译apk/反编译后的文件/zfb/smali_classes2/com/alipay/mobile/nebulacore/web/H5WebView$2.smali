.class Lcom/alipay/mobile/nebulacore/web/H5WebView$2;
.super Ljava/lang/Object;
.source "H5WebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->b:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->a:Lcom/alipay/mobile/nebulacore/web/H5WebView;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebView$2;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->a(Lcom/alipay/mobile/nebulacore/web/H5WebView;Ljava/lang/String;)V

    .line 310
    return-void
.end method
