.class public interface abstract Lcom/alipay/transferprod/rpc/CollectMoneyRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract consultSetAmount(Lcom/alipay/transferprod/rpc/req/ConsultSetAmountReq;)Lcom/alipay/transferprod/rpc/result/ConsultSetAmountRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.singlemoney.consultSetAmount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createSession(Lcom/alipay/transferprod/rpc/req/CreateSessionReq;)Lcom/alipay/transferprod/rpc/result/CreateSessionRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.singlemoney.createSession"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract createbill(Lcom/alipay/transferprod/rpc/req/CreateMoneyBillReq;)Lcom/alipay/transferprod/rpc/result/CreateMoneyBillRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.singlemoney.createbill"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract quitPay(Lcom/alipay/transferprod/rpc/req/QuitPayReq;)Lcom/alipay/transferprod/rpc/result/QuitPayRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.singlemoney.quitPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract quitSession(Lcom/alipay/transferprod/rpc/req/QuitSessionReq;)Lcom/alipay/transferprod/rpc/result/QuitSessionRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.singlemoney.quitSession"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract startPay(Lcom/alipay/transferprod/rpc/req/StartPayReq;)Lcom/alipay/transferprod/rpc/result/StartPayRes;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.transferprod.collect.singlemoney.startPay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
