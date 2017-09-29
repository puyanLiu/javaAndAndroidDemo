.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;
.super Ljava/lang/Object;
.source "EmotionPackageDownloadHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

.field private final synthetic val$failDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;->val$failDesc:Ljava/lang/String;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 209
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->getInstance()Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->access$3(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;->getPackageId()Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/emotion/util/EmoiDownloadStatusMgr;->removeEmoiDownloader(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/widget/AddPackageCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;->val$failDesc:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/emotion/widget/AddPackageCallback;->onFail(Ljava/lang/String;)V

    .line 213
    return-void
.end method
