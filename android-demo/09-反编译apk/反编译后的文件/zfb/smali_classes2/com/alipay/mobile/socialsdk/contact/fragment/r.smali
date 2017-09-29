.class final Lcom/alipay/mobile/socialsdk/contact/fragment/r;
.super Ljava/lang/Object;
.source "ContactListMainPageFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/r;->a:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/ContactListMainPageFragment_;Ljava/lang/Object;)V

    .line 93
    :cond_0
    return-void
.end method
