.class final Lcom/alipay/mobile/socialsdk/contact/ui/b;
.super Ljava/lang/Object;
.source "AddFriendDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/b;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/b;->a:Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/AddFriendDialogActivity;->finish()V

    .line 105
    return-void
.end method
