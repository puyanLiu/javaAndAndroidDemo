.class final Lcom/alipay/mobile/socialsdk/contact/view/a;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/a;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/a;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/a;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;)Lcom/alipay/mobile/framework/app/ui/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->finish()V

    .line 77
    :cond_0
    return-void
.end method
