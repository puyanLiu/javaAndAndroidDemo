.class final Lcom/alipay/mobile/socialsdk/contact/ui/cb;
.super Ljava/lang/Object;
.source "TransparentActivity.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/contact/view/AddFriendVarifyDialog$AddFriendVarifyDialogCallBack;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/ca;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cb;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ca;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addFriendButtonCallBack(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cb;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ca;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getAddFriendCallback()Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cb;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ca;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getAddFriendCallback()Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;

    move-result-object v0

    .line 112
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/contact/AddFriendVerifyCallBack;->addFriendButtonCallBack(I)V

    .line 114
    :cond_0
    if-eqz p2, :cond_1

    .line 115
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cb;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ca;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->finish()V

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cb;->a:Lcom/alipay/mobile/socialsdk/contact/ui/ca;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ca;->a(Lcom/alipay/mobile/socialsdk/contact/ui/ca;)Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->overridePendingTransition(II)V

    .line 118
    :cond_1
    return-void
.end method
