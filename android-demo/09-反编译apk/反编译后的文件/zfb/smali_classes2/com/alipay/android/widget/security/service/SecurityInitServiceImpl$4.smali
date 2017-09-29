.class Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityInitServiceImpl"

    const-string/jumbo v2, "checkResetGestureMode"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$8(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/base/config/ConfigService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/base/config/ConfigService;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "YES"

    const-string/jumbo v2, "GestureStandardConvenientToNormalEnable"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/base/config/ConfigService;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$9(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$10(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v0}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$9(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "convenient"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getGestureAppearMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "normal"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->setGestureAppearMode(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl$4;->this$0:Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;

    invoke-static {v1}, Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;->access$10(Lcom/alipay/android/widget/security/service/SecurityInitServiceImpl;)Lcom/alipay/mobile/framework/service/ext/security/AccountService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/ext/security/AccountService;->addUserInfo(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
