.class Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;
.super Ljava/lang/Object;
.source "EmotionStoreAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/AddPackageCallback;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    return-object v0
.end method


# virtual methods
.method public onFail(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$2;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$2;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 376
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;->access$5(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1$1;-><init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$AddEmotionAsyncTask$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 359
    return-void
.end method
