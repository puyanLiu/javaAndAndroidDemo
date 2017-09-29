.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$9;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionDetailActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$9;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 390
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
    .line 396
    .line 397
    const-string/jumbo v0, "packageId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 398
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$9;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$9;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;I)V

    .line 403
    :cond_0
    return-void
.end method
