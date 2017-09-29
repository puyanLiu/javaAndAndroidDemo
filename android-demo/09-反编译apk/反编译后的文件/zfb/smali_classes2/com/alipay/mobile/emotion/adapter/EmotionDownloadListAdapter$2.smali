.class Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;
.super Ljava/lang/Object;
.source "EmotionDownloadListAdapter.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

.field private final synthetic val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

.field private final synthetic val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$obj:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Ljava/util/HashMap;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$obj:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iput-object p5, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    return-object v0
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 289
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 289
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2$1;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v1, p0, v2, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDownloadError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 306
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 280
    new-instance v0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "paramAPFileDownloadRsp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "packageId"

    .line 257
    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v2

    .line 256
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 259
    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 261
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 262
    const-string/jumbo v1, "dwd:progressupdate"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$obj:Ljava/util/HashMap;

    .line 261
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 263
    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string/jumbo v1, ",onDownloadProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 3

    .prologue
    .line 243
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 243
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 245
    return-void
.end method
