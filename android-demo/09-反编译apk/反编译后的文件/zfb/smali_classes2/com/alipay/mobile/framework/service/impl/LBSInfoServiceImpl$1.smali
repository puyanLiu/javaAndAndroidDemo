.class Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;
.super Ljava/lang/Object;
.source "LBSInfoServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$5(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;->this$0:Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$6(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;->checkIn(Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;)Lcom/alipay/mobilelbs/rpc/checkin/resp/UserCheckInResponse;

    .line 352
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LBSInfoServiceImpl.upLoadLocation userCheckInService.checkIn"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v0

    .line 354
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->access$2()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LBSInfoServiceImpl.upLoadLocation new Thread"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
