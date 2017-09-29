.class final Lcom/alipay/mobile/socialsdk/contact/fragment/i;
.super Ljava/lang/Object;
.source "ConfirmAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getmRecentMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/ContactSelectPageActivity;->getmSelectMap()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v1

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/i;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->g:Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;

    const-string/jumbo v1, "TAG_MULTI_SELCET"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/ui/ActivityOpCallback;->addFragment(Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 92
    return-void
.end method
