.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/pcredit/PcreditQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAccountInfo(Z)Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/PcreditAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.queryAccountInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBillDetail(Lcom/alipay/mobilewealth/biz/service/gw/request/pcredit/BillDetailReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/BillDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.querybilldetail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBillList(Lcom/alipay/mobilewealth/biz/service/gw/request/pcredit/BillListReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/BillListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.querybilllist"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryPcreditProdInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/PcreditProdInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.queryPcreditProdInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
