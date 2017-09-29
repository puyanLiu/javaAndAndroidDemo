.class public interface abstract Lcom/alipay/mobilechat/biz/emotion/rpc/api/EmotionPackageRpcService;
.super Ljava/lang/Object;
.source "EmotionPackageRpcService.java"


# virtual methods
.method public abstract purchaseEmotionPackage(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.emotionpackage.add"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryEmotionPackage(Ljava/lang/String;Z)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.emotionpackage.selectOne"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryEmotionPackageDownloadHistory(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.emotionpackage.selectHistory"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract queryEmotionPackageList(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.emotionpackage.selectList"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
