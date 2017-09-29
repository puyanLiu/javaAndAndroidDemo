.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$8(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;I)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$9(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 199
    :cond_0
    return-void
.end method
