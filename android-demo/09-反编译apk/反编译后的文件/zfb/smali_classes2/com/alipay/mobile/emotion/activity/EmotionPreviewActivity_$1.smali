.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;

.field final synthetic val$data:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;->val$data:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_$1;->val$data:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;->access$001(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity_;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;)V

    .line 92
    return-void
.end method
