.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cn;
.super Ljava/lang/Object;
.source "RecentListSelectFriendFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cn;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cn;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cn;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->c:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/RecentListSelectFriendFragment;->getRecentFriendSearched(Ljava/lang/String;)V

    .line 70
    return-void
.end method
