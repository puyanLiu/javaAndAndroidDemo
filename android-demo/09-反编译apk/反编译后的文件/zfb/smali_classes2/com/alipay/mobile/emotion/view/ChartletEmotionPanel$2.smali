.class Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;
.super Ljava/lang/Object;
.source "ChartletEmotionPanel.java"

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
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemGainPressing(Landroid/view/View;Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$2(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;I)V

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 170
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v1}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->setEmoiTips(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;)V

    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->show(Landroid/view/View;II)V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;->setViewPressedBG(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    const-string/jumbo v1, "ChartletEmotionPanel"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onItemLosePressing(Landroid/view/View;Landroid/view/View;I)V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getChangeBGHandler()Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;->setViewPressedBG(Landroid/view/View;Z)V

    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$2;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$3(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/widget/EmoiFloatTips;->dismiss()V

    goto :goto_0
.end method
