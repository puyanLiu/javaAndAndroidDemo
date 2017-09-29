.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

.field private final synthetic val$info:Lcom/alipay/mobile/beehive/service/PhotoInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->val$info:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    .line 588
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 591
    new-instance v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-direct {v0}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;-><init>()V

    .line 592
    const-string/jumbo v1, "FavoriteEmotion"

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    .line 593
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->val$info:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/beehive/service/PhotoInfo;->getPhotoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    .line 594
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/FileUtils;->md5sum(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    .line 595
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->hasCustomEmotion(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 596
    iget-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 615
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/FileTypeUtil;->isGif(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 600
    iput-boolean v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    .line 601
    iput v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gifPreviewIndex:I

    .line 602
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$22(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 607
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 604
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    .line 605
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->val$info:Lcom/alipay/mobile/beehive/service/PhotoInfo;

    invoke-static {v1, v0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->access$23(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Lcom/alipay/mobile/beehive/service/PhotoInfo;)V

    goto :goto_1
.end method
