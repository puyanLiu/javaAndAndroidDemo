.class final Lcom/alipay/mobile/socialsdk/contact/ui/ca;
.super Ljava/lang/Object;
.source "TransparentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getAddFriendCallback()Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;

    .line 104
    new-instance v0, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 106
    new-instance v2, Lcom/alipay/mobile/socialsdk/contact/ui/cb;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/cb;-><init>(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)V

    .line 104
    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;)V

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->b(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog;->addFriendDialog(Landroid/os/Bundle;)I

    .line 121
    return-void
.end method
