.class public Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;
.super Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.source "OutShareResultDialog.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;-><init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 25
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 26
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 27
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/socialsdk/R$layout;->dialog_out_share_result:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 28
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->setContentView(Landroid/view/View;)V

    .line 29
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->negative:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/commonui/widget/APTextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8fd4\u56de"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-virtual {v3}, Lcom/alipay/mobile/personalbase/model/ShareModel;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {p0, v4}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->setCancelable(Z)V

    .line 31
    invoke-virtual {p0, v1}, Lcom/alipay/mobile/socialsdk/chat/widget/OutShareResultDialog;->a(Landroid/view/View;)V

    .line 32
    return-void
.end method
