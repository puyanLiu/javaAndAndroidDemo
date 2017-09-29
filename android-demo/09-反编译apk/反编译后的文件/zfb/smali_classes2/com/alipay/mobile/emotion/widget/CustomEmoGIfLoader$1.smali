.class Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;
.super Ljava/lang/Object;
.source "CustomEmoGIfLoader.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field private final synthetic val$data:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

.field private final synthetic val$height:I

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$isStop:Z

.field private final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZII)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$data:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$imageView:Landroid/widget/ImageView;

    iput-boolean p3, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$isStop:Z

    iput p4, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$width:I

    iput p5, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$height:I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 95
    const-string/jumbo v0, "AAA"

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 6

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$data:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$imageView:Landroid/widget/ImageView;

    iget-boolean v2, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$isStop:Z

    iget v3, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$width:I

    iget v4, p0, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader$1;->val$height:I

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getFileReq()Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;

    move-result-object v5

    .line 88
    invoke-virtual {v5}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileReq;->getSavePath()Ljava/lang/String;

    move-result-object v5

    .line 87
    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/emotion/widget/CustomEmoGIfLoader;->access$0(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Landroid/widget/ImageView;ZIILjava/lang/String;)V

    .line 89
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 81
    return-void
.end method
