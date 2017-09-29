.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/pcredit/PcreditManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyRepay(Lcom/alipay/mobilewealth/biz/service/gw/request/pcredit/ApplyRepayReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/ApplyRepayResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.applyrepay"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkIsSigned()Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/CheckSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.checkIsSigned"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract qualificationCheck()Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/QualificationResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.qulificationCheck"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendSmsCode()Lcom/alipay/mobilewealth/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.sendsmscode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sign(Ljava/lang/String;)Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/PcreditSignResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.sign"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract signValidate(Lcom/alipay/mobilewealth/biz/service/gw/request/pcredit/SignValidateReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/pcredit/SignValidateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.pcredit.signValidate"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
