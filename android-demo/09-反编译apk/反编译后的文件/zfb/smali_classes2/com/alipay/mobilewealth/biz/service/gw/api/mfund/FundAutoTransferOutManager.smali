.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundAutoTransferOutManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract autoTransferOutApply()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.apply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutApplyUpdate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferOutOperateRuleReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.apply.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutCalcDate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferOutCalcDateReq;)Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferOutCalcDateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.calc.date"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutCtuAndUpdate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransfeCtuAndUpdateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutUpdateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.ctu.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutDeleteRule(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferDeleteRuleReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.delete"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutQuery(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferOutOperateRuleReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutQueryRuleResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutRulesQuery()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutApplyResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.rules.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutSendSMS(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferOutSMSSendReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundSendSMSResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.sms.send"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract autoTransferOutUpdate(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundAutoTransferOutUpdateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundAutoTransferOutUpdateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.auto.transferOut.update"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
