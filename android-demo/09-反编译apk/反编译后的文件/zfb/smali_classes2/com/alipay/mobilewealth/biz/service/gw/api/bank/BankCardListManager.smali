.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bank/BankCardListManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryBankcardList()Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.list.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryBankcardListV920()Lcom/alipay/mobilewealth/biz/service/gw/result/bank/BankCardListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.list.queryV920"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
