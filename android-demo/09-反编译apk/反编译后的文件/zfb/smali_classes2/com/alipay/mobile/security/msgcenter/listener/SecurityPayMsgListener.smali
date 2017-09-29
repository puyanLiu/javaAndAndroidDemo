.class public Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alipay/mobile/security/msgcenter/utils/SecurityMsgListener;


# static fields
.field public static BizKey:Ljava/lang/String;

.field private static isPaying:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field private final DEFAULT_DATE_FORMAT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final bizIdentity:Ljava/lang/String;

.field private final bizNo:Ljava/lang/String;

.field private final bizTime:Ljava/lang/String;

.field private final bizType:Ljava/lang/String;

.field private final cashierType:Ljava/lang/String;

.field private mAuthService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

.field private msgSource:Ljava/lang/String;

.field private phoneCashierServcie:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

.field private preferences:Landroid/content/SharedPreferences;

.field private final syncToPushDone:Ljava/lang/String;

.field private final userId:Ljava/lang/String;

.field private final verifyType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "securityverify"

    sput-object v0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->BizKey:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->isPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "SecurityPayMsgListener"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->TAG:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    const-string/jumbo v0, "userId"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->userId:Ljava/lang/String;

    const-string/jumbo v0, "bizNo"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->bizNo:Ljava/lang/String;

    const-string/jumbo v0, "bizType"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->bizType:Ljava/lang/String;

    const-string/jumbo v0, "verifyType"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->verifyType:Ljava/lang/String;

    const-string/jumbo v0, "bizTime"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->bizTime:Ljava/lang/String;

    const-string/jumbo v0, "cashierType"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->cashierType:Ljava/lang/String;

    const-string/jumbo v0, "bizIdentity"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->bizIdentity:Ljava/lang/String;

    const-string/jumbo v0, "syncToPushDone"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->syncToPushDone:Ljava/lang/String;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->DEFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->phoneCashierServcie:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->mAuthService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "securityverify"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->onCommonPayResult([Ljava/lang/String;)V

    return-void
.end method

.method private buildPayParamsString(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    const-string/jumbo v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "biz_type=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "cashierType"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "trade_no=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bizNo"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "needConfirm=\"true\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "bizIdentity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "&bizcontext=\"{\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "needConfirm\":\"true\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "\"bizIdentity\":\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "bizIdentity"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\"}\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityPayMsgListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4f20\u7ed9\u5feb\u6377\u7684\u53c2\u6570\u4e3a:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private commonExit()V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[SecurityPayMsgListener]\u9000\u51fa\u672c\u6b21\u6d88\u606f\u5904\u7406\u6d41\u7a0b"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->isPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method private finishApp()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000201"

    invoke-interface {v0, v2, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->finishApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private getLocalBizTimeJsonObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 7

    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "bizTime"

    const-string/jumbo v3, "{}"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SecurityPayMsgListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[\u89e3\u6790\u672c\u5730bizTime\u6570\u636e\u51fa\u73b0\u5f02\u5e38\uff0c\u672c\u5730\u6570\u636e\u4e3a\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v5, "bizTime"

    const-string/jumbo v6, "{}"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->mAuthService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->mAuthService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[SecurityPayMsgListener:getToken()]UserInfo\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[SecurityPayMsgListener:getToken()]mAuthService is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getUserId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->mAuthService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->mAuthService:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[SecurityPayMsgListener:getUserId()]UserInfo\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string/jumbo v0, ""

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[SecurityPayMsgListener:getUserId()]mAuthService is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private goOrderDetail(Landroid/os/Bundle;)V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "actionType"

    const-string/jumbo v2, "toBillDetails"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "tradeNO"

    const-string/jumbo v2, "bizNo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bizType"

    const-string/jumbo v2, "cashierType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "20000090"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v0, "Push"

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "7"

    const-string/jumbo v1, "callBillDetailByPush"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bizNo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private goOrderList()V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000003"

    invoke-interface {v0, v2, v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->startApp(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string/jumbo v0, "Push"

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "6"

    const-string/jumbo v1, "callBillByPush"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private goPay(Landroid/os/Bundle;)V
    .locals 5

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->commonExit()V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "\u5524\u8d77\u6536\u94f6\u53f0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "4"

    const-string/jumbo v1, "callCashier"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bizNo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "cashierType"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "bizIdentity"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->phoneCashierServcie:Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;

    invoke-direct {p0, p1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->buildPayParamsString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$2;-><init>(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierServcie;->boot(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierCallback;)V

    goto :goto_0
.end method

.method private handleResult(Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;Landroid/os/Bundle;)V
    .locals 5

    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->success:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "bizTime"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->updateUserBizTime(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->resultList:Ljava/util/Map;

    const-string/jumbo v1, "isCallCashier"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string/jumbo v1, "cashierType"

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->resultList:Ljava/util/Map;

    const-string/jumbo v2, "cashierType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "bizIdentity"

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->resultList:Ljava/util/Map;

    const-string/jumbo v2, "bizIdentity"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->goPay(Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "Sync"

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[Sync\u7684\u6d41\u7a0b]\u8ba2\u5355\u4e0d\u9700\u8981\u652f\u4ed8\uff0c\u9ed8\u9ed8\u9000\u51fa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->commonExit()V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "Push"

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bizType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "bizType"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "merge"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[Push\u7684\u6d41\u7a0b]\u8ba2\u5355\u4e0d\u9700\u8981\u652f\u4ed8\uff0c\u672c\u8ba2\u5355\u662f\u5408\u5e76\u4ea4\u6613\uff0c\u8fdb\u8d26\u5355\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->goOrderList()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[Push\u7684\u6d41\u7a0b]\u8ba2\u5355\u4e0d\u9700\u8981\u652f\u4ed8\uff0c\u672c\u8ba2\u5355\u662f\u666e\u901a\u4ea4\u6613\uff0c\u8fdb\u8d26\u5355\u8be6\u60c5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "gmtCreate"

    iget-object v0, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->resultList:Ljava/util/Map;

    const-string/jumbo v2, "tradeCreateTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, p2}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->goOrderDetail(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    const-string/jumbo v0, "202"

    iget-object v1, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->resultCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "\u67e5\u8be2mobilesecurity\u8fd4\u56de\u5931\u8d25\uff0c\u9ed8\u9ed8\u9000\u51fa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->commonExit()V

    if-eqz p1, :cond_1

    const-string/jumbo v0, "8"

    const-string/jumbo v1, "queryPayStatusFail"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "bizNo"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;->resultCode:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v0, "Push"

    iget-object v1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[Push\u7684\u6d41\u7a0b]\u67e5\u8be2mobilesecurity\u8fd4\u56de\u5931\u8d25\uff0c\u8fdb\u8d26\u5355\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->goOrderList()V

    goto :goto_2
.end method

.method private isNeedHandleThis(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getLocalBizTimeJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SecurityPayMsgListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[SecurityPayMsgListener:isNeedHandleThis()]\u672c\u5730\u8bb0\u5f55\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    :cond_0
    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const-string/jumbo v3, "Sync"

    iget-object v4, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private varargs onCommonPayResult([Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "\u6536\u94f6\u53f0\u56de\u8c03"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "5"

    const-string/jumbo v1, "receiveCashierResult"

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->commonExit()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->goOrderList()V

    return-void
.end method

.method private updateUserBizTime(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getLocalBizTimeJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityPayMsgListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SecurityPayMsgListener:updateUserBizTime()]\u66f4\u65b0\u524d\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    :cond_1
    if-nez v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string/jumbo v3, "Push"

    iget-object v4, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "bizTime"

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityPayMsgListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[SecurityPayMsgListener:updateUserBizTime()]\u66f4\u65b0\u540e\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public format(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onParamsParsed(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->finishApp()V

    if-nez p2, :cond_1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "[onParamsParsed:params] is null"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "Sync"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "1"

    const-string/jumbo v1, "receiveSyncPayInfo"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bizNo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "bizTime"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->isPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "\u6536\u94f6\u53f0\u5df2\u7ecf\u542f\u52a8\uff0c\u6216\u5df2\u7ecf\u6709\u4e00\u6761\u4ea4\u6613\u5728\u67e5\u8be2\u670d\u52a1\u7aef\u72b6\u6001\uff0c\u672c\u6b21\u4ea4\u6613\u820d\u5f03"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "2"

    const-string/jumbo v1, "receivePushPayInfo"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bizNo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "bizTime"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-string/jumbo v1, "20000125"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findAppById(Ljava/lang/String;)Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityPayMsgListener"

    const-string/jumbo v3, "\u5176\u4ed6\u4e1a\u52a1\u5df2\u7ecf\u5524\u8d77\u6536\u94f6\u53f0\uff0c\u672c\u6b21\u4ea4\u6613\u820d\u5f03"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "20000125"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "\u5feb\u6377app\uff0c\u5728\u9876\u7aef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SecurityPayMsgListener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u5feb\u6377app\uff0c\u4e0d\u5728\u9876\u7aef\u3002\u9876\u7aefappId\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[msgSource]:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",[params]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->msgSource:Ljava/lang/String;

    sget-object v0, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->isPaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string/jumbo v0, "bizTime"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->isNeedHandleThis(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SecurityPayMsgListener"

    const-string/jumbo v2, "\u7ecf\u5224\u65ad\uff0c\u672c\u6b21\u6d88\u606f\u4e0d\u9700\u8981\u5904\u7406"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->commonExit()V

    const-string/jumbo v0, "3"

    const-string/jumbo v1, "discardSyncPayInfo"

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "bizNo"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string/jumbo v3, "bizTime"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener$1;-><init>(Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;Landroid/os/Bundle;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected queryBizStatus(Landroid/os/Bundle;)V
    .locals 6

    new-instance v0, Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;

    invoke-direct {v0}, Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;-><init>()V

    new-instance v1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;

    invoke-direct {v1}, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;-><init>()V

    const-string/jumbo v2, "bizNo"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;->bizNo:Ljava/lang/String;

    const-string/jumbo v2, "bizType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;->bizType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;->userId:Ljava/lang/String;

    const-string/jumbo v2, "verifyType"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;->verifyType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->getToken()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;->token:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/security/msgcenter/biz/VerifyBizQueryFacadeBiz;->queryBizStatus(Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizReq;)Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->handleResult(Lcom/alipay/mobilesecurity/core/model/securityverify/QueryBizRes;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/rpc/RpcException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->dismissProgressDialog()V

    invoke-direct {p0}, Lcom/alipay/mobile/security/msgcenter/listener/SecurityPayMsgListener;->commonExit()V

    const-string/jumbo v1, "8"

    const-string/jumbo v2, "queryPayStatusFail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "bizNo"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/rpc/RpcException;->getCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/security/msgcenter/utils/LogHelper;->writeLog(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    throw v0
.end method
