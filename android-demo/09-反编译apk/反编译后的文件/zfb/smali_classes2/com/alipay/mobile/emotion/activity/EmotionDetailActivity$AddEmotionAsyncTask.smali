.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;
.super Landroid/os/AsyncTask;
.source "EmotionDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V
    .locals 0

    .prologue
    .line 604
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 610
    aget-object v0, p1, v3

    .line 611
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v1

    .line 612
    new-instance v2, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;-><init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 611
    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addEmotionPackage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V

    .line 653
    aget-object v0, p1, v3

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->doInBackground([Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 658
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
