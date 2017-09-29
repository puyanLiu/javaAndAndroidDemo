.class final Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;
.super Ljava/lang/Object;
.source "App.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/service/AuthorizeCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFailed()V
    .locals 3

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1359
    sget v2, Lcom/alipay/mobile/openplatform/common/R$string;->openplatform_app_login_exception:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->showToastCenter(Ljava/lang/String;)V

    .line 1360
    return-void
.end method

.method public final onAuthSuccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1354
    return-void
.end method

.method public final onNotNeedAuth()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1364
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->isAlipayApp()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1365
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1377
    :cond_0
    :goto_0
    return-void

    .line 1369
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1370
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 1373
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->access$0(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->auth()Z

    move-result v0

    .line 1374
    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/f;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v2, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;->launchAppWithAuthCode(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final onUserCancel()V
    .locals 0

    .prologue
    .line 1349
    return-void
.end method
