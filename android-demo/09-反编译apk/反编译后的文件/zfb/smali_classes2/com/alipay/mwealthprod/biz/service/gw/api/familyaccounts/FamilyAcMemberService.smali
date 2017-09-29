.class public interface abstract Lcom/alipay/mwealthprod/biz/service/gw/api/familyaccounts/FamilyAcMemberService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract consultRegiste(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/ConsultRegisteMemberReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.consultRegiste"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract sendCode(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/SendValidateCodeReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/SendValidateCodeResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.sendValidateCode"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
