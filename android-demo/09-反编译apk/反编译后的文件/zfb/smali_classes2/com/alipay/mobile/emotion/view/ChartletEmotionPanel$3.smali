.class Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$3;
.super Ljava/lang/Object;
.source "ChartletEmotionPanel.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$3;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewPressedBG(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 136
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 137
    sget v0, Lcom/alipay/android/phone/emotion/R$id;->image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 138
    if-eqz p2, :cond_1

    .line 139
    sget v1, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_background_pressed:I

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel$3;->this$0:Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;

    invoke-virtual {v1}, Lcom/alipay/mobile/emotion/view/ChartletEmotionPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
