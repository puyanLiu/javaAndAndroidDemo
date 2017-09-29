.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "EmotionPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

.field private final synthetic val$packageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->val$packageId:Ljava/lang/String;

    .line 262
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    .locals 2

    .prologue
    .line 268
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->getInstance(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->val$packageId:Ljava/lang/String;

    .line 268
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->getEmotionPackageDetail(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    .line 267
    return-object v0
.end method

.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 275
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->success:Z

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    .line 277
    if-nez v0, :cond_1

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->emotionPackageDetailVOs:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V

    goto :goto_0
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$5;->onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;[Ljava/lang/Object;)V

    return-void
.end method
