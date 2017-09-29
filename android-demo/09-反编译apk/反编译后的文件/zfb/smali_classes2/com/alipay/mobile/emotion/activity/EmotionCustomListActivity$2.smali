.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$9(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$10(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 167
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->updateGridView()V

    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$12(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 169
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$11(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    goto :goto_0
.end method
