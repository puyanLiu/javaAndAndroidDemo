.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bz;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bz;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .prologue
    .line 498
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 499
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bz;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->l:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 500
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bz;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$4(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Z)V

    .line 501
    return-void
.end method
