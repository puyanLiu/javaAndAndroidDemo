.class public Lcom/alipay/mobile/security/authcenter/app/LoginApp;
.super Lcom/alipay/mobile/framework/app/ActivityApplication;


# instance fields
.field a:Landroid/os/Bundle;

.field b:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field c:Lcom/alipay/mobile/security/authcenter/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ActivityApplication;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a:Landroid/os/Bundle;

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getEntryClassName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getmParams()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a:Landroid/os/Bundle;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected onRestart(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->onStart()V

    return-void
.end method

.method protected onStart()V
    .locals 4

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000006"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginApp"

    const-string/jumbo v2, "aliuser login"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a:Landroid/os/Bundle;

    :goto_0
    const-string/jumbo v1, "CFG_ALIUSER_REGISTERV2_AVATAR_ENABLE"

    const-string/jumbo v2, "CFG_ALIUSER_REGISTERV2_AVATAR_ENABLE"

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CFG_ALIUSER_REGISTERV2_NICK_ENABLE"

    const-string/jumbo v2, "CFG_ALIUSER_REGISTERV2_NICK_ENABLE"

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CFG_ALIUSER_TAOBAO_LOGIN_ENABLE"

    const-string/jumbo v2, "CFG_ALIUSER_TAOBAO_LOGIN_ENABLE"

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "CFG_ALIUSER_ACCOUNT_INPUT_TIP"

    const-string/jumbo v2, "CFG_ALIUSER_ACCOUNT_INPUT_TIP"

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->c:Lcom/alipay/mobile/security/authcenter/b/a/a;

    if-nez v1, :cond_1

    invoke-static {p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)Lcom/alipay/mobile/security/authcenter/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->c:Lcom/alipay/mobile/security/authcenter/b/a/a;

    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->c:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a()V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginApp"

    const-string/jumbo v2, "start aliuser sdk login 12345678 - end"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "com.alipay.security.startlogin"

    const-string/jumbo v1, "state=startLoginApp"

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "data"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->b:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "LoginApp"

    const-string/jumbo v2, "init: sendBroadcast action=com.alipay.security.startlogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/app/LoginApp;->c:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-virtual {v1, p0, v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->b(Lcom/alipay/mobile/framework/app/MicroApplication;Landroid/os/Bundle;)V

    goto :goto_1
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
