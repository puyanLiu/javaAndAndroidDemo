.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cg;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cg;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 241
    :cond_0
    return-void
.end method
