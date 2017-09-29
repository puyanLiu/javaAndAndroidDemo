.class final Lcom/alipay/mobile/socialsdk/contact/ui/d;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickNegativeListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

.field private final synthetic b:Lcom/alipay/mobile/commonui/widget/APEditText;

.field private final synthetic c:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/commonui/widget/APEditText;Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->c:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->b:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->c:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->c:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;

    invoke-interface {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;->onCancel()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/d;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    .line 153
    return-void
.end method
