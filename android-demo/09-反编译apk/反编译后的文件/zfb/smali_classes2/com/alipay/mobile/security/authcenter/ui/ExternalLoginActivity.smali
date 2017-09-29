.class public Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;
.super Lcom/alipay/mobile/framework/app/ui/BaseActivity;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EActivity;
    resName = "external_login_welcome"
.end annotation


# instance fields
.field private a:Landroid/os/Bundle;

.field private b:Lcom/alipay/mobile/framework/service/ext/security/AccountImportService;

.field private c:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

.field private d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

.field private e:Landroid/widget/ProgressBar;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    iput v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->g:I

    iput v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->h:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->e:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private static a(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "&"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/alipay/mobile/common/utils/BundleUtil;->deserialBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->getCurrentLoginState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->queryAccountDetailInfoByUserId(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->f:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    const-string/jumbo v1, "false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->setCurrentLoginState(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "20000006"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->b()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockGestureApp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->b()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->notifyUnlockLoginApp(ZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private a(Landroid/os/Bundle;Z)V
    .locals 5

    const-wide/16 v3, 0xbb8

    new-instance v0, Lcom/alipay/mobile/security/authcenter/ui/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/security/authcenter/ui/a;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    if-eqz p2, :cond_0

    :try_start_0
    const-string/jumbo v0, "actionType"

    const-string/jumbo v1, "20000002"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "20000001"

    invoke-interface {v0, v1, v2, p1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/framework/app/AppLoadException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/c;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->i:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/ui/c;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/security/authcenter/ui/c;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;)V

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->i:Landroid/os/Handler;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/c;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/security/authcenter/ui/c;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginId()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/GestureService;

    new-instance v2, Lcom/alipay/mobile/security/authcenter/ui/b;

    invoke-direct {v2, p0, v1}, Lcom/alipay/mobile/security/authcenter/ui/b;-><init>(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/GestureService;->gesture(Lcom/alipay/mobile/framework/service/ext/security/GestureCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ExternalLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/os/Bundle;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->c()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "externParams"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "alipays://platformapi/login?loginStatus=success"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    invoke-static {v3}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/os/Bundle;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/app/ActivityApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method private c()V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "alipays://platformapi/login?loginStatus=fail"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    invoke-static {v2}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "externParams"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ExternalLoginActivity"

    const-string/jumbo v3, "\u8fdb\u5165Launcher\u5e76\u8df3\u8f6c\u5230\u767b\u5f55\u754c\u9762"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/os/Bundle;Z)V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation build Lcom/googlecode/androidannotations/annotations/Background;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v1, "appId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "20000034"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/b;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/a/b;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/a/b;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ExternalLoginActivity"

    const-string/jumbo v3, "\u4ecesso\u5bfc\u5165\u8d26\u6237\u5b8c\u6210"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ExternalLoginActivity"

    const-string/jumbo v3, "\u6dd8\u7cfbsso token\u767b\u5f55\u5931\u8d25\uff0c\u8df3\u5230\u767b\u5f55\u754c\u9762"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->c()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ExternalLoginActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u542f\u52a8\u5bfc\u5165\u8d26\u6237\u514d\u767b\u51fa\u73b0\u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->c()V

    goto :goto_0

    :cond_2
    :try_start_3
    const-string/jumbo v1, "20000044"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-eqz v0, :cond_1

    :try_start_4
    new-instance v0, Lcom/alipay/mobile/security/authcenter/a/c;

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mApp:Lcom/alipay/mobile/framework/app/ActivityApplication;

    iget-object v2, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/authcenter/a/c;-><init>(Lcom/alipay/mobile/framework/app/ActivityApplication;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/security/authcenter/a/c;->a()Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getResultStatus()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a:Landroid/os/Bundle;

    const-string/jumbo v2, "targetAppId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;->getLoginId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "ExternalLoginActivity"

    const-string/jumbo v3, "wap token \u767b\u5f55\u5931\u8d25\uff0c\u8df3\u5230\u767b\u5f55\u754c\u9762"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->c()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_3
    :try_start_6
    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserLoginResultBiz;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0
.end method

.method public bridge synthetic getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResources()Landroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountImportService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountImportService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->b:Lcom/alipay/mobile/framework/service/ext/security/AccountImportService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->c:Lcom/alipay/mobile/framework/service/ext/security/LoginService;

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->mMicroApplicationContext:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->d:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onResume()V

    sget v0, Lcom/alipay/mobile/clientsecurity/R$id;->a:I

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->a(Landroid/content/Intent;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/ui/ExternalLoginActivity;->e:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public bridge synthetic startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/framework/app/ui/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
