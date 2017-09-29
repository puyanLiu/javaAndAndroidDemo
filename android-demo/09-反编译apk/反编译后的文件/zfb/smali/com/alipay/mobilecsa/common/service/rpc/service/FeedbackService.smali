.class public interface abstract Lcom/alipay/mobilecsa/common/service/rpc/service/FeedbackService;
.super Ljava/lang/Object;
.source "FeedbackService.java"


# virtual methods
.method public abstract addUserFeedback(Lcom/alipay/mobilecsa/common/service/rpc/request/UserFeedbackClientRequest;)Lcom/alipay/mobilecsa/common/service/rpc/response/BaseRpcResponse;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilecsa.addUserFeedback"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/SignCheck;
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
