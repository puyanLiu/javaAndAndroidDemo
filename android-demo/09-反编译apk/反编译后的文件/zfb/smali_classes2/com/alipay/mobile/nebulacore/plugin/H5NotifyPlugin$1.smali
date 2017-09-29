.class Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;
.super Ljava/lang/Object;
.source "H5NotifyPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

.field private final synthetic b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 79
    const-string/jumbo v0, "H5JSFuncs"

    const-string/jumbo v1, "toast show call back"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 81
    const-string/jumbo v1, "toastCallBack"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NotifyPlugin$1;->b:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 83
    return-void
.end method
