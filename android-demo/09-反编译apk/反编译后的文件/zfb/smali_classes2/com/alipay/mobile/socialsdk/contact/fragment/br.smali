.class final Lcom/alipay/mobile/socialsdk/contact/fragment/br;
.super Ljava/lang/Object;
.source "MutliSelectWithAccountInputFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/br;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/br;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/br;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->L:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/MutliSelectWithAccountInputFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 308
    return-void
.end method
