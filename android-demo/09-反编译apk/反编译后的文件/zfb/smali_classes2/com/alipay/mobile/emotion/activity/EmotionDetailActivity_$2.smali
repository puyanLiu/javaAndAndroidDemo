.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;
.super Ljava/lang/Object;
.source "EmotionDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

.field final synthetic val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;->val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$2;->val$briefVO:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->access$101(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 117
    return-void
.end method
