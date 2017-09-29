.class final Lcom/alipay/mobile/socialsdk/contact/fragment/j;
.super Ljava/lang/Object;
.source "ConfirmAccountFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/j;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/j;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/j;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/j;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/j;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment_;)V

    .line 91
    :cond_0
    return-void
.end method
