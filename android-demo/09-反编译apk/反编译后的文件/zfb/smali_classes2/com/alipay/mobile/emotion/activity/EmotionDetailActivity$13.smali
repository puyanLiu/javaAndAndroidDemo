.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;
.super Ljava/lang/Object;
.source "EmotionDetailActivity.java"

# interfaces
.implements Lcom/alipay/android/phone/mobilecommon/multimedia/file/APFileDownCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

.field private final synthetic val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field private final synthetic val$obj:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Ljava/util/HashMap;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$obj:Ljava/util/HashMap;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadBatchProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IIJJ)V
    .locals 0

    .prologue
    .line 578
    return-void
.end method

.method public onDownloadError(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 3

    .prologue
    .line 591
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "packageId"

    .line 592
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    .line 591
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 594
    const-string/jumbo v1, "emotion:download:error"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$obj:Ljava/util/HashMap;

    .line 593
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 595
    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 597
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 598
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    .line 597
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 599
    return-void
.end method

.method public onDownloadFinished(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;Lcom/alipay/android/phone/mobilecommon/multimedia/file/data/APFileDownloadRsp;)V
    .locals 4

    .prologue
    .line 584
    new-instance v0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 585
    return-void
.end method

.method public onDownloadProgress(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;IJJ)V
    .locals 3

    .prologue
    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "packageId"

    .line 564
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->packageId:Ljava/lang/String;

    .line 563
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$obj:Ljava/util/HashMap;

    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    .line 566
    invoke-virtual {v0, v1, p2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 568
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;

    .line 569
    const-string/jumbo v1, "dwd:progressupdate"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->val$obj:Ljava/util/HashMap;

    .line 568
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 570
    invoke-static {v0}, Lcom/alipay/mobile/emotion/handle/msg/MessageUtil;->sendMessage(Lcom/alipay/mobile/emotion/handle/msg/HandlerMessage;)V

    .line 571
    return-void
.end method

.method public onDownloadStart(Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;)V
    .locals 3

    .prologue
    .line 551
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 552
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$13;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 551
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->addEmoiDownloader(Ljava/lang/String;I)Z

    .line 553
    return-void
.end method
