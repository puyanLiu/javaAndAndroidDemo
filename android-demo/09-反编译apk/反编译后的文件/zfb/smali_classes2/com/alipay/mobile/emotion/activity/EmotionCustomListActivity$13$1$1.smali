.class Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;
.super Ljava/lang/Object;
.source "EmotionCustomListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;

.field private final synthetic val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 611
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;->val$customEmotionVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addToAddList(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1$1;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13$1;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity$13;)Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionCustomListActivity;->updateGridView()V

    .line 613
    return-void
.end method
