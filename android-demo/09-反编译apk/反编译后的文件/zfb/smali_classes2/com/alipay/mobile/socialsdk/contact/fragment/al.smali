.class final Lcom/alipay/mobile/socialsdk/contact/fragment/al;
.super Ljava/lang/Object;
.source "GroupMultiSelectFragment_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/database/Cursor;

.field final synthetic b:Z

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;Landroid/database/Cursor;Z)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->a:Landroid/database/Cursor;

    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 102
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->a:Landroid/database/Cursor;

    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/al;->b:Z

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;->access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupMultiSelectFragment_;Landroid/database/Cursor;Z)V

    .line 106
    :cond_0
    return-void
.end method
