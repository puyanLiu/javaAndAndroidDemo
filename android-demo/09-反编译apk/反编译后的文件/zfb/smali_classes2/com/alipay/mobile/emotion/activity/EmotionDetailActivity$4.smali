.class Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;
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
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v0

    if-nez v0, :cond_0

    .line 241
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$12(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobile/framework/app/ActivityApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 229
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 230
    new-instance v1, Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-direct {v1}, Lcom/alipay/mobile/personalbase/model/ShareModel;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setTitle(Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->iconFid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setThumb(Ljava/lang/String;)V

    .line 233
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setType(I)V

    .line 234
    const/16 v2, 0x3ec

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setTemplateCode(I)V

    .line 235
    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->fullDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setDescription(Ljava/lang/String;)V

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    sget v4, Lcom/alipay/android/phone/emotion/R$string;->share_title:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setBizMemo(Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alipays://platformapi/startapp?appId=20000999&path=detail&launchMode=present&packageId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity$4;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionDetailActivity;)Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;

    move-result-object v3

    iget-object v3, v3, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionPackageDetailVO;->packageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    invoke-virtual {v1, v2}, Lcom/alipay/mobile/personalbase/model/ShareModel;->setUrl(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v5, v5}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->shareMessage(Lcom/alipay/mobile/personalbase/model/ShareModel;ZLcom/alipay/mobile/framework/service/ext/contact/ShareSelectCallback;Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;)V

    goto/16 :goto_0
.end method
