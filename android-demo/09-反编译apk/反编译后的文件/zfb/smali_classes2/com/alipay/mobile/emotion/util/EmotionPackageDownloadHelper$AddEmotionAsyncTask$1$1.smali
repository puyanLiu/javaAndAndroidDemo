.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;
.super Ljava/lang/Object;
.source "EmotionPackageDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 191
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;-><init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 192
    iget-object v3, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$PurchaseEmotionPackageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 193
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;->Success:Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;

    .line 196
    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;->access$1(Ljava/lang/String;Lcom/alipay/mobile/emotion/util/EmoiDownloader$DownloadStatus;)V

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onSuccess()V

    .line 199
    return-void
.end method
