.class Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;
.super Ljava/lang/Object;
.source "EmotionStoreAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

.field private final synthetic val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

.field private final synthetic val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iput-object p3, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->setDownloadingView(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->this$0:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->val$holder:Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;

    iget-object v2, p0, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$1;->val$model:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;->access$4(Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter;Lcom/alipay/mobile/emotion/adapter/EmotionStoreAdapter$ViewHolder;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 212
    return-void
.end method
