.class Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;
.super Ljava/lang/Object;
.source "CustomEmotionDataManager.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

.field private final synthetic val$index:I

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iput p3, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->val$index:I

    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 436
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    iget v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->val$index:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->access$4(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->access$5(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;Z)V

    .line 432
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 420
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->hasCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addToBuildInList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->this$1:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;

    iget v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask$2;->val$index:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;->access$4(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$CustomEmotionSyncTask;I)V

    .line 424
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 440
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 414
    return-void
.end method
