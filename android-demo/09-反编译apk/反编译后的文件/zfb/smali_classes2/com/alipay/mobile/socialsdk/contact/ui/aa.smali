.class final Lcom/alipay/mobile/socialsdk/contact/ui/aa;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 1511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->dismiss()V

    .line 1521
    :goto_0
    return-void

    .line 1517
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;Lcom/alipay/mobile/commonui/widget/APPopMenu;)V

    .line 1518
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->f(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aa;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->t:Lcom/alipay/mobile/commonui/widget/APTitleBar;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APTitleBar;->getGenericButton()Lcom/alipay/mobile/commonui/widget/APButton;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDownRight(Landroid/view/View;)V

    goto :goto_0
.end method
