.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "EmotionCustomListActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

.field private final synthetic val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Landroid/app/Activity;Landroid/view/View;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 696
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$21(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 703
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 704
    const-class v1, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    .line 702
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-interface {v0, v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;->addCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 711
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;->success:Z

    if-eqz v0, :cond_0

    .line 712
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->moveAddToBuild(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 713
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->updateGridView()V

    .line 715
    :cond_0
    return-void
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$16;->onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;[Ljava/lang/Object;)V

    return-void
.end method
