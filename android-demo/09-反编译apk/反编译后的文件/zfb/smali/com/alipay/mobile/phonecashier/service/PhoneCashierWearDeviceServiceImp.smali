.class public Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;
.super Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierWearDeviceService;
.source "PhoneCashierWearDeviceServiceImp.java"


# static fields
.field private static braceletOperator:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

.field private static header:Ljava/lang/String;

.field private static properties:Ljava/util/Properties;

.field private static watchOperator:Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->header:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    .line 56
    new-instance v0, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->braceletOperator:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    .line 57
    new-instance v0, Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;

    invoke-direct {v0}, Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;-><init>()V

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->watchOperator:Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/phonecashier/PhoneCashierWearDeviceService;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->isToopQuickPay()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;Z)V
    .locals 0

    .prologue
    .line 198
    invoke-static/range {p0 .. p5}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->fillCommonReqeustModel(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;Z)V

    return-void
.end method

.method static synthetic access$2(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->mspParamHeaderOp(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static fillCommonReqeustModel(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;Z)V
    .locals 3

    .prologue
    .line 201
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 203
    :try_start_0
    const-string/jumbo v1, "type"

    const-string/jumbo v2, "bic"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string/jumbo v1, "method"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string/jumbo v1, "action"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 209
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 207
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 211
    const-string/jumbo v1, "user_id"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    if-eqz p5, :cond_2

    .line 214
    invoke-static {}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->uaInfo()Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;

    move-result-object v0

    .line 215
    iget-object v1, v0, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->a:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    const-string/jumbo v1, "ua"

    iget-object v2, v0, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_0
    iget-object v1, v0, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 219
    const-string/jumbo v1, "pa"

    iget-object v2, v0, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    const-string/jumbo v1, "utdid"

    iget-object v0, v0, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_2
    const-string/jumbo v0, "external_info"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    if-eqz p4, :cond_3

    .line 227
    invoke-virtual {p4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->getAuthType()I

    move-result v0

    .line 228
    invoke-virtual {p4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->getWearType()I

    move-result v1

    invoke-virtual {p4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-static {p0, v0, v1, v2}, Lcom/alipay/security/mobile/api/AuthenticatorApi;->getRegAuthData(Landroid/content/Context;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    const-string/jumbo v1, "secData"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_3
    :goto_0
    return-void

    .line 231
    :catch_0
    move-exception v0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wwdc::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private intitial(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 277
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 279
    const-string/jumbo v1, "alipay_hw_buildmodle"

    invoke-static {v1}, Lcom/alipay/android/app/util/ResUtils;->k(Ljava/lang/String;)I

    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 280
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    sput-object v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    .line 282
    :try_start_0
    sget-object v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const/4 v1, 0x0

    sput-object v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    .line 285
    const-string/jumbo v1, "ex"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/android/app/statistic/StatisticManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wwdc::"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/android/app/base/util/Tools;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 189
    if-nez p0, :cond_0

    .line 190
    const-string/jumbo p0, ""

    .line 192
    :cond_0
    if-nez p1, :cond_1

    .line 193
    const-string/jumbo p1, ""

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isToopQuickPay()Z
    .locals 2

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findTopRunningApp()Lcom/alipay/mobile/framework/app/MicroApplication;

    move-result-object v1

    .line 67
    const-string/jumbo v0, ""

    .line 68
    if-eqz v1, :cond_0

    .line 69
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/app/MicroApplication;->getAppId()Ljava/lang/String;

    move-result-object v0

    .line 72
    :cond_0
    const-string/jumbo v1, "20000125"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static mspParamHeaderOp(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 171
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v0

    .line 172
    const-string/jumbo v1, "demo_global_settings"

    .line 173
    const/4 v2, 0x0

    .line 172
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_0

    .line 175
    if-eqz p2, :cond_2

    sget-object v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->header:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->isStringEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_msp_params"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 183
    :cond_0
    sput-object p1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->header:Ljava/lang/String;

    .line 185
    :cond_1
    :goto_0
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->header:Ljava/lang/String;

    return-object v0

    .line 179
    :cond_2
    if-nez p2, :cond_1

    sget-object v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->header:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const-string/jumbo v1, "last_msp_params"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->header:Ljava/lang/String;

    goto :goto_0
.end method

.method private static uaInfo()Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;
    .locals 5

    .prologue
    .line 297
    invoke-static {}, Lcom/alipay/android/app/assist/MspAssistUtil;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/app/helper/PayHelper;->a(Landroid/content/Context;)Lcom/alipay/android/app/helper/PayHelper;

    .line 298
    new-instance v1, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;

    invoke-direct {v1}, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;-><init>()V

    .line 300
    :try_start_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->a()Lcom/alipay/android/app/sys/GlobalContext;

    move-result-object v0

    .line 301
    invoke-static {}, Lcom/alipay/android/app/tid/TidInfo;->f()Lcom/alipay/android/app/tid/TidInfo;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v2}, Lcom/alipay/android/app/tid/TidInfo;->d()V

    .line 306
    :cond_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/app/assist/MspAssistUtil;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 307
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-gt v3, v4, :cond_2

    .line 308
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v3, v2, v4}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->a:Ljava/lang/String;

    .line 312
    :goto_0
    invoke-static {}, Lcom/alipay/android/app/sys/GlobalContext;->j()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->b:Ljava/lang/String;

    .line 313
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->c:Ljava/lang/String;

    .line 317
    :goto_1
    return-object v1

    .line 310
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/android/app/sys/GlobalContext;->c()Lcom/alipay/android/app/IAppConfig;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v2, v4}, Lcom/alipay/android/app/IAppConfig;->a(Lcom/alipay/android/app/tid/TidInfo;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/phonecashier/service/QuickPayUaInfo;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/app/util/LogUtils;->a(Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public requestData(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;ZLcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
    .locals 9

    .prologue
    .line 90
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v3

    .line 91
    new-instance v8, Ljava/lang/Thread;

    new-instance v0, Lcom/alipay/mobile/phonecashier/service/f;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/phonecashier/service/f;-><init>(Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/framework/service/ext/phonecashier/SecDataModel;Z)V

    invoke-direct {v8, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method public wearDeviceOperate(Landroid/content/Context;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;Lorg/json/JSONObject;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;)V
    .locals 2

    .prologue
    .line 260
    invoke-direct {p0, p1}, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->intitial(Landroid/content/Context;)V

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wwdc:: Op::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",deviceType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/alipay/android/app/util/LogUtils;->c()V

    .line 262
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->bracelet:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    if-ne p2, v0, :cond_0

    .line 263
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->braceletOperator:Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;

    sget-object v1, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    invoke-virtual {v0, p1, p3, p4, v1}, Lcom/alipay/android/app/hardwarepay/bracelet/BraceletOperator;->a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceCallback;Ljava/util/Properties;)V

    .line 269
    :goto_0
    return-void

    .line 264
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->watch:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    if-ne p2, v0, :cond_1

    .line 265
    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->watchOperator:Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;

    sget-object v0, Lcom/alipay/mobile/phonecashier/service/PhoneCashierWearDeviceServiceImp;->properties:Ljava/util/Properties;

    invoke-static {p3}, Lcom/alipay/android/app/hardwarepay/watch/WatchOperator;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 266
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->finger:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    goto :goto_0
.end method
