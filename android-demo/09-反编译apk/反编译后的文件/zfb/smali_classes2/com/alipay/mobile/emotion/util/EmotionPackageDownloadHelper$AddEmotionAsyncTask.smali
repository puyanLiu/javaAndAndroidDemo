.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;
.super Landroid/os/AsyncTask;
.source "EmotionPackageDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;",
        ">;"
    }
.end annotation


# instance fields
.field private final addPackageCallback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

.field private final emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/widget/AddPackageCallback;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->addPackageCallback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    .line 175
    iput-object p2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 176
    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/widget/AddPackageCallback;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->addPackageCallback:Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 3

    .prologue
    .line 182
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 183
    new-instance v2, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;-><init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)V

    .line 182
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addEmotionPackage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V

    .line 217
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 222
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
