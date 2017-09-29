.class final Lcom/alipay/mobile/socialsdk/contact/ui/e;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/e;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/e;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    .line 160
    return-void
.end method
