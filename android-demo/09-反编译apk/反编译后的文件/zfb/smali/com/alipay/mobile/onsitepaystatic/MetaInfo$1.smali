.class Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/onsitepaystatic/MetaInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;->this$0:Lcom/alipay/mobile/onsitepaystatic/MetaInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;)Lcom/alipay/mobile/onsitepaystatic/MetaInfo;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;->this$0:Lcom/alipay/mobile/onsitepaystatic/MetaInfo;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, "get login PIPE Line!"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;->this$0:Lcom/alipay/mobile/onsitepaystatic/MetaInfo;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->access$0(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1$1;-><init>(Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "commonbiz-MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "is success:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ONSITEPAY_GET_INIT_ARGS_USE_RPC"

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->getConfigFromConfigServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "commonbiz-MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "get roll back switch "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->ftechConfigAtBackground(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, "register get osp switches sync receiver"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/MonitorHelper;->logRegistCallback()V

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->registGetOspSwitches()Z

    move-result v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "commonbiz-MetaInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "register result "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
