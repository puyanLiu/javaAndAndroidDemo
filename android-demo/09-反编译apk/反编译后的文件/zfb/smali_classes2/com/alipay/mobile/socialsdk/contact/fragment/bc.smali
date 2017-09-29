.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bc;
.super Ljava/lang/Object;
.source "InputContactFragment.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/ContactPickerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccountReturned(Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 161
    if-nez p1, :cond_0

    .line 171
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/util/BaseHelperUtil;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v1

    sget v2, Lcom/alipay/mobile/socialsdk/R$string;->add_self_hint:I

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->toast(Ljava/lang/String;I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_aliaccout"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 169
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key_from_search"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 170
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->toConfirmPage()V

    goto :goto_0
.end method
