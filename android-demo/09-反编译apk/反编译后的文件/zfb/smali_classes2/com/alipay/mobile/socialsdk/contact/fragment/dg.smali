.class final Lcom/alipay/mobile/socialsdk/contact/fragment/dg;
.super Ljava/lang/Object;
.source "SnsPhoneSingleFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dg;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/SnsPhoneSingleFragment_;Ljava/lang/String;Ljava/util/List;)V

    .line 96
    :cond_0
    return-void
.end method
