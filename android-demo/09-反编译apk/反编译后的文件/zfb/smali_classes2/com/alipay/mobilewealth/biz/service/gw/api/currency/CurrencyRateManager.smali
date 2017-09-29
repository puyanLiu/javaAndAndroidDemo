.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/currency/CurrencyRateManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryAllCurrencyRate(Lcom/alipay/mobilewealth/biz/service/gw/request/currency/QueryAllCurrencyRateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/currency/QueryAllCurrencyRateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.toolkit.currency.rate.queryAll"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
