.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionDetailActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 366
    invoke-direct {p0, p2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 3
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
    .line 372
    .line 373
    const-string/jumbo v0, "packageId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 375
    const-string/jumbo v1, "progress"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 374
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 377
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setMax(I)V

    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$8;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->mAPProgressBar:Lcom/alipay/mobile/commonui/widget/APProgressBar;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APProgressBar;->setProgress(I)V

    .line 384
    :cond_0
    return-void
.end method
