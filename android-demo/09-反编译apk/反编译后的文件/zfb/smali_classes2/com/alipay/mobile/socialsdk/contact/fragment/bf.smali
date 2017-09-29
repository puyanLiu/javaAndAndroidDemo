.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bf;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bf;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bf;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MultiFriendSelectFragment;->processSureButton()V

    .line 110
    return-void
.end method
