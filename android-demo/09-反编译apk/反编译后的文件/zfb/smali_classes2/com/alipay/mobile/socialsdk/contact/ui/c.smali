.class final Lcom/alipay/mobile/socialsdk/contact/ui/c;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Lcom/alipay/mobile/commonui/widget/APInputDialog$OnClickPositiveListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

.field private final synthetic b:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/c;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/c;->b:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/c;->b:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/c;->b:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;->onConfirm(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/c;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    goto :goto_0
.end method
