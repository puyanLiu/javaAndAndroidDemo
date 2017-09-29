.class public interface abstract Lcom/alipay/mwealthprod/biz/service/gw/api/familyaccounts/FamilyAcQueryManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryDetailInfo(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/FamilyAcDetailReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/FamilyAcDetailResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.queryDetailInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryHomeIndexInfo(Lcom/alipay/mwealthprod/biz/service/gw/request/familyaccounts/FamilyAcHomeIndexReq;)Lcom/alipay/mwealthprod/biz/service/gw/result/familyaccounts/FamilyAcHomeIndexResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mwealth.familyaccounts.queryHomeIndexInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
