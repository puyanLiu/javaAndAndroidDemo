.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageUploadCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

.field private final synthetic val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 649
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompressSucc(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public onError(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;Ljava/lang/Exception;)V
    .locals 3

    .prologue
    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->toast(Ljava/lang/String;I)V

    .line 672
    return-void
.end method

.method public onProcess(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;I)V
    .locals 0

    .prologue
    .line 667
    return-void
.end method

.method public onStartUpload(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public onSuccess(Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;)V
    .locals 2

    .prologue
    .line 653
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getTaskStatus()Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {p1}, Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/data/APImageUploadRsp;->getTaskStatus()Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;->getCloudId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    .line 655
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$15;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$24(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 657
    :cond_0
    return-void
.end method
