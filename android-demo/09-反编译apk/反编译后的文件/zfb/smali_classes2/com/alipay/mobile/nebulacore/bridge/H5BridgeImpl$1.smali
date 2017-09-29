.class Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;
.super Ljava/lang/Object;
.source "H5BridgeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

.field private final synthetic b:Lcom/alipay/mobile/h5container/api/H5Event;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->a:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->a:Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl$1;->b:Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;->a(Lcom/alipay/mobile/nebulacore/bridge/H5BridgeImpl;Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 69
    return-void
.end method
