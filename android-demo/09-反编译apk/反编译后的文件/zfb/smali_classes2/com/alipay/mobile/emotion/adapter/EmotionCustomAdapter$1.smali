.class Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;
.super Ljava/lang/Object;
.source "EmotionCustomAdapter.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

.field private final synthetic val$imageView:Landroid/widget/ImageView;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

.field private final synthetic val$savePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->val$savePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->val$imageView:Landroid/widget/ImageView;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 2

    .prologue
    .line 163
    const-string/jumbo v0, "AAA"

    invoke-virtual {p2}, Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    iget-boolean v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;->access$1(Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->val$savePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionCustomAdapter$1;->val$imageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    .line 157
    :cond_0
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 148
    return-void
.end method
