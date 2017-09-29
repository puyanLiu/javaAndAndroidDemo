.class Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;
.super Ljava/lang/Object;
.source "CustomEmotionDataManager.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileUploadCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

.field private final synthetic val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUploadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileUploadRsp;)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public onUploadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileUploadRsp;)V
    .locals 2

    .prologue
    .line 758
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileUploadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileUploadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->getCloudId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    .line 760
    iget-object v0, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;->this$0:Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager$4;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->access$3(Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 762
    :cond_0
    return-void
.end method

.method public onUploadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 754
    return-void
.end method

.method public onUploadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 750
    return-void
.end method
