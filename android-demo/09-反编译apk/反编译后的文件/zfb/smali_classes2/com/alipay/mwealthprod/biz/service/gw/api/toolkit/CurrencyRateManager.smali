.class public interface abstract Lcom/alipay/mwealthprod/biz/service/gw/api/toolkit/CurrencyRateManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAllCurrencyRate(Lcom/alipay/mwealthprod/biz/service/gw/request/toolkit/QueryAllCurrencyRateReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/toolkit/QueryAllCurrencyRateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.toolkit.currency.rate.queryAll"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
