.class Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;
.super Ljava/lang/Object;
.source "H5WebChromeClient.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

.field private final synthetic b:Landroid/webkit/GeolocationPermissions$Callback;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->a:Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->b:Landroid/webkit/GeolocationPermissions$Callback;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->d:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->b:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v3, v3}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    .line 262
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/nebulacore/api/NebulaService;->getData()Lcom/alipay/mobile/h5container/api/H5Data;

    move-result-object v0

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->d:Ljava/lang/String;

    const-string/jumbo v2, "Y"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5Data;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->b:Landroid/webkit/GeolocationPermissions$Callback;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/web/H5WebChromeClient$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method
