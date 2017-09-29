.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cx;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

.field private final synthetic c:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;Lcom/alipay/mobile/commonui/widget/APPopupWindow;Lcom/alipay/mobile/commonui/widget/APTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickUp()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->dismiss()V

    .line 176
    :cond_0
    return-void
.end method

.method public final onItemClick(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 154
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->x:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;

    if-eqz v0, :cond_1

    .line 155
    const-string/jumbo v0, "\u2191\u2606ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 156
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->x:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->getPositionForSection(I)I

    move-result v1

    .line 157
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->x:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;

    invoke-virtual {v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment$APContactSectionIndexer;->getmAllCounts()[I

    move-result-object v2

    aget v0, v2, v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->p:Lcom/alipay/mobile/commonui/widget/APListView;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APListView;->setSelection(I)V

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    :cond_1
    :goto_0
    return-void

    .line 164
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cx;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
