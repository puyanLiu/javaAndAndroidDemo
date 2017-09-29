.class Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;
.super Ljava/lang/Object;
.source "CustomEmotionPanel.java"

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
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    .line 98
    const-string/jumbo v0, "op"

    iget-object v1, v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    const/4 v1, 0x0

    iget-object v2, v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->op:Ljava/lang/String;

    const/4 v3, 0x2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;->onClick(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;III)V

    goto :goto_0

    .line 100
    :cond_2
    const-string/jumbo v0, "FavoriteEmotion"

    iget-object v1, v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    instance-of v0, p2, Lcom/alipay/mobile/commonui/widget/APImageView;

    if-eqz v0, :cond_4

    .line 104
    check-cast p2, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 105
    invoke-virtual {p2}, Lcom/alipay/mobile/commonui/widget/APImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 106
    instance-of v0, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_4

    move-object v0, v1

    .line 107
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    .line 108
    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v4

    move v5, v4

    move v4, v0

    .line 111
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$1;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    iget-object v2, v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->emotionFid:Ljava/lang/String;

    const/4 v3, 0x4

    move-object v1, v6

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;->onClick(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;III)V

    goto :goto_0

    .line 113
    :cond_3
    const-string/jumbo v0, "goto"

    iget-object v1, v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->packageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, v6, Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;->gotoUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/util/JumpUtil;->startH5OrActivty(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_1
.end method
