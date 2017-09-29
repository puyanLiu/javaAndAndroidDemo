.class public Lmtopsdk/mtop/util/ResponseHandlerUtil;
.super Ljava/lang/Object;
.source "ResponseHandlerUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ResponseHandlerUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeTimeOffset(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 6

    .prologue
    .line 193
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 196
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getDataJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 198
    :try_start_0
    const-string/jumbo v1, "systime"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    .line 202
    const-string/jumbo v2, "t_offset"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    const-string/jumbo v1, "mtopsdk.ResponseHandlerUtil"

    const-string/jumbo v2, "parse systime from mtop response data error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static handleAntiAttack(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 3

    .prologue
    .line 71
    if-nez p0, :cond_0

    .line 72
    const/4 p0, 0x0

    .line 88
    :goto_0
    return-object p0

    .line 75
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getResponseCode()I

    move-result v1

    .line 77
    const-string/jumbo v2, "location"

    invoke-static {v0, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 80
    sget-object v2, Lmtopsdk/mtop/MtopProxyBase;->httpStatusCodeHandler:Lmtopsdk/mtop/common/HttpStatusCodeHandler;

    if-eqz v2, :cond_1

    .line 81
    sget-object v2, Lmtopsdk/mtop/MtopProxyBase;->httpStatusCodeHandler:Lmtopsdk/mtop/common/HttpStatusCodeHandler;

    invoke-interface {v2, v1, v0}, Lmtopsdk/mtop/common/HttpStatusCodeHandler;->redirectUrl(ILjava/lang/String;)V

    .line 83
    :cond_1
    invoke-static {v0}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->sendIntent(Ljava/lang/String;)V

    .line 85
    :cond_2
    const-string/jumbo v0, "ANDROID_SYS_API_41X_ANTI_ATTACK"

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 86
    const-string/jumbo v0, "API\u6267\u884c41X\u9632\u5237"

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static handleApiConfig(Ljava/util/Map;Lmtopsdk/mtop/MtopProxy;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lmtopsdk/mtop/MtopProxy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string/jumbo v0, "x-m-apiconfig"

    invoke-static {p0, v0}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->parseApiConfigResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/config/ApiConfig;

    move-result-object v0

    .line 129
    invoke-static {}, Lmtopsdk/mtop/config/SwitchConfigManager;->getInstance()Lmtopsdk/mtop/config/SwitchConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/config/SwitchConfigManager;->updataAndStoreApiConfig(Lmtopsdk/mtop/config/ApiConfig;)V

    goto :goto_0
.end method

.method public static handleCorrectTimeStamp(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2

    .prologue
    .line 181
    invoke-static {p0}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->computeTimeOffset(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 183
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->setCorrectTimeStamp(Z)V

    .line 184
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    return-object v0
.end method

.method public static handleXcommand(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 97
    const-string/jumbo v0, "MTOP-X-Command"

    invoke-static {p0, v0}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    invoke-static {}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->getInstance()Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->onEvent(Ljava/lang/String;)V

    .line 102
    :cond_0
    const-string/jumbo v0, "MTOP-X-Command_N"

    invoke-static {p0, v0}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->getInstance()Lmtopsdk/mtop/xcommand/XcmdEventMgr;

    move-result-object v1

    const-string/jumbo v2, "utf-8"

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/xcommand/XcmdEventMgr;->onEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :cond_1
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string/jumbo v1, "mtopsdk.ResponseHandlerUtil"

    const-string/jumbo v2, "parse header field MTOP-X-Command_N error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static parseApiConfigResponseHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/config/ApiConfig;
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 143
    const/4 v1, 0x0

    .line 145
    :try_start_0
    const-string/jumbo v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 146
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    .line 147
    new-instance v0, Lmtopsdk/mtop/config/ApiConfig;

    invoke-direct {v0, p1, p2}, Lmtopsdk/mtop/config/ApiConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 148
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lmtopsdk/mtop/config/ApiConfig;->configItems:Ljava/util/Map;

    .line 149
    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v2, v3, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 152
    :try_start_2
    const-string/jumbo v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 153
    if-eqz v5, :cond_0

    array-length v6, v5

    if-le v6, v9, :cond_0

    .line 154
    const-string/jumbo v6, "v"

    const/4 v7, 0x0

    aget-object v7, v5, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 155
    const/4 v6, 0x1

    aget-object v5, v5, v6

    iput-object v5, v0, Lmtopsdk/mtop/config/ApiConfig;->configVersion:Ljava/lang/String;

    .line 150
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 157
    :cond_1
    iget-object v6, v0, Lmtopsdk/mtop/config/ApiConfig;->configItems:Ljava/util/Map;

    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 161
    :catch_0
    move-exception v5

    :try_start_3
    const-string/jumbo v5, "mtopsdk.ResponseHandlerUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "[parseApiConfigResponseHeader] parse apiconfig configItems error,itempair is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 166
    :catch_1
    move-exception v1

    .line 167
    :goto_2
    const-string/jumbo v2, "mtopsdk.ResponseHandlerUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[parseApiConfigResponseHeader] parse apiconfig response header error ---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_3
    return-object v0

    .line 164
    :cond_2
    :try_start_4
    const-string/jumbo v1, "mtopsdk.ResponseHandlerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[parseApiConfigResponseHeader]parse apiconfig succeed.apiconfig= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmtopsdk/mtop/config/ApiConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    .line 166
    :catch_2
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private static sendIntent(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "AppBackground"

    invoke-static {v1}, Lmtopsdk/xstate/XState;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 50
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string/jumbo v1, "mtopsdk.ResponseHandlerUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[sendIntent] send intent error when 41X antiattack ---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
