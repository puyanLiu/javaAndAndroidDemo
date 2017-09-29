.class final Lcom/alipay/mobile/socialsdk/contact/fragment/aa;
.super Ljava/lang/Object;
.source "GroupListMainPage_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

.field final synthetic c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->b:Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->c:Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/fragment/aa;->b:Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;->access$101(Lcom/alipay/mobile/socialsdk/contact/fragment/GroupListMainPage_;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;)V

    .line 107
    :cond_0
    return-void
.end method
