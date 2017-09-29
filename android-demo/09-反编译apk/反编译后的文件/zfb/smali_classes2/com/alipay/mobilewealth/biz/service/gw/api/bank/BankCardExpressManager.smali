.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bank/BankCardExpressManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getInputElement(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/InputElementReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/InputElementResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.getInputElement"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getInputElementV901(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/InputElementReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/InputElementResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.getInputElementV901"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryExpressNotice(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/ExpressNoticeReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ExpressNoticeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.notice"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract resendCheckCode(Ljava/lang/String;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.resendCheckCode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sign(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ExpressSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.sign"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signExpress(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/SignReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ExpressSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.bankcard.signExpress"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signValidate(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/SignValidateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ValidateSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.signValidate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signValidateV901(Lcom/alipay/mobilewealth/biz/service/gw/request/bank/SignValidateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/bank/ValidateSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.signValidateV901"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
