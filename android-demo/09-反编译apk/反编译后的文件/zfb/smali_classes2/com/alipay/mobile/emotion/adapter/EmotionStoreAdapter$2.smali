.class Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;
.super Ljava/lang/Object;
.source "EmotionStoreAdapter.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

.field private final synthetic val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

.field private final synthetic val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$obj:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Ljava/util/HashMap;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$obj:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iput-object p5, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    return-object v0
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 296
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDownloadError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 287
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "paramAPFileDownloadRsp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 3

    .prologue
    .line 263
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "packageId"

    .line 264
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 268
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 269
    const-string/jumbo v1, "dwd:progressupdate"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$obj:Ljava/util/HashMap;

    .line 268
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 270
    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string/jumbo v1, ",onDownloadProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 3

    .prologue
    .line 249
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 249
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 251
    return-void
.end method
