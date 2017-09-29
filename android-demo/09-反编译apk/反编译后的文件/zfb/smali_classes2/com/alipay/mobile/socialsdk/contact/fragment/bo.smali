.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bo;
.super Ljava/lang/Object;
.source "MutliSelectWithAccountInputFragment.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnIconSelect(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->e:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiWithRecentCursorAdapter;->refreshSelected(Ljava/util/Set;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bo;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->updateSureButtonStatus()V

    .line 95
    return-void
.end method
