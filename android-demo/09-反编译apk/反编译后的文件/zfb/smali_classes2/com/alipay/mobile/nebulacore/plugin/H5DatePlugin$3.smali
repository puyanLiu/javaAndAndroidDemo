.class Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;
.super Ljava/lang/Object;
.source "H5DatePlugin.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

.field private final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;->a:Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DatePlugin$3;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v1, "error"

    const-string/jumbo v2, "11"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 136
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 137
    return-void
.end method
