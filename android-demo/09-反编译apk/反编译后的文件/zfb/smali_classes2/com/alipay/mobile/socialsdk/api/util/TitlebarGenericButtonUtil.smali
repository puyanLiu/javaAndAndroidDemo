.class public Lcom/alipay/mobile/socialsdk/api/util/TitlebarGenericButtonUtil;
.super Ljava/lang/Object;
.source "TitlebarGenericButtonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setGenericButtonBg(Lcom/alipay/mobile/commonui/widget/APTitleBar;I)V
    .locals 2

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APButton;->setBackgroundResource(I)V

    .line 17
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->setGenericButtonVisiable(Z)V

    .line 18
    return-void
.end method
