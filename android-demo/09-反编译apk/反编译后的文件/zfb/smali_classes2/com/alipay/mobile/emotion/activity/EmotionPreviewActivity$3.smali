.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$3;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShareCanceled()V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$3;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->sent:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->toast(Ljava/lang/String;I)V

    .line 225
    return-void
.end method
