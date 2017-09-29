.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/family/FamilyYebHomeManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract queryYebHomeInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/family/FamilyYebHomeInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebHomeInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.family.queryYebFamilyHomeInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryYebOpenInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/family/FamilyYebOpenInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/family/FamilyYebOpenInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.wealth.family.queryYebFamilyOpenInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
