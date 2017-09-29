.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/family/FamilyYebTransferManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract applyTransferIn(Lcom/alipay/mobilewealth/biz/service/gw/request/family/FamilyYebApplyTransferInReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebApplyTransferInResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.family.applyTransferIn"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract applyTransferOut(Lcom/alipay/mobilewealth/biz/service/gw/request/family/FamilyYebApplyTransferOutReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebApplyTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.family.applyTransferOut"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract transferInSuccess(Lcom/alipay/mobilewealth/biz/service/gw/request/mfund/FundTransferInSuccessReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebTransferInSucResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.family.transferInSuccess"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract transferOut(Lcom/alipay/mobilewealth/biz/service/gw/request/family/FamilyYebTransferOutReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebTransferOutResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.family.transferOut"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
