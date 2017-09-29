.class public interface abstract Lcom/alipay/mobilewealth/biz/service/gw/api/account/AccountManager;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getUserAccountInfo(Lcom/alipay/mobilewealth/biz/service/gw/request/account/UserAccountInfoReq;)Lcom/alipay/mobilewealth/biz/service/gw/result/account/UserAccountInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.account.getUserAccountInfo"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getUserAssetInfo()Lcom/alipay/mobilewealth/biz/service/gw/result/account/UserAssetInfoResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.kabao.asset.user.total"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
