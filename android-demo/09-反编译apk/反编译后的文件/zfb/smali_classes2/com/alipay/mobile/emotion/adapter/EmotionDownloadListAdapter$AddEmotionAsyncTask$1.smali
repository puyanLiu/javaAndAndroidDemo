.class Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;
.super Ljava/lang/Object;
.source "EmotionDownloadListAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/AddPackageCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    return-object v0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 352
    return-void
.end method
