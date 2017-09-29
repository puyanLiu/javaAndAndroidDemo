.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;
.super Ljava/lang/Object;
.source "EmotionDetailActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

.field final synthetic val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_$1;->val$result:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;->access$001(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailResp;)V

    .line 103
    return-void
.end method
