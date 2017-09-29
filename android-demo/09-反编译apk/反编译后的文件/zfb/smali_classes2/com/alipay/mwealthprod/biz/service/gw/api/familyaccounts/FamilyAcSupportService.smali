.class public interface abstract Lcom/alipay/mwealthprod/biz/service/gw/api/familyaccounts/FamilyAcSupportService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract authToContacter(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/AuthYebToContacterReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/YebAuthResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.authToContacter"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract modifyTransferMemo(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/ModifyFamilyAcTransferMemoReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CommonFamilyAcResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.modifyTransferMemo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract openGroupAndInvite(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/CreateGroupAndInviteFriendsReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/CreateGroupResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.openGroupAndInvite"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract openSimpleWallet(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/OpenSimpleWalletReq;)Lcom/alipay/mwealthprod/common/service/facade/result/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.openSimpleWallet"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryFamilyAppResources(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/QueryFamilyAppResourcesReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/QueryFamilyAppResourcesResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.queryFamilyAppResources"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryTransToYebRecord(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/QueryTransToYebRecordReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/QueryTransToYebRecordResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.queryTransToYebRecord"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract removeYebSubcardAgreement(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/RemoveYebSubcardAgreementReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/RemoveYebSubcardAgreementResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.removeYebSubcardAgreement"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract yebAuthDeclare(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/AuthYebToContacterReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/YebAuthDeclareResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.yebAuthDeclare"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
