.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/util/NetworkUtil$NetworkListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkChanged(Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;Lcom/alipay/mobile/emotion/util/NetworkUtil$Network;)V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 129
    const-string/jumbo v0, "wifi"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->isForceStop:Z

    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string/jumbo v0, "none"

    invoke-static {}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getInstance()Lcom/alipay/mobile/emotion/util/NetworkUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/util/NetworkUtil;->getNetworkString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    goto :goto_0

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;)V

    goto :goto_0
.end method
