.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ai;
.super Ljava/lang/Object;
.source "GroupMultiSelectFragment.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$OnIconSelectListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnIconSelect(Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alipay/mobile/socialsdk/api/view/FriendsChooseWidget$FriendInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/adapter/MemberMultiCursorAdapter;->refreshSelected(Ljava/util/Set;)V

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ai;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment;->updateSureButtonStatus()V

    .line 98
    return-void
.end method
