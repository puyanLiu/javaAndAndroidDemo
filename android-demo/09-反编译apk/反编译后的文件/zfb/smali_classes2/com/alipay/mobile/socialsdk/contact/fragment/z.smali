.class final Lcom/alipay/mobile/socialsdk/contact/fragment/z;
.super Ljava/lang/Object;
.source "GroupListMainPage_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Landroid/database/Cursor;Z)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->a:Landroid/database/Cursor;

    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->a:Landroid/database/Cursor;

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/z;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->access$001(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Landroid/database/Cursor;Z)V

    .line 91
    :cond_0
    return-void
.end method
