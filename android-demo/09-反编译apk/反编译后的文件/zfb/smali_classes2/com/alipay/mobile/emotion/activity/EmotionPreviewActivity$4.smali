.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

.field private final synthetic val$emotionPackageBriefItem:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iput-object p2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;->val$emotionPackageBriefItem:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$4;->val$emotionPackageBriefItem:Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$9(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageBriefVO;)V

    .line 248
    return-void
.end method
