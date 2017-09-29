.class public Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;
.super Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;
.source "PhoneCashierAssistServiceImpl.java"


# instance fields
.field private a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistService;-><init>()V

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateKeyboardService()Lcom/alipay/android/app/template/TemplateKeyboardService;
    .locals 3

    .prologue
    .line 238
    :try_start_0
    const-string/jumbo v0, "com.alipay.android.app.alikeyboard.FlybirdTemplateKeyboardService"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/TemplateKeyboardService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    return-object v0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    const-string/jumbo v1, "PhoneCashierAssistServiceImpl"

    const-string/jumbo v2, "exception: "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 246
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 5

    .prologue
    .line 66
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 70
    const-class v2, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 71
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->isLogin()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getLogonId()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v4, "extern_token"

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v2, "logonId"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v2, "userId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_0
    return-object v1
.end method

.method public getUserInfoSessionId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 41
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 44
    const-string/jumbo v1, ""

    .line 45
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MspProfile"

    .line 46
    const-string/jumbo v4, "getUserInfo start msms"

    .line 45
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 48
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "MspProfile"

    .line 49
    const-string/jumbo v4, "getUserInfo end msms"

    .line 48
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "PhoneCashierBootManager"

    .line 52
    const-string/jumbo v3, "user not login"

    .line 51
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 61
    :goto_0
    return-object v0

    .line 54
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "MspProfile"

    .line 55
    const-string/jumbo v3, "getExtern_token start msms"

    .line 54
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getExtern_token()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "MspProfile"

    .line 58
    const-string/jumbo v3, "getExtern_token end msms"

    .line 57
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isQihooGuardOpened()Z
    .locals 1

    .prologue
    .line 130
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooGuardOpened()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 134
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isQihooInstalled()Z
    .locals 1

    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->isQihooInstalled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 143
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 120
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public readBankCard(Ljava/lang/Object;Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 89
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->updateActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    .line 92
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 94
    const-class v2, Lcom/alipay/android/phone/scancode/export/ScanService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/scancode/export/ScanService;

    .line 95
    new-instance v2, Lcom/alipay/android/phone/scancode/export/ScanRequest;

    invoke-direct {v2}, Lcom/alipay/android/phone/scancode/export/ScanRequest;-><init>()V

    sget-object v3, Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;->CARD:Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setScanType(Lcom/alipay/android/phone/scancode/export/ScanRequest$ScanType;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v2

    .line 96
    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Lcom/alipay/android/phone/scancode/export/ScanRequest;->setSourceId(Ljava/lang/String;)Lcom/alipay/android/phone/scancode/export/ScanRequest;

    move-result-object v2

    .line 97
    new-instance v3, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;

    invoke-direct {v3, p0, v1, p1}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$1;-><init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Landroid/app/Activity;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Lcom/alipay/android/phone/scancode/export/ScanService;->scan(Lcom/alipay/android/phone/scancode/export/ScanRequest;Lcom/alipay/android/phone/scancode/export/ScanCallback;)V

    .line 115
    return-void
.end method

.method public readQihooSMS()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/security/QihooGuardService;->readQihooSMS()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public requestMspData(Ljava/util/Map;)Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;
    .locals 4

    .prologue
    .line 165
    if-nez p1, :cond_0

    .line 167
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "msp"

    const-string/jumbo v2, "rpc init"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    new-instance v0, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;-><init>()V

    .line 169
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    .line 172
    :cond_0
    new-instance v0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl$2;-><init>(Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;Ljava/util/Map;)V

    .line 192
    new-instance v1, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;

    invoke-direct {v1, v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;-><init>(Lcom/alipay/mobile/framework/service/common/impl/DefaultConfig;)V

    .line 193
    new-instance v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;

    invoke-direct {v2}, Lcom/alipay/mobilecashier/service/rpc/MspReq;-><init>()V

    .line 194
    const-string/jumbo v0, "namespace"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nsp:Ljava/lang/String;

    .line 195
    const-string/jumbo v0, "api_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_nm:Ljava/lang/String;

    .line 196
    const-string/jumbo v0, "params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->params:Ljava/lang/String;

    .line 197
    const-string/jumbo v0, "api_version"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->api_ver:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "auth_key"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->auth_key:Ljava/lang/String;

    .line 199
    const-string/jumbo v0, "tplVersion"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ver:Ljava/lang/String;

    .line 200
    const-string/jumbo v0, "user_agent"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->ua:Ljava/lang/String;

    .line 201
    const-string/jumbo v0, "session"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->session:Ljava/lang/String;

    .line 202
    const-string/jumbo v0, "tid"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->tid:Ljava/lang/String;

    .line 203
    const-string/jumbo v0, "imei"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imei:Ljava/lang/String;

    .line 204
    const-string/jumbo v0, "imsi"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobilecashier/service/rpc/MspReq;->imsi:Ljava/lang/String;

    .line 207
    const-string/jumbo v3, "alipay.security.security.dispatch"

    .line 209
    const-string/jumbo v0, "dispatchtype"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    const-class v0, Lcom/alipay/securitycore/common/service/facade/mobile/SecurityDispatchForRpcService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/securitycore/common/service/facade/mobile/SecurityDispatchForRpcService;

    .line 212
    invoke-interface {v0, v2}, Lcom/alipay/securitycore/common/service/facade/mobile/SecurityDispatchForRpcService;->dispatch(Lcom/alipay/mobilecashier/service/rpc/MspReq;)Lcom/alipay/mobilecashier/service/rpc/MspRes;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 219
    :goto_1
    new-instance v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;

    invoke-direct {v0}, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;-><init>()V

    .line 224
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->mspParam:Ljava/lang/String;

    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nsp:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nsp:Ljava/lang/String;

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_nm:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_nm:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->params:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->params:Ljava/lang/String;

    .line 228
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->api_ver:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->api_ver:Ljava/lang/String;

    .line 229
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->code:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->code:Ljava/lang/String;

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    iget-object v1, v1, Lcom/alipay/mobilecashier/service/rpc/MspRes;->err_msg:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobilecashier/service/rpc/MspRpcResult;->err_msg:Ljava/lang/String;

    goto/16 :goto_0

    .line 214
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 216
    const-class v0, Lcom/alipay/mobilecashier/service/rpc/MspDispatcherService;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/framework/service/common/impl/RpcServiceImpl;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilecashier/service/rpc/MspDispatcherService;

    .line 217
    invoke-interface {v0, v2}, Lcom/alipay/mobilecashier/service/rpc/MspDispatcherService;->dispatch(Lcom/alipay/mobilecashier/service/rpc/MspReq;)Lcom/alipay/mobilecashier/service/rpc/MspRes;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/phonecashier/assist/PhoneCashierAssistServiceImpl;->a:Lcom/alipay/mobilecashier/service/rpc/MspRes;

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    goto :goto_1
.end method
