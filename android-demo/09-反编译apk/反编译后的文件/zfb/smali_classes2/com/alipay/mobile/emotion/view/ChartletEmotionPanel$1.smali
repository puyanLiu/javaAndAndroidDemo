.class Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;
.super Ljava/lang/Object;
.source "ChartletEmotionPanel.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    const/4 v3, 0x3

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;->onClick(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;III)V

    goto :goto_0
.end method
