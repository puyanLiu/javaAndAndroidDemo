.class Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;
.super Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;
.source "EmotionDownListActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    .line 180
    invoke-direct {p0, p2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerAdapter;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljava/util/Map;Landroid/os/Bundle;)V
    .locals 5
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
    .line 186
    .line 187
    const-string/jumbo v0, "packageId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    move-result-object v1

    .line 189
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->getModelByDataId(Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    .line 190
    if-nez v1, :cond_0

    .line 207
    :goto_0
    return-void

    .line 194
    :cond_0
    const-string/jumbo v0, "progress"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 193
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->mListView:Lcom/alipay/mobile/commonui/widget/APListView;

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v4, "#prg#Tag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/commonui/widget/APListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 196
    sget v3, Lcom/alipay/android/phone/emotion/R$layout;->emotion_store_item:I

    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 199
    check-cast v0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    .line 201
    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->onDownloading(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;ILcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 205
    invoke-static {}, Lcom/alipay/mobile/emotion/activity/EmotionDownListActivity;->access$7()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
