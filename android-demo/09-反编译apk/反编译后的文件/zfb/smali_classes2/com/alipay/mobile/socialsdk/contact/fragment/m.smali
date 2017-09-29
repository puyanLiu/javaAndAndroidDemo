.class final Lcom/alipay/mobile/socialsdk/contact/fragment/m;
.super Ljava/lang/Object;
.source "ContactListMainPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/m;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/m;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->getPopWindow()Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/m;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->dismiss()V

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/m;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)Lcom/alipay/mobile/commonui/widget/APPopMenu;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDownRight(Landroid/view/View;)V

    goto :goto_0
.end method
