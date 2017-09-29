.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bank/BankCardDetailManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryCardDetail(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/BankCardDetailReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.detail.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryCardDetailV920(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/BankCardDetailReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardDetailV920Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.detail.queryV920"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
