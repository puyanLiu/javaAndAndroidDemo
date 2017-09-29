.class final Lcom/alipay/mobile/socialsdk/contact/fragment/cj;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/cj;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment_;Ljava/lang/String;Ljava/util/List;)V

    .line 95
    :cond_0
    return-void
.end method
