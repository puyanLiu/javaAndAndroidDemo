.class final Lcom/alipay/mobile/security/authcenter/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/security/authcenter/b/a/i;

.field private final synthetic b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

.field private final synthetic c:Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/authcenter/b/a/i;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/security/authcenter/b/a/j;->a:Lcom/alipay/mobile/security/authcenter/b/a/i;

    iput-object p2, p0, Lcom/alipay/mobile/security/authcenter/b/a/j;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    iput-object p3, p0, Lcom/alipay/mobile/security/authcenter/b/a/j;->c:Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/j;->a:Lcom/alipay/mobile/security/authcenter/b/a/i;

    invoke-static {v0}, Lcom/alipay/mobile/security/authcenter/b/a/i;->a(Lcom/alipay/mobile/security/authcenter/b/a/i;)Lcom/alipay/mobile/security/authcenter/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/security/authcenter/b/a/j;->b:Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;

    invoke-static {v0, v1}, Lcom/alipay/mobile/security/authcenter/b/a/a;->a(Lcom/alipay/mobile/security/authcenter/b/a/a;Lcom/alipay/aliusergw/biz/shared/processer/login/UnifyLoginRes;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/authcenter/b/a/j;->c:Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ali/user/mobile/login/AbsNotifyFinishCaller;->notifyPacelable(Landroid/os/Parcelable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AliUserSdkLoginBiz"

    const-string/jumbo v3, "\u5904\u7406\u767b\u5f55\u6210\u529f\u5f02\u5e38"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
