.class final Lcom/alipay/mobile/socialsdk/contact/fragment/dc;
.super Ljava/lang/Object;
.source "SingleFriendSelectFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    .line 409
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/dc;->a:Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;

    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->L:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/SingleFriendSelectFragment;->refreshListUi(Landroid/database/Cursor;Z)V

    .line 413
    return-void
.end method
