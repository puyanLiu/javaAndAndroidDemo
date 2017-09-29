.class public interface abstract Lcom/alipay/tscenter/biz/rpc/pb/AppListCmdPBService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getAppListCmd(Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.security.deviceFingerPrint.appListCmd.get.pb"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method

.method public abstract reGetAppListCmd(Lcom/alipay/tscenter/biz/rpc/pb/request/AppListCmdRequest;)Lcom/alipay/tscenter/biz/rpc/pb/result/AppListCmdResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.security.deviceFingerPrint.appListCmd.reGet.pb"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation
.end method
