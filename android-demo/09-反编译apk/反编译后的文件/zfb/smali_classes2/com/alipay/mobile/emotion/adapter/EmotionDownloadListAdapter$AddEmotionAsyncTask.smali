.class Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;
.super Landroid/os/AsyncTask;
.source "EmotionDownloadListAdapter.java"


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
.field private final emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

.field private final viewHolder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    .line 320
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 322
    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->viewHolder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    .line 323
    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 324
    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->viewHolder:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 3

    .prologue
    .line 330
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 331
    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)V

    .line 330
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addEmotionPackage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V

    .line 371
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 380
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 376
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
