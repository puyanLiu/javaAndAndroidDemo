.class Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;
.super Ljava/lang/Object;
.source "EmotionPreviewActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 6

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 185
    :goto_0
    return-void

    .line 168
    :pswitch_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->sendEmotion()V

    goto :goto_0

    .line 171
    :pswitch_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v4}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v5}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addGifCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 178
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    sget v2, Lcom/alipay/android/phone/emotion/R$string;->saved:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->toast(Ljava/lang/String;I)V

    .line 180
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 181
    const-string/jumbo v1, "20000167"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setAppID(Ljava/lang/String;)V

    .line 182
    const-string/jumbo v1, "UC-SJJR-150909-02"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    .line 183
    const-string/jumbo v1, "saveExpression2"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto :goto_0

    .line 175
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->getInstence()Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$5(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v2}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$6(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v3}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$7(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    invoke-static {v4}, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->access$4(Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;)Z

    move-result v4

    iget-object v5, p0, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity$1;->this$0:Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;

    iget-object v5, v5, Lcom/alipay/mobile/emotion/activity/EmotionPreviewActivity;->mGifView:Lcom/alipay/mobile/emotion/widget/NativeGifImageView;

    invoke-virtual {v5}, Lcom/alipay/mobile/emotion/widget/NativeGifImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/emotion/manager/CustomEmotionDataManager;->addCustomEmotion(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/drawable/Drawable;)Z

    goto :goto_1

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
