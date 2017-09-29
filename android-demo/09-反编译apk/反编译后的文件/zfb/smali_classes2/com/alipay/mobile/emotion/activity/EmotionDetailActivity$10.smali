.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionDetailActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 409
    invoke-direct {p0, p2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 414
    .line 415
    const-string/jumbo v0, "packageId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$13(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getState()I

    move-result v0

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;I)V

    .line 427
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$10;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;I)V

    goto :goto_0
.end method
