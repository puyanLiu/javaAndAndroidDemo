.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/bank/ExpressValidateManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract resendCheckCode(Ljava/lang/String;)Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.bankcard.express.resendCheckCode"
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
