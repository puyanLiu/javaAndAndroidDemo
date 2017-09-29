.class public interface abstract Lcom/alipay/tscenter/biz/rpc/pb/DeviceDataReportPBService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract reportStaticData(Lcom/alipay/tscenter/biz/rpc/pb/request/DeviceDataReportRequest;)Lcom/alipay/tscenter/biz/rpc/pb/result/DeviceDataReportResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.security.deviceFingerPrint.staticData.report.pb"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
