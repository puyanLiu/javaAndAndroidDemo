.class final Lcom/alipay/mobile/socialsdk/contact/fragment/o;
.super Ljava/lang/Object;
.source "ContactListMainPageFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/o;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 119
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 120
    if-nez v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return v6

    .line 123
    :cond_1
    const-string/jumbo v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    const-class v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->cursor2VO(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 125
    iput-object v1, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v1

    .line 127
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;

    invoke-direct {v2}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;-><init>()V

    .line 132
    iput v6, v2, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemId:I

    .line 133
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/o;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    iget-object v3, v3, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    sget v4, Lcom/alipay/mobile/socialsdk/R$string;->set_remarkname:I

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$MenuItem;->mItemText:Ljava/lang/String;

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/o;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    if-nez v2, :cond_3

    .line 137
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/o;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    new-instance v4, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/o;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    iget-object v5, v5, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;-><init>(Landroid/app/Activity;)V

    iput-object v4, v2, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/o;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment;->a:Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;

    new-instance v4, Lcom/alipay/mobile/socialsdk/contact/fragment/p;

    invoke-direct {v4, p0, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/p;-><init>(Lcom/alipay/mobile/socialsdk/contact/fragment/o;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu;->showDialog(Ljava/lang/String;Ljava/util/List;Lcom/alipay/mobile/personalbase/view/SingleChoiceContextMenu$ItemChoiceSelectListener;)V

    goto :goto_0
.end method
