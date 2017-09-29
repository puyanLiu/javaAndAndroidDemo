.class final Lcom/alipay/mobile/socialsdk/contact/fragment/co;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/co;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/co;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/co;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "from_recentlsit_fragment"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/co;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->k:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v1, "TAG_SINGLE_FRIEND_SELECT"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/co;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 108
    :cond_0
    return-void
.end method
