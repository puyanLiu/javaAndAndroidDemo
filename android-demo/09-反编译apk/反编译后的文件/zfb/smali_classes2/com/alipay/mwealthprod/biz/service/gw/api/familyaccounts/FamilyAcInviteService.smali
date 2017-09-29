.class public interface abstract Lcom/alipay/mwealthprod/biz/service/gw/api/familyaccounts/FamilyAcInviteService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract checkInvite(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/InviteReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/InviteResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.checkInvite"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract consultInvite(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/ConsultInviteReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/ConsultInviteResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.consultInvite"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract invite(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/InviteReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/InviteResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.invite"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract inviteApply(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/InviteApplyReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.inviteApply"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyFamilyAccount(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/ModifyFamilyAcReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/ModifyFamilyAcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.modifyFamilyAccount"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyInviteState(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/ModifyInviteStateReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/ModifyInviteStateResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.modifyInviteState"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeInvite(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/RemoveInviteReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/RemoveInviteResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.removeInvite"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
