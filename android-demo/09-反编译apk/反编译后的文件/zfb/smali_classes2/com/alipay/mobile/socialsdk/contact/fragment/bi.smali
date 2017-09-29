.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bi;
.super Ljava/lang/Object;
.source "MultiFriendSelectFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bi;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bi;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->q:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bi;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->u:Lcom/alipay/mobile/commonui/widget/APEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APEditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    return-void
.end method
