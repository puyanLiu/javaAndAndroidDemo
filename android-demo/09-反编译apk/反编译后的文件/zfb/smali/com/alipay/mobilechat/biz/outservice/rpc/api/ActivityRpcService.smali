.class public interface abstract Lcom/alipay/mobilechat/biz/outservice/rpc/api/ActivityRpcService;
.super Ljava/lang/Object;


# virtual methods
.method public abstract invite(Lcom/alipay/mobilechat/biz/outservice/rpc/request/ActivityInviteReq;)Lcom/alipay/mobilechat/biz/outservice/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.activie.invite"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
