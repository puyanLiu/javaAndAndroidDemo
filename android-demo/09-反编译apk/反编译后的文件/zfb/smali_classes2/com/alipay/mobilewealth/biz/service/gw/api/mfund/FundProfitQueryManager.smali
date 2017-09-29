.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundProfitQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryFundProfitRate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/ProfitRateQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/ProfitRateQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.profit.rate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundTenThousandProfit(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/TenThousandProfitQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/TenThousandProfitQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.tenthousandincome"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryUserProfitDetails(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/ProfitQueryReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/ProfitQueryResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.query.profit"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
