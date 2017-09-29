.class Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "CustomEmotionDataManager.java"


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
.field final synthetic this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

.field private final synthetic val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 602
    invoke-direct {p0}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;
    .locals 2

    .prologue
    .line 608
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 609
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 610
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 611
    const-class v1, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;

    .line 607
    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-interface {v0, v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/api/CustomEmotionRpcService;->addCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 618
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;->success:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->moveAddToBuild(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 621
    :cond_0
    return-void
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$3;->onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/CommonResult;[Ljava/lang/Object;)V

    return-void
.end method
