.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bn;
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
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bn;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bn;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->processSureButton()V

    .line 79
    return-void
.end method
