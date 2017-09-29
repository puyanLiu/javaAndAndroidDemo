.class public Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;
.super Lcom/alipay/mobile/framework/service/ext/security/SecurityInitService;


# annotations
.annotation build Lcom/googlecode/androidannotations/annotations/EBean;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;
    }
.end annotation


# instance fields
.field final APPVERSION:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private a:Lcom/alipay/mobile/framework/MicroApplicationContext;

.field private b:Z

.field private c:Z

.field private d:Lcom/alipay/android/widget/security/a/a;

.field private e:Lcom/alipay/mobile/security/securitycommon/LogSb;

.field private f:Lcom/alipay/mobile/security/securitycommon/LogSb;

.field private g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private h:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

.field private i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

.field initFlagSynLock:Ljava/lang/String;

.field private j:Lcom/alipay/mobile/framework/service/ext/security/AccountService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/security/SecurityInitService;-><init>()V

    const-string/jumbo v0, "SecurityInitServiceImpl"

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "appVersion"

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->APPVERSION:Ljava/lang/String;

    const-class v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->initFlagSynLock:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->g:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    return-object v0
.end method

.method private a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "toLoginforNoUser -- \u8d26\u5bc6\u767b\u9646"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "userInfo.isAutoLogin() = false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u6821\u9a8ctid\u5f02\u5e38\uff0c\u5e76\u4e14\u6ca1\u6709\u8d70\u5230notifyLogin\uff0c\u540a\u8d77PipeLine"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "userInfo = null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-ZHAQ-56"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "VerifyTid"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    const-string/jumbo v1, "Result"

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v1

    const-string/jumbo v2, "event"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->event(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c()Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c()Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c()Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/common/CacheManagerService;->getMemCacheService()Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;

    move-result-object v0

    const-string/jumbo v1, "securityapp"

    const-string/jumbo v2, "security"

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/mobile/framework/service/common/GenericMemCacheService;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c:Z

    return-void
.end method

.method static synthetic access$10(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AccountService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->j:Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Lcom/alipay/mobile/security/securitycommon/LogSb;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    return-void
.end method

.method static synthetic access$4(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/security/securitycommon/LogSb;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Lcom/alipay/android/widget/security/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->d:Lcom/alipay/android/widget/security/a/a;

    return-void
.end method

.method static synthetic access$7(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/android/widget/security/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->d:Lcom/alipay/android/widget/security/a/a;

    return-object v0
.end method

.method static synthetic access$8(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-object v0
.end method

.method static synthetic access$9(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;
    .locals 1

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    return-object v0
.end method

.method private b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->h:Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    return-object v0
.end method

.method private b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v4, "notify login"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "notifyLogin  isToBiz = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "isautologin: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "gestureskipstr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isautologin: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "gestureskipstr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureSkipStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "startAutoLogin isToBiz = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v4, "start auto login"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->autoAuth()Z
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "getAuthService().autoAuth() is success?"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    if-nez v4, :cond_2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v4, "showLoginActivity"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e()V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityInitServiceImpl"

    const-string/jumbo v4, "startAutoLogin success, reportDeviceLocation"

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/ali/user/mobile/report/ReportLocationService;->getInstance(Landroid/content/Context;)Lcom/ali/user/mobile/report/ReportLocationService;

    move-result-object v0

    const-string/jumbo v2, "alipay.autoLogin"

    invoke-virtual {v0, v2}, Lcom/ali/user/mobile/report/ReportLocationService;->reportLocation(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RpcException"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityInitServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u514d\u767b\u5931\u8d25\uff0c\u5f02\u5e38\u4fe1\u606f"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e()V

    goto :goto_2

    :catchall_0
    move-exception v0

    move v1, v2

    :goto_3
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e()V

    :cond_3
    throw v0

    :cond_4
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "another showLoginActivity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "showLoginActivity userInfo != null && !isToBiz"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f()V

    goto/16 :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "showLoginActivity"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "showLoginActivity userInfo == null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f()V

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move v1, v3

    goto :goto_3
.end method

.method private c()Lcom/alipay/mobile/framework/service/common/CacheManagerService;
    .locals 2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    const-class v1, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    :cond_0
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->i:Lcom/alipay/mobile/framework/service/common/CacheManagerService;

    return-object v0
.end method

.method private d()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u4ece\u79fb\u52a8\u5feb\u6377\u83b7\u53d6tid\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryCertification()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$1;-><init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private f()V
    .locals 4

    :try_start_0
    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->showActivityLogin(Landroid/os/Bundle;Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityInitServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u5f00\u59cb\u751f\u6210tid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "generateTid..."

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    new-instance v1, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$2;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$2;-><init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->generateDid(Lcom/alipay/mobile/framework/service/ext/security/DeviceCallBack;)V

    return-void
.end method


# virtual methods
.method public addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    const-string/jumbo v2, "walletTid"

    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityShareStore;->putString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v1

    const-string/jumbo v2, "isUpdateAutoLoginKey"

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/utils/CacheSet;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkResetGestureMode()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;

    invoke-direct {v1, p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;-><init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)V

    const-string/jumbo v2, "checkResetGestureMode"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public copyMspTidToWalletId()V
    .locals 6

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SecurityInitServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "current walletTid in client is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->d()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->setWalletTid(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityInitServiceImpl"

    const-string/jumbo v3, "\u4ece\u5feb\u6377\u4e2d\u83b7\u53d6\u7684tid\u4fdd\u5b58\u5230\u94b1\u5305"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;)Z

    :cond_0
    return-void
.end method

.method protected handleUpdateLoginResult(Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;)V
    .locals 5

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alipay/mobilesecurity/common/service/model/MobileSecurityResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u66f4\u65b0\u5ba2\u6237\u7aef\u514d\u767b\u5173\u7cfb "

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "handleUpdateLoginResult begin"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "deviceInfoBean = null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->d()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->setWalletTid(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SecurityInitServiceImpl"

    const-string/jumbo v4, "\u4fdd\u5b58walterid "

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setWalletTid = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "tempInfoBean.getTid = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "tempInfoBean = null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "handleUpdateLoginResult fail"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->f:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a:Lcom/alipay/mobile/framework/MicroApplicationContext;

    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public securityInit(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "inited_param"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-direct {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobilesecurity/external/login/ExternalLoginUtils;->isExternalLoginReq(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "isExtLogin = true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u6dd8\u7cfbsso token\u767b\u5f55\uff0c\u4e0d\u505a\u5b89\u5168\u6a21\u5757\u521d\u59cb\u5316,intent uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/security/securitycommon/clientsecurity/SecurityUtil;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "isNoNeedAutoLogin = true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5728\u4e0d\u9700\u8981\u81ea\u52a8\u767b\u9646set\u4e2d\u6240\u4ee5\u4e0d\u505a\u5b89\u5168\u6a21\u5757\u521d\u59cb\u5316\u548c\u514d\u767b\u64cd\u4f5c,intent uri:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getSecurityInstance()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;

    invoke-direct {v1, p0, p1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$InitThread;-><init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Landroid/content/Intent;)V

    const-string/jumbo v2, "SecurityInitServiceImpl_InitThread"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public securityInitStart()V
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v0, "justGenTid"

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "isToBiz"

    iget-boolean v2, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->logLoginKey()V

    :cond_0
    iget-boolean v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->c:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "tid"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "justGenTid = true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u5f53\u524d\u5ba2\u6237\u7aef\u4e2d\u4e0d\u5b58\u5728\u7528\u6237\uff0c\u9996\u6b21\u542f\u52a8\u751f\u6210tid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->g()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v2, "justGenTid = false"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityInitServiceImpl"

    const-string/jumbo v3, "\u4ece\u672c\u5730\u83b7\u53d6tid\uff0c\u5982\u679c\u5df2\u7ecf\u5b58\u5728tid\u6821\u9a8c\u662f\u5426\u5408\u6cd5\uff0c\u5982\u679c\u4e0d\u5b58\u5728\u91cd\u65b0\u751f\u6210tid"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v3, "deviceInfoBean = null \u5feb\u6377\u83b7\u53d6tid\u5931\u8d25"

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string/jumbo v3, "tid"

    const-string/jumbo v4, "true"

    invoke-direct {p0, v3, v4}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tid != null tid = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getLoginUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->isAutoLogin()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "SecurityInitServiceImpl"

    const-string/jumbo v5, "\u9a8c\u8bc1\u672c\u5730tid\u662f\u5426\u5408\u6cd5"

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v4, "userInfo != null && userInfo.isAutoLogin()=true"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v4, "SecurityInitServiceImpl"

    const-string/jumbo v5, "\u9a8c\u8bc1tid\u662f\u5426\u5408\u6cd5 "

    invoke-interface {v0, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v4, "checktid"

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    const-class v4, Lcom/alipay/mobileapp/common/service/facade/authcenter/facade/MobileTerminalFacade;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobileapp/common/service/facade/authcenter/facade/MobileTerminalFacade;

    new-instance v4, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;

    invoke-direct {v4}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;-><init>()V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v5

    invoke-interface {v5}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v5

    const-string/jumbo v6, "isUpdateAutoLoginKey"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->d()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/Tid;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;-><init>()V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getMspkey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobilesecurity/core/model/Tid;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImei()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImei(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getImsi()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobilesecurity/core/model/Tid;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobilesecurity/core/model/Tid;->setTid(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimei()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getVimsi()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alipay/mobilesecurity/core/model/Tid;->setVimsi(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "SecurityInitServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "mtid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getClientKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setClientKey(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setImei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getImsi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getTid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setTid(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getVimei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setVimei(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobilesecurity/core/model/Tid;->getVimsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setVimsi(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    invoke-interface {v0, v4}, Lcom/alipay/mobileapp/common/service/facade/authcenter/facade/MobileTerminalFacade;->verifyTid(Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;)Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string/jumbo v0, "Y"

    :goto_2
    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u9a8c\u8bc1tid\u8bf7\u6c42\u670d\u52a1\u5668\u54cd\u5e94\u6210\u529f\uff0ctid\u9a8c\u8bc1\u6210\u529f,\u5f00\u59cb\u8fdb\u884c\u514d\u767b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "tidVerifyRes.isSuccess() = true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "RuntimeException"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "N-Exception-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "securityInitStart exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setTid(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmClientKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setClientKey(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setImei(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setImsi(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyReq;->setTid(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_6
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "N-Error-"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->getResultCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v2, "tidVerifyRes.isSuccess() = false"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tidVerifyRes != null code ="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->getResultCode()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->getResultCode()I

    move-result v0

    const/16 v2, 0x1b5e

    if-ne v0, v2, :cond_9

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityInitServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u9a8c\u8bc1tid \u8bf7\u6c42\u670d\u52a1\u5668\u54cd\u5e94\u5931\u8d25 "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->getResultCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/alipay/mobileapp/common/service/facade/authcenter/model/TidVerifyRes;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u9a8c\u8bc1tid\u5931\u8d25\uff0c\u66f4\u65b0\u672c\u5730\u7528\u6237\u767b\u5f55\u514d\u767b\u72b6\u6001\uff0c\u540c\u65f6\u4ece\u65b0\u751f\u6210tid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u6e05\u9664\u672c\u5730\u7528\u6237\u767b\u5f55\u72b6\u6001\uff0c\u514d\u767b\u53d6\u6d88"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/dbhelper/SecurityDbHelper;->updateUserAutoLoginFlag(Ljava/lang/String;)Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "\u514d\u767b\u5df2\u7ecf\u53d6\u6d88,\u91cd\u65b0\u751f\u6210tid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/CacheSet;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/utils/CacheSet;

    move-result-object v0

    const-string/jumbo v1, "isUpdateAutoLoginKey"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/utils/CacheSet;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v0

    if-eqz v0, :cond_b

    :try_start_5
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "ISUPDATEAUTOLOGINKEY = true"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/helper/PayHelperServcie;

    invoke-virtual {v0}, Lcom/alipay/android/app/helper/PayHelperServcie;->resetTID()Z

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "resetTID"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "copyMspTidToWallterId"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b()Lcom/alipay/mobile/framework/service/ext/security/DeviceService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/DeviceService;->queryDeviceInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->getWalletTid()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v4, "SecurityInitServiceImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "walletTid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->d()Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/domain/MspDeviceInfoBean;->getTid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;->setWalletTid(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityInitServiceImpl"

    const-string/jumbo v4, "\u4fdd\u5b58walterid "

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->addDeviceInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/DeviceInfoBean;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_9
    :goto_4
    :try_start_6
    invoke-direct {p0, v3}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v2, "tidVerifyRes = null"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ISUPDATEAUTOLOGINKEY Exception "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->printStackTraceAndMore(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "ISUPDATEAUTOLOGINKEY = false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->refleshClientKey()Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->g()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :cond_c
    if-eqz v3, :cond_d

    :try_start_7
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "userInfo != null && userInfo.isAutoLogin()=false"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    :goto_5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->b(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "userInfo == null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAuthService().isLogin() = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a()Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    const-string/jumbo v0, "tid"

    const-string/jumbo v1, "false"

    invoke-direct {p0, v0, v1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    const-string/jumbo v1, "tid = null"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/securitycommon/LogSb;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "tid\u4e3anull\uff0c\u4ece\u5feb\u6377\u8fc7\u53bbtid\u5e76\u4fdd\u5b58\u5728\u5ba2\u6237\u7aef\u672c\u5730"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->g()V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->e:Lcom/alipay/mobile/security/securitycommon/LogSb;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/securitycommon/LogSb;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/securitycommon/LoggerUtils;->a(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method

.method public updateWalletLoginAuth(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$3;-><init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;Ljava/util/List;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityInitServiceImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u66f4\u65b0\u514d\u767b\u5173\u7cfb\u5f02\u5e38:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
