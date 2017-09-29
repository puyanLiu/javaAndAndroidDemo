.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionCustomListActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 238
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
    const/4 v2, 0x0

    .line 243
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$17(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Z)V

    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0, p1, v2, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$13(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 245
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$16(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 247
    return-void
.end method
