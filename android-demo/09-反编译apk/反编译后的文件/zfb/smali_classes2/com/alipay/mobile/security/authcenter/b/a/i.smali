.class final Lcom/alipay/mobile/security/authcenter/b/a/i;
.super Lcom/ali/user/mobile/login/DefaultLoginCaller;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/a;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/i;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-direct {p0}, Lcom/ali/user/mobile/login/DefaultLoginCaller;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/security/authcenter/b/a/i;)Lcom/alipay/mobile/security/authcenter/b/a/a;
    .locals 1

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/i;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    return-object v0
.end method


# virtual methods
.method public final cancelLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "===== call cancelLogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/ali/user/mobile/login/DefaultLoginCaller;->cancelLogin(Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    return-void
.end method

.method public final failLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "===== call failLogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/DefaultLoginCaller;->failLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    return-void
.end method

.method public final filterLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "===== call filterLogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/ali/user/mobile/login/DefaultLoginCaller;->filterLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    return-void
.end method

.method public final isSaveHistory()Z
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "===== call isSaveHistory"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/ali/user/mobile/login/DefaultLoginCaller;->isSaveHistory()Z

    move-result v0

    return v0
.end method

.method public final postFinishLogin(Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AliUserSdkLoginBiz"

    const-string/jumbo v2, "===== call postFinishLogin"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/i;->a:Lcom/alipay/mobile/security/authcenter/b/a/a;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/mobile/security/authcenter/b/a/a;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    new-instance v1, Lcom/alipay/mobile/security/authcenter/b/a/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/security/authcenter/b/a/j;-><init>(Lcom/alipay/mobile/security/authcenter/b/a/i;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V

    const-string/jumbo v2, "ALiUserSdkLoginBiz"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
