.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;
.super Ljava/lang/Object;
.source "EmotionDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 621
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$PurchaseEmotionPackageTask;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$PurchaseEmotionPackageTask;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 622
    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 623
    invoke-virtual {v3}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 622
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$PurchaseEmotionPackageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 624
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 626
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    .line 625
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 627
    const-string/jumbo v0, "1788303168490637619"

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    const-string/jumbo v0, "KEY_BUILD_IN_FLAG"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 632
    sget-object v2, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 630
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V

    .line 633
    return-void
.end method
