.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bh;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bh;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bh;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->j:Z

    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bh;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->b:Lcom/alipay/mobile/commonui/widget/APRelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APRelativeLayout;->setVisibility(I)V

    .line 148
    return-void
.end method
