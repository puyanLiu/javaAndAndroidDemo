.class public Lcom/alipay/mobile/egg/rpc/EggConfigRpcTask;
.super Landroid/os/AsyncTask;
.source "EggConfigRpcTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobile/egg/rpc/EggConfigListResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/alipay/mobile/egg/rpc/EggConfigListResult;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 22
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    aget-object v0, p1, v1

    if-eqz v0, :cond_0

    .line 23
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-wide v1, v0

    .line 27
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v3, "EggMgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "---EggConfigRpcTask--version:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "-------"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 30
    const-class v3, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 31
    new-instance v3, Lcom/alipay/mobile/egg/rpc/EggConfigReq;

    invoke-direct {v3}, Lcom/alipay/mobile/egg/rpc/EggConfigReq;-><init>()V

    .line 32
    invoke-virtual {v3, v1, v2}, Lcom/alipay/mobile/egg/rpc/EggConfigReq;->setVersion(J)V

    .line 36
    :try_start_0
    const-class v1, Lcom/alipay/mobile/egg/rpc/EggConfigRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/rpc/EggConfigRpcService;

    .line 35
    invoke-interface {v0, v3}, Lcom/alipay/mobile/egg/rpc/EggConfigRpcService;->queryEggConfig(Lcom/alipay/mobile/egg/rpc/EggConfigReq;)Lcom/alipay/mobile/egg/rpc/EggConfigListResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    :goto_1
    return-object v0

    .line 25
    :cond_0
    const-wide/16 v0, 0x0

    move-wide v1, v0

    goto :goto_0

    .line 39
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/rpc/EggConfigRpcTask;->doInBackground([Ljava/lang/Long;)Lcom/alipay/mobile/egg/rpc/EggConfigListResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/mobile/egg/rpc/EggConfigListResult;)V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 46
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->resultStatus:I

    if-ne v0, v5, :cond_1

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->getConfigs()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->configs:Ljava/util/List;

    .line 51
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->getConfigs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "egg_config_list"

    invoke-static {v1, v0}, Lcom/alipay/mobile/egg/util/EggHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string/jumbo v1, "egg_config_version"

    .line 54
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lcom/alipay/mobile/egg/util/EggHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string/jumbo v1, "egg_config_next_version"

    .line 56
    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->getVersion()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-static {v1, v2}, Lcom/alipay/mobile/egg/util/EggHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EggMgr"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "eggConfig:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->getVersion()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    iget v0, p1, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->resultStatus:I

    if-eq v0, v5, :cond_2

    iget v0, p1, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;->resultStatus:I

    const/16 v1, 0x130

    if-ne v0, v1, :cond_3

    .line 63
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->destroyInstance()V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getInstance()Lcom/alipay/mobile/egg/chatapp/EggMgr;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "EggMgr"

    const-string/jumbo v2, "EggMgr reset"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_3
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "EggMgr"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobile/egg/rpc/EggConfigListResult;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/egg/rpc/EggConfigRpcTask;->onPostExecute(Lcom/alipay/mobile/egg/rpc/EggConfigListResult;)V

    return-void
.end method
