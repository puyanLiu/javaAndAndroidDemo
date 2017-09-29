.class final Lcom/alipay/mobile/socialsdk/contact/fragment/bw;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bw;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bw;->b:Ljava/util/List;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bw;->b:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 354
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/bw;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$3(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;)V

    .line 355
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 356
    return-void
.end method
