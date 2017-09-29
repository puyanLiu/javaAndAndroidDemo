.class final Lcom/alipay/mobile/socialsdk/contact/fragment/az;
.super Ljava/lang/Object;
.source "InputContactFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/az;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/az;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->access$0(Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;)Lcom/alipay/mobile/framework/app/ui/BaseFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/az;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->b:Lcom/alipay/mobile/commonui/widget/APButtonInputBox;

    invoke-virtual {v1}, Lcom/alipay/mobile/commonui/widget/APButtonInputBox;->getEtContent()Lcom/alipay/mobile/commonui/widget/APEditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/az;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/InputContactFragment;->startToQuery()V

    .line 93
    return-void
.end method
