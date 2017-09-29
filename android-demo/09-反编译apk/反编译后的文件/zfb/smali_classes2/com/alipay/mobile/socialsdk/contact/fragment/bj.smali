.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bj;
.super Ljava/lang/Object;
.source "MultiFriendSelectFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bj;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bj;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bj;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bj;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bj;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment_;)V

    .line 99
    :cond_0
    return-void
.end method
