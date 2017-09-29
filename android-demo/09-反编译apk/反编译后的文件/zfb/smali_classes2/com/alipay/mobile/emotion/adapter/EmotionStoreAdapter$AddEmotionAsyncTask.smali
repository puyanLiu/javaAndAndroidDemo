.class Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;
.super Landroid/os/AsyncTask;
.source "EmotionStoreAdapter.java"


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

.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

.field private final viewHolder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    .line 327
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 329
    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->viewHolder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    .line 330
    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 331
    return-void
.end method

.method static synthetic access$3(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->viewHolder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;
    .locals 3

    .prologue
    .line 337
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/EmotionDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 338
    new-instance v2, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)V

    .line 337
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/manager/EmotionDataManager;->addEmotionPackage(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;Lcom/alipay/mobile/emotion/widget/AddPackageCallback;)V

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->emotionPackageBriefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->doInBackground([Ljava/lang/String;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 387
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->onPostExecute(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 0

    .prologue
    .line 383
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
