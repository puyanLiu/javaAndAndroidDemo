.class Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;
.super Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;
.source "EmotionStoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alipay/mobile/common/rpc/ext/RpcExcutor",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

.field private final synthetic val$version:Ljava/lang/Long;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;Landroid/app/Activity;Landroid/view/View;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->val$version:Ljava/lang/Long;

    .line 271
    invoke-direct {p0, p2, p3}, Lcom/alipay/mobile/common/rpc/ext/RpcExcutor;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;)Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    return-object v0
.end method


# virtual methods
.method public varargs excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->getActivityApplication()Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->getInstance(Lcom/alipay/mobile/framework/app/ActivityApplication;)Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->val$version:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmotionRpcServiceBiz;->getEmotionPackageList(J)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method public bridge varargs synthetic excute([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->excute([Ljava/lang/Object;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    move-result-object v0

    return-object v0
.end method

.method public varargs onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;[Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;

    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    :cond_0
    return-void
.end method

.method public bridge varargs synthetic onRpcFinish(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/emotion/activity/EmotionStoreActivity$8;->onRpcFinish(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefResp;[Ljava/lang/Object;)V

    return-void
.end method
