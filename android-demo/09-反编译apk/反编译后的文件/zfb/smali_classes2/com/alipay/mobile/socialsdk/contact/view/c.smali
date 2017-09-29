.class final Lcom/alipay/mobile/socialsdk/contact/view/c;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

.field private final synthetic b:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/c;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/c;->b:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/c;->b:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/c;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;I)V

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/c;->a:Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->clean()V

    .line 116
    return-void
.end method
