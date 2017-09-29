.class final Lcom/alipay/mobile/socialsdk/contact/fragment/ci;
.super Ljava/lang/Object;
.source "PhoneBookSingleFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ci;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 332
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ci;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$1(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ci;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/ci;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->access$2(Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/PhoneBookSingleFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 335
    :cond_0
    return-void
.end method
