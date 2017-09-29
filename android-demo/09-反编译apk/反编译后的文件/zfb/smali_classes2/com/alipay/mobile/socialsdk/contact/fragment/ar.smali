.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ar;
.super Ljava/lang/Object;
.source "GroupSingleSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ar;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ar;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ar;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupSingleSelectFragment;->g:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 131
    :cond_0
    return-void
.end method
