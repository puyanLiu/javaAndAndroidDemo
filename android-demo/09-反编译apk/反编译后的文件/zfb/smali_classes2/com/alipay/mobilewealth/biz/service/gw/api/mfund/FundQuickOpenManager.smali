.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundQuickOpenManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyFundQuickOpen(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundApplyQuickOpenReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyQuickOpenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract inputTranferInAmount(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundQuickOpenInputAmountReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQuickOpenInputAmountResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.input.amount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract inputTranferInCardNo(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundQuickOpenInputCardNoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundQuickOpenInputCardNoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.input.cardno"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract validateCheckCodeAndOpen(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundApplyQuickOpenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.quickopen.checkcode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
