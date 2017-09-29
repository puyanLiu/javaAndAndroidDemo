.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$2;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 205
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 206
    const-string/jumbo v1, "shareType"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    const-string/jumbo v1, "act"

    const-string/jumbo v2, "emotion"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, "packageId"

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$2;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$10(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    move-result-object v1

    invoke-virtual {v1, v0, v3, v3}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->shareMessage(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareHandler;)V

    .line 210
    return-void
.end method
