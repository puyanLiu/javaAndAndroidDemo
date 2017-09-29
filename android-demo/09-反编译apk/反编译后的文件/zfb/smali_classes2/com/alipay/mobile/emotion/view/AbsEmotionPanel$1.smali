.class Lcom/alipay/mobile/emotion/view/AbsEmotionPanel$1;
.super Ljava/lang/Object;
.source "AbsEmotionPanel.java"

# interfaces
.implements Lcom/alipay/mobile/emotion/widget/ChangeBGHandler;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public setViewPressedBG(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 105
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    if-eqz p2, :cond_1

    .line 107
    sget v0, Lcom/alipay/android/phone/emotion/R$drawable;->emotion_background_pressed:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
