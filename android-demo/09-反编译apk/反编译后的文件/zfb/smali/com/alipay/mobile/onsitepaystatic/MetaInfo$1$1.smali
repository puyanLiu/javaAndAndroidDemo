.class Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1$1;->this$1:Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "commonbiz-MetaInfo"

    const-string/jumbo v2, " async start pull switch and pay channel in rpc"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1$1;->this$1:Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;->access$0(Lcom/alipay/mobile/onsitepaystatic/MetaInfo$1;)Lcom/alipay/mobile/onsitepaystatic/MetaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/onsitepaystatic/MetaInfo;->access$1(Lcom/alipay/mobile/onsitepaystatic/MetaInfo;)V

    return-void
.end method
