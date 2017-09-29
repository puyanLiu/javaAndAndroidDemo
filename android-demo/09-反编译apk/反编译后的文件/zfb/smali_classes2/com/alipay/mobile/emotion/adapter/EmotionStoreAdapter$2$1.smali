.class Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;
.super Ljava/lang/Object;
.source "EmotionStoreAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;

.field private final synthetic val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)Landroid/app/Activity;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 307
    sget v2, Lcom/alipay/android/phone/emotion/R$string;->download_error_tips:I

    .line 306
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
    const/4 v2, 0x0

    .line 304
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 309
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->this$1:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;->access$0(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2;)Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$2$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$2(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 310
    return-void
.end method
