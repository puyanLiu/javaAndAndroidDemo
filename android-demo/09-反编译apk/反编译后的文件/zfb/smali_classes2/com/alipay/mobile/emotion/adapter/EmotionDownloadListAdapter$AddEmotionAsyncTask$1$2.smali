.class Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;
.super Ljava/lang/Object;
.source "EmotionDownloadListAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

.field private final synthetic val$failDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->val$failDesc:Ljava/lang/String;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 360
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 362
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->access$2(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionDownloadListAdapter$AddEmotionAsyncTask$1$2;->val$failDesc:Ljava/lang/String;

    .line 366
    const/4 v2, 0x0

    .line 365
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 366
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 367
    return-void
.end method
