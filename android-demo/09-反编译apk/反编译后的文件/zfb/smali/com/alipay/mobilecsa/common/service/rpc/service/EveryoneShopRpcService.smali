.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/EveryoneShopRpcService;
.super Ljava/lang/Object;
.source "EveryoneShopRpcService.java"


# virtual methods
.method public abstract allPeopleOpenShopIndex(Lcom/alipay/mobilecsa/common/service/rpc/request/EveryShopRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/OpenShopIndexResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.allPeopleOpenShopIndex"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract checkOpenShop(Lcom/alipay/mobilecsa/common/service/rpc/request/CheckOpenShopRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.checkOpenShop"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract inviteShopList(Lcom/alipay/mobilecsa/common/service/rpc/request/InviteShopListRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/InviteShopListResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.inviteShopList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract myRecordCollectShops(Lcom/alipay/mobilecsa/common/service/rpc/request/EveryShopRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/MyCollectShopsResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.myRecordCollectShops"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract myRecordInviteShops(Lcom/alipay/mobilecsa/common/service/rpc/request/EveryShopRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/MyInviteShopsResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.myRecordInviteShops"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
