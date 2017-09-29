.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionCustomListActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 220
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
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0, p1, v1, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$13(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Ljava/util/Map;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mSyncLayout:Lcom/alipay/mobile/commonui/widget/APLinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APLinearLayout;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->mAPTitleBar:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$16(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    goto :goto_0
.end method
