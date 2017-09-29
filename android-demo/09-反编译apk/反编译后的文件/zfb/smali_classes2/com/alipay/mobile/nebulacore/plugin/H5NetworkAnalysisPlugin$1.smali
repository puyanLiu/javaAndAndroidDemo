.class Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;
.super Ljava/lang/Object;
.source "H5NetworkAnalysisPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I

.field private final synthetic d:Lcom/alibaba/fastjson/JSONObject;

.field private final synthetic e:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;Ljava/lang/String;ILcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->b:Ljava/lang/String;

    iput p3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->c:I

    iput-object p4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    iput-object p5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->e:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->b:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->c:I

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebulacore/util/PingUtil;->ping(Ljava/lang/String;I)Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 70
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->a:Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->e:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a(Lcom/alipay/mobile/nebulacore/util/PingUtil$PingResult;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5NetworkAnalysisPlugin$1;->d:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_0
    return-void

    .line 66
    :catch_0
    move-exception v1

    .line 67
    const-string/jumbo v2, "H5NetworkAnalysisPlugin"

    const-string/jumbo v3, "exception detail."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
