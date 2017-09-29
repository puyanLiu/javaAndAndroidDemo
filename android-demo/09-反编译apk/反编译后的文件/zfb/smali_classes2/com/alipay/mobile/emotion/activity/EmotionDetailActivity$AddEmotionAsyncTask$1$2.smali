.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;
.super Ljava/lang/Object;
.source "EmotionDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

.field private final synthetic val$failDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;->val$failDesc:Ljava/lang/String;

    .line 640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V

    .line 646
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;->this$2:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;->access$0(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask;)Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$AddEmotionAsyncTask$1$2;->val$failDesc:Ljava/lang/String;

    .line 648
    const/4 v2, 0x0

    .line 645
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 649
    return-void
.end method
