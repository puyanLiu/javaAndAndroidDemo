.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$6;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 323
    const-string/jumbo v0, "AAA"

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$6;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->getSavePath()Ljava/lang/String;

    move-result-object v1

    .line 315
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->loadGifByFilePath(Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method
