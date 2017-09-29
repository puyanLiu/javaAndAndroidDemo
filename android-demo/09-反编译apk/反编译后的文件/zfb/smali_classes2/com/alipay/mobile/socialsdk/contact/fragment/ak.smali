.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ak;
.super Ljava/lang/Object;
.source "GroupMultiSelectFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->a:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->b:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ak;->a:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 90
    :cond_0
    return-void
.end method
