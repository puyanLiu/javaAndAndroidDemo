.class public interface abstract Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;
.super Ljava/lang/Object;
.source "CustomEmotionRpcService.java"


# virtual methods
.method public abstract addCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.customemotion.add"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method

.method public abstract deleteFavoriteEmotions(Ljava/util/List;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.customemotion.batchDelete"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;"
        }
    .end annotation
.end method

.method public abstract queryCustomEmotionByUser()Lcom/alipay/mobilechat/biz/emotion/rpc/response/CustomEmotionResp;
    .annotation runtime Lcom/alipay/mobile/framework/service/annotation/OperationType;
        value = "alipay.mobilechat.customemotion.select"
    .end annotation

    .annotation runtime Lcom/alipay/mobile/framework/service/ext/annotation/CheckLogin;
    .end annotation
.end method
