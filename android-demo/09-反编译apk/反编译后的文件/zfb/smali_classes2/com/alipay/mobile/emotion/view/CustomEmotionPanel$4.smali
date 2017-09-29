.class Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$4;
.super Ljava/lang/Object;
.source "CustomEmotionPanel.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$4;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewPressedBG(Landroid/view/View;Z)V
    .locals 2

    .prologue
    .line 228
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 229
    check-cast p1, Lcom/alipay/mobile/commonui/widget/APImageView;

    .line 230
    if-eqz p2, :cond_1

    .line 231
    sget v0, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_background_pressed:I

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundResource(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel$4;->this$0:Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/view/CustomEmotionPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/commonui/widget/APImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
