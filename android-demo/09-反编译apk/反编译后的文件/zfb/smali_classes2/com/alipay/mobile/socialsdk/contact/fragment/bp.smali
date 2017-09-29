.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bp;
.super Ljava/lang/Object;
.source "MutliSelectWithAccountInputFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bp;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bp;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bp;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    return-void
.end method
