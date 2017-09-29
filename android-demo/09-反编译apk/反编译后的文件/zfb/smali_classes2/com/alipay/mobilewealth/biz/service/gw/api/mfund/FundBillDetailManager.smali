.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundBillDetailManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryFundBillDetail(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundQueryBillDetailReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQueryBillDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.query.record.detail"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
