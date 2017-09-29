.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "EmotionDetailActivity.java"


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
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

.field private final synthetic val$packageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->val$packageId:Ljava/lang/String;

    .line 466
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 471
    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->getInstance(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->val$packageId:Ljava/lang/String;

    .line 472
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->getEmotionPackageDetail(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    .line 471
    return-object v0
.end method

.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 479
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->success:Z

    if-eqz v0, :cond_1

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->updateListView(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    .line 481
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$14(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    if-eqz p1, :cond_0

    .line 483
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    iget-object v1, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;->resultView:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$12;->onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;[Ljava/lang/Object;)V

    return-void
.end method
