.class Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;
.super Ljava/lang/Object;
.source "CustomEmotionPanel.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$OnItemPressingListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemGainPressing(Landroid/view/View;Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 259
    if-eqz v0, :cond_0

    const-string/jumbo v1, "goto"

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$2(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;I)V

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    const-string/jumbo v1, "op"

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v1

    iget v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->resourceId:I

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setEmoiTips(I)V

    .line 270
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->show(Landroid/view/View;II)V

    .line 271
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;->setViewPressedBG(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    const-string/jumbo v1, "ChartletEmotionPanel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 268
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->localPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v4}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$4(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    move-result-object v4

    iget-boolean v0, v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->hasGif:Z

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setEmoiTips(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onItemLosePressing(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;->setViewPressedBG(Landroid/view/View;Z)V

    .line 281
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    if-nez v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->dismiss()V

    goto :goto_0
.end method
