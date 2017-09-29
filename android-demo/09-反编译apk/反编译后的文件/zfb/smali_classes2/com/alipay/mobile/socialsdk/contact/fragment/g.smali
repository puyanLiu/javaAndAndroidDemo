.class final Lcom/alipay/mobile/socialsdk/contact/fragment/g;
.super Ljava/lang/Object;
.source "ConfirmAccountFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/g;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/g;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/g;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/ConfirmAccountFragment;->f:Lcom/alipay/mobile/commonui/widget/APButton;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 68
    return-void
.end method
