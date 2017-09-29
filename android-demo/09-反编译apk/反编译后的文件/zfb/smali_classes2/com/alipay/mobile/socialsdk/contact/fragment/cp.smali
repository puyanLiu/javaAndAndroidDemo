.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cp;
.super Ljava/lang/Object;
.source "RecentListSelectFriendFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cp;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cp;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->f:Lcom/alipay/mobile/commonui/widget/APTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cp;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    return-void
.end method
