.class final Lcom/alipay/mobile/socialsdk/contact/fragment/db;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/db;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 329
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/db;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->w:Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;->onBackPressed()V

    .line 331
    return-void
.end method
