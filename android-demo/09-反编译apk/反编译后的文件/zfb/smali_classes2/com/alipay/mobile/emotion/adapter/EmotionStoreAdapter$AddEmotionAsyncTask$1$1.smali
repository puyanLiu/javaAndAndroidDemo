.class Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;
.super Ljava/lang/Object;
.source "EmotionStoreAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 346
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$PurchaseEmotionPackageTask;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$PurchaseEmotionPackageTask;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 347
    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$PurchaseEmotionPackageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 348
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 349
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 352
    sget-object v2, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 351
    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$1(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V

    .line 353
    const-string/jumbo v0, "1788303168490637619"

    .line 354
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const-string/jumbo v0, "KEY_BUILD_IN_FLAG"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/StorageHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_0
    return-void
.end method
