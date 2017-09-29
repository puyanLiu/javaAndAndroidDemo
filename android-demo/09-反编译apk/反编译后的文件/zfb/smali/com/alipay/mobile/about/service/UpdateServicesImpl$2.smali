.class Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    iput-object p2, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UPDATE"

    const-string/jumbo v2, "\u68c0\u67e5\u5ba2\u6237\u7aef\u65b0\u7248\u672c"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/about/service/UpdateUtils;->buildClientVersionServiceReq()Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;->userId:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-static {v1}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$0(Lcom/alipay/mobile/about/service/UpdateServicesImpl;)Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/alipay/mobileapp/common/service/facade/version/ClientVersionServiceFacade;->versionUpdateCheck(Lcom/alipay/mobileapp/common/service/facade/version/model/ClientVersionServiceReq;)Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-static {v1, v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->access$1(Lcom/alipay/mobile/about/service/UpdateServicesImpl;Lcom/alipay/mobileapp/common/service/facade/version/model/ClientUpdateCheckRes;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateServicesImpl$2;->this$0:Lcom/alipay/mobile/about/service/UpdateServicesImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/about/service/UpdateServicesImpl;->updateImmediately()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "UPDATE"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5347\u7ea7\u5931\u8d25(checkUpdate)\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
