.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ce;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/view/CustomBladeView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

.field private final synthetic c:Lcom/alipay/mobile/commonui/widget/APTextView;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Lcom/alipay/mobile/commonui/widget/APPopupWindow;Lcom/alipay/mobile/commonui/widget/APTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClickUp()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->dismiss()V

    .line 212
    :cond_0
    return-void
.end method

.method public final onItemClick(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 192
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    const-string/jumbo v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ#"

    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APContactSectionIndexer;->getPositionForSection(I)I

    move-result v0

    .line 195
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->i:Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/api/widget/InfiniteScrollListView;->setSelection(I)V

    .line 197
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    invoke-virtual {v0}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->b:Lcom/alipay/mobile/commonui/widget/APPopupWindow;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2, v3, v3}, Lcom/alipay/mobile/commonui/widget/APPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 201
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ce;->c:Lcom/alipay/mobile/commonui/widget/APTextView;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/commonui/widget/APTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
