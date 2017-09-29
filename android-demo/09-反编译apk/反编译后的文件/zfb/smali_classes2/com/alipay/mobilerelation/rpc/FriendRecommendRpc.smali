.class public interface abstract Lcom/alipay/mobilerelation/rpc/FriendRecommendRpc;
.super Ljava/lang/Object;


# virtual methods
.method public abstract enableFriend()Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.enableFriend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract getMobileContactList(Lcom/alipay/mobilerelation/rpc/protobuf/request/Request;)Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.pb.getMobileContact"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract markRecommend()Lcom/alipay/mobilerelation/common/service/facade/result/BaseResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilerelation.friend.markRecommend"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
