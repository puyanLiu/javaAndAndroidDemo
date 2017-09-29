.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;
.super Ljava/lang/Object;
.source "EmotionPackageDownloadHelper.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field private final synthetic val$addPackageCallback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

.field private final synthetic val$fileDownCallback:Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;

.field private final synthetic val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$obj:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Ljava/util/HashMap;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$obj:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$addPackageCallback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    iput-object p5, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$fileDownCallback:Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$fileDownCallback:Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;

    invoke-interface {v0, p1, p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;->onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDownloadError:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$addPackageCallback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;-><init>(Lcom/alipay/mobile/emotion/widget/AddPackageCallback;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "paramAPFileDownloadRsp:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "packageId"

    .line 123
    iget-object v2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$localModel:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v2}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 127
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 128
    const-string/jumbo v1, "dwd:progressupdate"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$obj:Ljava/util/HashMap;

    .line 127
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 129
    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 132
    const-string/jumbo v1, ",onDownloadProgress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 3

    .prologue
    .line 111
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 113
    return-void
.end method
