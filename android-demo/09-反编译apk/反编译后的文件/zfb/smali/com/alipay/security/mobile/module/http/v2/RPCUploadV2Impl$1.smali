.class Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

.field final synthetic val$deviceDataReportRequest:Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    iput-object p2, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->val$deviceDataReportRequest:Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->access$100(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;)Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->val$deviceDataReportRequest:Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;

    invoke-interface {v1, v2}, Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;->reportStaticData(Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->access$002(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    new-instance v2, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    invoke-direct {v2}, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;-><init>()V

    invoke-static {v1, v2}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->access$002(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->access$000(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->success:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl$1;->this$0:Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;

    invoke-static {v1}, Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;->access$000(Lcom/alipay/security/mobile/module/http/v2/RPCUploadV2Impl;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "static data rpc upload error, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;->resultCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->getStackString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/Dbg;->log(Ljava/lang/String;)V

    goto :goto_0
.end method
