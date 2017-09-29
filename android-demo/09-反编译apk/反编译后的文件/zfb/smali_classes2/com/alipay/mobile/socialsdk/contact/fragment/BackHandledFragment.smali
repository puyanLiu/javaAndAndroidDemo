.class public abstract Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;
.super Landroid/support/v4/app/Fragment;
.source "BackHandledFragment.java"


# instance fields
.field public mBackHandledInterface:Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onBackPressed()Z
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->mBackHandledInterface:Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;

    .line 28
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 34
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->mBackHandledInterface:Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;->mBackHandledInterface:Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/socialsdk/contact/ui/BackHandledInterface;->setSelectedFragment(Lcom/alipay/mobile/socialsdk/contact/fragment/BackHandledFragment;)V

    .line 38
    :cond_0
    return-void
.end method
