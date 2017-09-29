.class final Lcom/alipay/mobile/command/engine/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/command/engine/e;

.field private final synthetic b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/command/engine/e;Lcom/alipay/mobile/command/model/TriggerTypeEnum;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    iput-object p2, p0, Lcom/alipay/mobile/command/engine/f;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "do "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/alipay/mobile/command/engine/f;->b:Lcom/alipay/mobile/command/model/TriggerTypeEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " Trigger  unKnow Exception."

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lcom/alipay/mobile/command/util/CommandLogUtil;->upErrorInfo(Ljava/lang/Throwable;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    invoke-static {v1}, Lcom/alipay/mobile/command/engine/e;->a(Lcom/alipay/mobile/command/engine/e;)Lcom/alipay/mobile/command/engine/TaskExeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/engine/TaskExeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/command/engine/f;->a:Lcom/alipay/mobile/command/engine/e;

    invoke-static {v1}, Lcom/alipay/mobile/command/engine/e;->a(Lcom/alipay/mobile/command/engine/e;)Lcom/alipay/mobile/command/engine/TaskExeService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/command/engine/TaskExeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.eg.android.AlipayGphoneRC"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "cmdCenterError:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->exception(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
