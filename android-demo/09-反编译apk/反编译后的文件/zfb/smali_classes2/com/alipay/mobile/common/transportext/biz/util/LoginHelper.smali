.class public Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "net_LoginHelper"

.field private static expirTime:J

.field private static inCycleLoginCount:I

.field private static loging:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->loging:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    sput v1, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->inCycleLoginCount:I

    .line 26
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->expirTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->loging:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static final tryDoLogin()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 30
    const-string/jumbo v2, "com.alipay.mobile.framework.service.ext.security.AuthService"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    .line 32
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "rpcAuth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 33
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 37
    :goto_0
    return v0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    const-string/jumbo v2, "LoginUtils"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public static final tryLogin()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 42
    const-string/jumbo v0, "net_LoginHelper"

    const-string/jumbo v1, "session invalid, go to login !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportEnv;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 45
    const-string/jumbo v0, "net_LoginHelper"

    const-string/jumbo v1, "Wallet not at front desk. return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 49
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->loging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const-string/jumbo v0, "net_LoginHelper"

    const-string/jumbo v1, "doing loging."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->loging:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 56
    sget-wide v2, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->expirTime:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_3

    .line 57
    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    sput-wide v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->expirTime:J

    .line 58
    sput v4, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->inCycleLoginCount:I

    .line 59
    const-string/jumbo v0, "net_LoginHelper"

    const-string/jumbo v1, "reset inCycleLoginCount"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_2
    const-string/jumbo v0, "net_LoginHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " inCycleLoginCount=\u3010\u201c"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->inCycleLoginCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u201d\u3011"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    sget v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->inCycleLoginCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->inCycleLoginCount:I

    .line 70
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->getInstance()Lcom/alipay/mobile/common/task/AsyncTaskExecutor;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper$1;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper$1;-><init>()V

    const-string/jumbo v2, "NetReloginThread"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/task/AsyncTaskExecutor;->execute(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string/jumbo v1, "net_LoginHelper"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->loging:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 61
    :cond_3
    sget v0, Lcom/alipay/mobile/common/transportext/biz/util/LoginHelper;->inCycleLoginCount:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_2

    .line 62
    const-string/jumbo v0, "net_LoginHelper"

    const-string/jumbo v1, "login count more than 3"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
