.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;
.super Ljava/lang/Object;
.source "EmotionDetailActivity.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/AddPackageCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    return-object v0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v0

    .line 640
    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 651
    return-void
.end method

.method public onSuccess()V
    .locals 3

    .prologue
    .line 616
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v0

    .line 617
    new-instance v1, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {v1, p0, v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 635
    return-void
.end method
