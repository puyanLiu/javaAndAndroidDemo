.class Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;
.super Ljava/lang/Object;
.source "EmotionPackageDownloadHelper.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/AddPackageCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask;

    return-object v0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;->access$0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$2;-><init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 187
    invoke-static {}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper;->access$0()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1$1;-><init>(Lcom/alipay/mobile/emotion/util/EmotionPackageDownloadHelper$AddEmotionAsyncTask$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
