.class Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;
.super Ljava/lang/Object;
.source "BasicEmotionPanel.java"

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
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;->this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0, p1}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;-><init>(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;)V

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
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;->this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    invoke-static {v0}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;

    .line 122
    add-int/lit8 v0, p3, 0x1

    iget-object v5, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;->this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    invoke-static {v5}, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->access$1(Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v0, v5, :cond_3

    move v0, v3

    .line 125
    :goto_0
    iget-object v5, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;->this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    iget-object v5, v5, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    if-nez v5, :cond_1

    .line 133
    :cond_0
    :goto_1
    return-void

    .line 128
    :cond_1
    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;->this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    const-string/jumbo v2, "del"

    const/4 v3, 0x2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;->onClick(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;III)V

    goto :goto_1

    .line 130
    :cond_2
    if-eqz v2, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel$InnerOnItemClickListener;->this$0:Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;

    iget-object v0, v0, Lcom/alipay/mobile/emotion/view/BasicEmotionPanel;->mOnClickEmotionListener:Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;

    invoke-virtual {v2}, Lcom/alipay/mobile/emotion/manager/EmotionParser$EmotionIdentifier;->key()Ljava/lang/String;

    move-result-object v2

    move v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/alipay/mobile/emotion/view/EmotionsLayout$OnClickEmotionListener;->onClick(Lcom/alipay/mobilechat/biz/emotion/rpc/response/EmotionModelVO;Ljava/lang/String;III)V

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method
