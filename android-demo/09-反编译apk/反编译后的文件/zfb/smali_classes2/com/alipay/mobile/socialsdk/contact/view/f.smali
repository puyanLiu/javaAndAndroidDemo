.class final Lcom/alipay/mobile/socialsdk/contact/view/f;
.super Ljava/lang/Object;
.source "AddFriendVarifyDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/view/e;

.field private final synthetic b:Lcom/alipay/mobile/framework/app/ui/DialogHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/view/e;Lcom/alipay/mobile/framework/app/ui/DialogHelper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/view/f;->a:Lcom/alipay/mobile/socialsdk/contact/view/e;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/view/f;->b:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/f;->b:Lcom/alipay/mobile/framework/app/ui/DialogHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/DialogHelper;->dismissProgressDialog()V

    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/f;->a:Lcom/alipay/mobile/socialsdk/contact/view/e;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/e;->a(Lcom/alipay/mobile/socialsdk/contact/view/e;)Lcom/alipay/mobile/socialsdk/contact/view/d;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->a(Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;I)V

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/view/f;->a:Lcom/alipay/mobile/socialsdk/contact/view/e;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/e;->a(Lcom/alipay/mobile/socialsdk/contact/view/e;)Lcom/alipay/mobile/socialsdk/contact/view/d;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/view/d;->a(Lcom/alipay/mobile/socialsdk/contact/view/d;)Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->clean()V

    .line 174
    return-void
.end method
