.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bd;
.super Ljava/lang/Object;
.source "InputContactFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bd;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment_;)V

    .line 86
    :cond_0
    return-void
.end method
