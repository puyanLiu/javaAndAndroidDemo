.class Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$cb:Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$2;->val$cb:Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->readOspSwitches()Lcom/alipay/mobile/onsitepaystatic/OspSwitches;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/alipay/mobile/onsitepaystatic/OspSwitches;->queryPayChannelSwitch:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "do pull pay channels, switches: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$2;->val$cb:Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->access$1(Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz$OnFatchDone;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/onsitepaystatic/ConfigUtilBiz;->access$0()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "skip pull pay channels, switches: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
