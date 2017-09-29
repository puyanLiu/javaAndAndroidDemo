.class final Lcom/alipay/mobile/socialsdk/contact/ui/a;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity$OnConfirmListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/a;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/a;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    .line 78
    return-void
.end method

.method public final onConfirm(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/a;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->sendBatchAddRpc(Ljava/lang/String;)V

    .line 73
    return-void
.end method
