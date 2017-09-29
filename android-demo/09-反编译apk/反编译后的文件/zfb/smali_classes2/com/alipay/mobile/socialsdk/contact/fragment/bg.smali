.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bg;
.super Ljava/lang/Object;
.source "MultiFriendSelectFragment.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnIconSelect(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;)V
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->n:Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/FriendMultiCursorAdapter;->refreshSelected(Ljava/util/Set;)V

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->updateSureButtonStatus()V

    .line 140
    return-void
.end method
