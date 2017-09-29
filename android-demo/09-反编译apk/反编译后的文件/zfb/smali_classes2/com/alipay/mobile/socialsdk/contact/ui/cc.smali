.class final Lcom/alipay/mobile/socialsdk/contact/ui/cc;
.super Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;
.source "TransparentActivity.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;Lcom/alipay/mobile/framework/app/ui/BaseActivity;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p3}, Lcom/alipay/mobile/socialsdk/contact/processer/AccountQueryHelper;-><init>(Lcom/alipay/mobile/framework/app/ui/BaseActivity;Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    if-nez v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->c(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getContactPickerCallbackOp()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 143
    invoke-interface {v0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallbackOp;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Z)V

    .line 144
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearContactPickerCallbackOp()V

    .line 154
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->finish()V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->getContactPickerCallback()Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0, p1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;->onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/cc;->a:Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;->a(Lcom/alipay/mobile/socialsdk/contact/ui/TransparentActivity;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->clearContactPickerCallback()V

    goto :goto_1
.end method
