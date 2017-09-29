.class public Lcom/alipay/android/app/template/TemplateManager;
.super Ljava/lang/Object;
.source "TemplateManager.java"


# static fields
.field static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field private static c:Ljava/lang/String;

.field private static g:Lcom/alipay/android/app/template/TemplateManager;

.field private static h:I


# instance fields
.field private final b:Ljava/lang/String;

.field private final d:Lcom/alipay/android/app/template/TemplateStorage;

.field private e:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

.field private f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    const-string/jumbo v0, ""

    sput-object v0, Lcom/alipay/android/app/template/TemplateManager;->c:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    sput v0, Lcom/alipay/android/app/template/TemplateManager;->h:I

    .line 41
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string/jumbo v0, "TemplateManager"

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->b:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/alipay/android/app/template/TemplateStorage;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateStorage;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Lcom/alipay/android/app/template/TemplateStorage;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 67
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 68
    const-class v1, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    .line 69
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 71
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 69
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 72
    return-void
.end method

.method private static a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 229
    .line 230
    if-eqz p0, :cond_1

    .line 232
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 233
    new-instance v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-direct {v0}, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :try_start_1
    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->data:Ljava/lang/String;

    .line 235
    const-string/jumbo v3, "tag"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tag:Ljava/lang/String;

    .line 236
    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    .line 237
    const-string/jumbo v3, "html"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->html:Ljava/lang/String;

    .line 238
    const-string/jumbo v3, "tplId"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    .line 239
    const-string/jumbo v3, "format"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->format:Ljava/lang/String;

    .line 240
    const-string/jumbo v3, "dataObserver"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->dataObserver:Ljava/lang/String;

    .line 241
    const-string/jumbo v3, "tplVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    .line 242
    const-string/jumbo v3, "publishVersion"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "TemplateManager"

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "parse template "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v1, "success"

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-object v0

    .line 243
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v1

    .line 244
    :goto_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "TemplateManager"

    .line 245
    const-string/jumbo v5, "template is not of json format"

    .line 244
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v3, "DynamicTemplateService.getTemplateItem"

    .line 247
    const-string/jumbo v4, "exception on parse json template"

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 246
    invoke-static {v3, v4, v2, v1}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 251
    :cond_0
    const-string/jumbo v1, "fail"

    goto :goto_1

    .line 243
    :catch_1
    move-exception v2

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 325
    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string/jumbo v1, "\"tplId\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    const-string/jumbo v1, "\"tplVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string/jumbo v1, "\"publishVersion\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    const-string/jumbo v1, "\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v1, "\"platform\":\"android\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string/jumbo v1, "\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 445
    iget-object v2, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    iget-object v2, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 445
    :goto_0
    if-eqz v2, :cond_1

    .line 451
    iget-object v2, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    move v7, v0

    .line 453
    :goto_1
    const-string/jumbo v2, "\u670d\u52a1\u7aef\u53d1\u5e03\u7248\u672c\u4e0e\u672c\u5730\u4e0d\u4e00\u6837\u6216\u53d1\u5e03\u7248\u672c\u4e00\u6837time\u5347\u7ea7,\u66f4\u65b0:%s"

    new-array v3, v1, [Ljava/lang/Object;

    .line 454
    if-eqz v7, :cond_2

    const-string/jumbo v1, "YES"

    :goto_2
    aput-object v1, v3, v0

    .line 453
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherNeedUpdate"

    .line 456
    iget-object v4, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    move-object v6, v5

    .line 455
    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 457
    return v7

    :cond_0
    move v2, v0

    .line 446
    goto :goto_0

    :cond_1
    move v7, v1

    .line 452
    goto :goto_1

    .line 454
    :cond_2
    const-string/jumbo v1, "NO"

    goto :goto_2
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x0

    .line 340
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    :cond_0
    :goto_0
    return v1

    .line 342
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 343
    const/4 v1, 0x1

    goto :goto_0

    .line 345
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 346
    const/4 v1, -0x1

    goto :goto_0

    .line 349
    :cond_3
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 350
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v4, :cond_5

    move v0, v1

    .line 352
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 353
    aget-object v4, v2, v0

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 354
    aget-object v1, v2, v0

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 352
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 358
    :cond_5
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public static getInstance()Lcom/alipay/android/app/template/TemplateManager;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/android/app/template/TemplateManager;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/alipay/android/app/template/TemplateManager;

    invoke-direct {v0}, Lcom/alipay/android/app/template/TemplateManager;-><init>()V

    sput-object v0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/android/app/template/TemplateManager;

    .line 60
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->g:Lcom/alipay/android/app/template/TemplateManager;

    return-object v0
.end method

.method public static getTemplateVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 304
    const-class v1, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/app/template/service/DynamicTemplateService;

    .line 300
    invoke-virtual {v0}, Lcom/alipay/android/app/template/service/DynamicTemplateService;->getBirdNestEnv()Ljava/util/Map;

    move-result-object v0

    .line 306
    const-string/jumbo v1, "version"

    .line 305
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/alipay/android/app/template/TemplateManager;->c:Ljava/lang/String;

    .line 308
    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/TemplateManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static whetherNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Z)Z
    .locals 9

    .prologue
    const/4 v2, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v4, 0x0

    .line 393
    if-nez p0, :cond_1

    .line 394
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherNeedUpdate"

    const-string/jumbo v3, "tpl from server is null"

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 439
    :cond_0
    :goto_0
    return v8

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    .line 399
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 401
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 402
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherNeedUpdate"

    const-string/jumbo v3, "tpl exist local is null"

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move v8, v7

    .line 403
    goto :goto_0

    .line 406
    :cond_2
    if-eqz p2, :cond_a

    .line 408
    if-gez v1, :cond_6

    .line 410
    if-nez p1, :cond_3

    move v8, v7

    .line 411
    goto :goto_0

    .line 413
    :cond_3
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v7

    .line 414
    :goto_1
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v1

    .line 415
    if-eqz v0, :cond_4

    if-eqz v1, :cond_0

    :cond_4
    move v8, v7

    goto :goto_0

    :cond_5
    move v0, v8

    .line 413
    goto :goto_1

    .line 416
    :cond_6
    if-nez v1, :cond_9

    .line 418
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/android/app/template/TemplateManager;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v7

    .line 419
    :goto_2
    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    move v8, v7

    goto :goto_0

    :cond_8
    move v0, v8

    .line 418
    goto :goto_2

    .line 422
    :cond_9
    const-string/jumbo v1, "\u670d\u52a1\u7aeftplVersion(%s)\u4e8e\u5f53\u524d\u9e1f\u5de2\u5f15\u64ce\u7248\u672ctplVersion(%s)\u4e0d\u4e00\u81f4"

    new-array v2, v2, [Ljava/lang/Object;

    .line 423
    aput-object v0, v2, v8

    .line 424
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 422
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherNeedUpdate"

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 431
    :cond_a
    if-nez v1, :cond_b

    .line 432
    invoke-static {p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v8

    goto :goto_0

    .line 434
    :cond_b
    const-string/jumbo v1, "\u670d\u52a1\u7aeftplVersion(%s)\u4e8e\u5f53\u524d\u9e1f\u5de2\u5f15\u64ce\u7248\u672ctplVersion(%s)\u4e0d\u4e00\u81f4"

    new-array v2, v2, [Ljava/lang/Object;

    .line 435
    aput-object v0, v2, v8

    .line 436
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v7

    .line 434
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 437
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    const-string/jumbo v1, "DynamicTemplateService"

    const-string/jumbo v2, "whetherNeedUpdate"

    move-object v5, v4

    move-object v6, v4

    invoke-interface/range {v0 .. v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->footprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public createBirdParamsFromTemplate(Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 319
    iget-object v1, p1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->d:Ljava/lang/String;

    invoke-static {p2, v1, v2, v3, v0}, Lcom/alipay/android/app/template/TemplateManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public createBirdParamsFromTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 312
    invoke-virtual {p0}, Lcom/alipay/android/app/template/TemplateManager;->getUid()Ljava/lang/String;

    move-result-object v0

    .line 313
    iget-object v1, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplVersion:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->publishVersion:Ljava/lang/String;

    iget-object v4, p1, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->time:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/alipay/android/app/template/TemplateManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deleteTemplate(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->b(Ljava/lang/String;)Z

    .line 296
    return-void
.end method

.method public downloadTemplate(Ljava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 152
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;ZLjava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public downloadTemplate(Ljava/util/Map;ZLjava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;
    .locals 11

    .prologue
    .line 164
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 165
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v1, v3

    .line 224
    :goto_0
    return-object v1

    .line 168
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 170
    :try_start_0
    new-instance v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;

    invoke-direct {v4}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;-><init>()V

    .line 171
    invoke-static {}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;->tplVersion:Ljava/lang/String;

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;->templateReqModelList:Ljava/util/List;

    .line 173
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 174
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 180
    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager;->e:Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;

    invoke-interface {v1, v4}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRpcService;->queryTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;)Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;

    move-result-object v8

    .line 181
    if-eqz v8, :cond_c

    iget-boolean v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->success:Z

    if-eqz v1, :cond_c

    iget-object v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 182
    iget-object v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_c

    .line 183
    const-string/jumbo v1, "DynamicTemplateService.downloadTemplate"

    .line 184
    const-string/jumbo v2, "download"

    iget-object v4, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 183
    invoke-static {v1, v2, v4, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 185
    const/4 v1, 0x0

    move v2, v1

    :goto_2
    iget-object v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_5

    :cond_2
    move-object v1, v3

    .line 214
    goto :goto_0

    .line 174
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 175
    new-instance v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;

    invoke-direct {v8}, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;-><init>()V

    .line 176
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;->tplId:Ljava/lang/String;

    .line 177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReqModel;->birdParams:Ljava/lang/String;

    .line 178
    iget-object v1, v4, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateReq;->templateReqModelList:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 215
    :catch_0
    move-exception v1

    move-object v4, v1

    .line 216
    const-string/jumbo v1, "DynamicTemplateService.downloadTemplate"

    .line 217
    const-string/jumbo v2, "exception on download"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 216
    invoke-static {v1, v2, v5, v6}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 218
    const-string/jumbo v1, "TemplateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "downloadTemplate error: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    move-object v1, v3

    .line 224
    goto/16 :goto_0

    .line 186
    :cond_5
    :try_start_1
    iget-object v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->templateJsonList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/alipay/android/app/template/TemplateManager;->a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v9

    .line 187
    iget-object v1, v9, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-virtual {p0, v1, p4}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplateWithRes(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v4

    .line 189
    invoke-static {v4, v9, p2}, Lcom/alipay/android/app/template/TemplateManager;->whetherNeedUpdate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Lcom/alipay/mobiletms/common/service/facade/rpc/Template;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    move v5, v1

    .line 191
    :goto_4
    if-nez v4, :cond_9

    const/4 v1, 0x1

    move v4, v1

    .line 192
    :goto_5
    if-nez v5, :cond_6

    if-eqz v4, :cond_b

    .line 193
    :cond_6
    invoke-virtual {p0, v9}, Lcom/alipay/android/app/template/TemplateManager;->saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v10

    .line 194
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 195
    if-eqz v5, :cond_a

    if-eqz v10, :cond_a

    .line 196
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->UPDATE:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 200
    :cond_7
    :goto_6
    iget-object v4, v9, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :goto_7
    iget-object v1, v9, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    const-string/jumbo v4, "T"

    invoke-static {p3, v1, v6, v7, v4}, Lcom/alipay/android/app/template/Tracker;->quickpayLog(Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;)V

    .line 185
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_2

    .line 189
    :cond_8
    const/4 v1, 0x1

    move v5, v1

    goto :goto_4

    .line 191
    :cond_9
    const/4 v1, 0x0

    move v4, v1

    goto :goto_5

    .line 197
    :cond_a
    if-eqz v4, :cond_7

    if-eqz v10, :cond_7

    .line 198
    sget-object v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    goto :goto_6

    .line 202
    :cond_b
    iget-object v1, v9, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    sget-object v4, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->EXIST:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 207
    :cond_c
    const-string/jumbo v2, "DynamicTemplateService.downloadTemplate"

    .line 208
    const-string/jumbo v4, "download fail"

    if-nez v8, :cond_d

    const/4 v1, 0x0

    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x0

    .line 207
    invoke-static {v2, v4, v1, v5}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    .line 210
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v5, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, "F"

    invoke-static {p3, v1, v6, v7, v2}, Lcom/alipay/android/app/template/Tracker;->quickpayLog(Ljava/util/Map;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_9

    .line 208
    :cond_d
    iget-boolean v1, v8, Lcom/alipay/mobiletms/common/service/facade/rpc/TemplateRes;->success:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_8

    .line 219
    :cond_e
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 220
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v6, "QUICKPAY"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 221
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v2, ""

    const-string/jumbo v6, ""

    const-string/jumbo v7, ""

    invoke-static {v4, v1, v2, v6, v7}, Lcom/alipay/android/app/template/Tracker;->buildLog(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public downloadTemplateCheckOverTime(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLandroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 12

    .prologue
    .line 102
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 103
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 104
    sget-object v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->ADD:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v1, v2, :cond_2

    .line 105
    invoke-static/range {p5 .. p5}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->is2GMobileNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    new-instance v10, Landroid/os/ConditionVariable;

    invoke-direct {v10}, Landroid/os/ConditionVariable;-><init>()V

    .line 107
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 109
    const-class v2, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;

    .line 107
    new-instance v1, Lcom/alipay/android/app/template/TemplateManager$1;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move/from16 v6, p4

    move-object v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lcom/alipay/android/app/template/TemplateManager$1;-><init>(Lcom/alipay/android/app/template/TemplateManager;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/util/Map;Landroid/content/Context;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v11, v1}, Lcom/alipay/mobile/framework/service/common/TaskScheduleService;->parallelExecute(Ljava/lang/Runnable;)V

    .line 130
    const-wide/16 v1, 0xbb8

    invoke-virtual {v10, v1, v2}, Landroid/os/ConditionVariable;->block(J)Z

    .line 147
    :cond_0
    :goto_0
    return-object v4

    .line 132
    :cond_1
    sget-object v1, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p6

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move/from16 v0, p4

    invoke-virtual {p0, p3, v0, p2, v1}, Lcom/alipay/android/app/template/TemplateManager;->downloadTemplate(Ljava/util/Map;ZLjava/util/Map;Landroid/content/res/Resources;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 136
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    .line 137
    sget-object v2, Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;->FAIL:Lcom/alipay/android/app/template/service/DynamicTemplateService$TemplateStatus;

    if-eq v1, v2, :cond_3

    .line 138
    move-object/from16 v0, p5

    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    sget-object v2, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl;->M_TPLMEM_CACHE:Landroid/support/v4/util/LruCache;

    invoke-static {v1}, Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;->valueOf(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Lcom/alipay/android/app/template/DynamicTemplateServiceImpl$JsonWrapper;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 144
    :cond_3
    sget-object v1, Lcom/alipay/android/app/template/TemplateManager;->a:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p6

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getLocalTemplate(Ljava/lang/String;Landroid/content/Context;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 264
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 265
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/alipay/android/app/template/TemplateManager;->getLocalTemplateWithRes(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0

    .line 264
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method public getLocalTemplateWithRes(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0, p1}, Lcom/alipay/android/app/template/TemplateManager;->getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    .line 280
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 281
    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 283
    :cond_1
    :goto_0
    return-object v0

    .line 281
    :cond_2
    invoke-virtual {p2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/alipay/android/app/template/util/UiUtil;->readAssertFile(Ljava/lang/String;Landroid/content/res/AssetManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-static {v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/TemplateStorage;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public getTemplateFromStorage(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Ljava/lang/String;)Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    move-result-object v0

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 461
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-nez v0, :cond_0

    .line 462
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 463
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 464
    const-class v1, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 462
    iput-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->f:Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 472
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveTemplate(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Lcom/alipay/android/app/template/TemplateStorage;

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/template/TemplateStorage;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v0

    return v0
.end method

.method public saveTemplates(Ljava/util/List;)Ljava/util/Map;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 291
    iget-object v2, p0, Lcom/alipay/android/app/template/TemplateManager;->d:Lcom/alipay/android/app/template/TemplateStorage;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string/jumbo v1, "TemplateStorage.saveTemplate"

    const-string/jumbo v2, "templates is null or empty"

    invoke-static {v1, v2, v0, v0}, Lcom/alipay/android/app/template/Tracker;->recordFootprint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;

    invoke-virtual {v2, v0}, Lcom/alipay/android/app/template/TemplateStorage;->a(Lcom/alipay/mobiletms/common/service/facade/rpc/Template;)Z

    move-result v4

    iget-object v0, v0, Lcom/alipay/mobiletms/common/service/facade/rpc/Template;->tplId:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
