.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;
.super Ljava/lang/Object;
.source "EmotionDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->declareUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$5;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->declareUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startH5OrActivty(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method
