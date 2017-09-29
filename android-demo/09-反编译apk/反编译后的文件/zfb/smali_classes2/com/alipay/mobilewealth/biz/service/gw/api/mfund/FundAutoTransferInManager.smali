.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundAutoTransferInManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract autoTransferInApply()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInApplyUpdate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferInOperateRuleReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.apply.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInCtuAndUpdate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransfeCtuAndUpdateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInUpdateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.ctu.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInDeleteRule(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferDeleteRuleReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.delete"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInQuery(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferInOperateRuleReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInQueryRuleResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInRulesQuery()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.rules.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInSendSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferOutSMSSendReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundSendSMSResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.sms.send"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferInUpdate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferInUpdateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferInUpdateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferIn.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
