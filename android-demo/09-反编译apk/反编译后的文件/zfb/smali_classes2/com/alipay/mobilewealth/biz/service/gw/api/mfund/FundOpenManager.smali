.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/mfund/FundOpenManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract fundOpenAccount(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundOpenAccountReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundOpenAccountByOcertify(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundOpenAccountReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.ocertify.fund.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundOpenAccountV2(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundOpenAccountV2Req;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.fundOpenAccountV2"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract fundOpenApplyTransferIn(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundOpenApplyTransferInReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenApplyTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.fundOpenApplyTransferIn"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundIntroduction()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundIntroductionResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.operation.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundOpenInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.account.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFundOpenInfoV0()Lcom/alipay/mobilewealth/biz/service/gw/result/mfund/FundOpenInfoV0Result;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.open.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract querySignBankCardList()Lcom/alipay/mobilewealth/biz/service/gw/result/bank/SignBankCardListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.mfund.sign.bankcard.query"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract userRealNameAndOpenAccount(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/UserRealNameAndOpenAccountReq;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.fund.realname.open.account"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
