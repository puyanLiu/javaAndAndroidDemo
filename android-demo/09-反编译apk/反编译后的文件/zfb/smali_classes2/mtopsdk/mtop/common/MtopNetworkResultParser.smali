.class public Lmtopsdk/mtop/common/MtopNetworkResultParser;
.super Ljava/lang/Object;
.source "MtopNetworkResultParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopNetworkResultParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static cloneOriginMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 201
    if-nez p0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    .line 204
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 205
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 206
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 207
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 208
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 212
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 215
    goto :goto_0
.end method

.method public static parseJsonByteToMtopResponse([BLmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 169
    return-object p1
.end method

.method public static parseNetworkRlt(Lanetwork/channel/Response;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 5

    .prologue
    .line 143
    if-nez p0, :cond_1

    .line 145
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    const-string/jumbo v1, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v2, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v1, v2}, Lmtopsdk/mtop/domain/MtopResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    if-eqz p2, :cond_0

    .line 147
    iget-object v1, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 148
    iget-object v1, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    new-instance v1, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;

    invoke-interface {p0}, Lanetwork/channel/Response;->a()I

    move-result v2

    invoke-interface {p0}, Lanetwork/channel/Response;->d()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p0}, Lanetwork/channel/Response;->c()[B

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;-><init>(ILjava/util/Map;[B)V

    invoke-static {v0, p1, p2, v1}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseNetworkRlt(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public static parseNetworkRlt(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 4

    .prologue
    .line 57
    if-nez p0, :cond_b

    .line 58
    new-instance v0, Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {v0}, Lmtopsdk/mtop/domain/MtopResponse;-><init>()V

    .line 61
    :goto_0
    if-eqz p2, :cond_0

    .line 62
    iget-object v1, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setApi(Ljava/lang/String;)V

    .line 63
    iget-object v1, p2, Lmtopsdk/mtop/MtopProxy;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setV(Ljava/lang/String;)V

    .line 66
    :cond_0
    if-nez p3, :cond_2

    .line 67
    const-string/jumbo v1, "mtopsdk.MtopNetworkResultParser"

    const-string/jumbo v2, "network response is invalid"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string/jumbo v1, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 69
    const-string/jumbo v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    move-object p1, v0

    .line 131
    :cond_1
    :goto_1
    return-object p1

    .line 74
    :cond_2
    iget v1, p3, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->responseCode:I

    .line 75
    if-gez v1, :cond_4

    .line 77
    const/16 v2, -0xd

    if-ne v2, v1, :cond_3

    .line 78
    const-string/jumbo v1, "mtopsdk.MtopNetworkResultParser"

    const-string/jumbo v2, "api spdy ssl failed.close local global ssl switch"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v1, 0x0

    sput-boolean v1, Lmtopsdk/mtop/global/SwitchConfig;->spdySslSwitchOpen:Z

    .line 81
    :cond_3
    const-string/jumbo v1, "ANDROID_SYS_NETWORK_ERROR"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 82
    const-string/jumbo v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    move-object p1, v0

    .line 83
    goto :goto_1

    .line 87
    :cond_4
    iget-object v2, p3, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->header:Ljava/util/Map;

    .line 88
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setResponseCode(I)V

    .line 89
    invoke-virtual {v0, v2}, Lmtopsdk/mtop/domain/MtopResponse;->setHeaderFields(Ljava/util/Map;)V

    .line 90
    iget-object v3, p3, Lmtopsdk/mtop/common/MtopNetworkResultParser$ParseParameter;->bytedata:[B

    invoke-virtual {v0, v3}, Lmtopsdk/mtop/domain/MtopResponse;->setBytedata([B)V

    .line 93
    invoke-static {v2}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleXcommand(Ljava/util/Map;)V

    .line 96
    invoke-static {v2, p2}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleApiConfig(Ljava/util/Map;Lmtopsdk/mtop/MtopProxy;)V

    .line 99
    invoke-static {v2}, Lmtopsdk/mtop/unit/UnitSettingParseUtil;->parseUnitSettingHeader(Ljava/util/Map;)V

    .line 102
    const/16 v2, 0x1a4

    if-eq v1, v2, :cond_5

    const/16 v2, 0x1f3

    if-eq v1, v2, :cond_5

    const/16 v2, 0x257

    if-ne v1, v2, :cond_7

    .line 104
    :cond_5
    if-eqz p2, :cond_6

    .line 105
    invoke-virtual {p2}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lmtopsdk/mtop/common/ApiLockHelper;->lock(Ljava/lang/String;J)V

    .line 107
    :cond_6
    const-string/jumbo v1, "ANDROID_SYS_API_LOCKED_IN_10_SECONDS"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    .line 108
    const-string/jumbo v1, "API\u88ab\u9501\u5b9a10\u79d2"

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/domain/MtopResponse;->setRetMsg(Ljava/lang/String;)V

    move-object p1, v0

    .line 109
    goto :goto_1

    .line 110
    :cond_7
    const/16 v2, 0x19a

    if-lt v1, v2, :cond_8

    const/16 v2, 0x1a3

    if-gt v1, v2, :cond_8

    .line 112
    invoke-static {v0}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleAntiAttack(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object p1

    goto :goto_1

    .line 114
    :cond_8
    const/16 v2, 0x130

    if-ne v1, v2, :cond_9

    .line 116
    if-nez p1, :cond_1

    .line 123
    :cond_9
    invoke-static {v0}, Lmtopsdk/mtop/common/MtopNetworkResultParser;->parseRetCodeFromResponseHeader(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isExpiredRequest()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->isCorrectTimeStamp()Z

    move-result v1

    if-nez v1, :cond_a

    .line 127
    invoke-static {v0, p2}, Lmtopsdk/mtop/util/ResponseHandlerUtil;->handleCorrectTimeStamp(Lmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/MtopProxy;)Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    :cond_a
    move-object p1, v0

    .line 131
    goto/16 :goto_1

    :cond_b
    move-object v0, p0

    goto/16 :goto_0
.end method

.method public static parseRetCodeFromResponseHeader(Lmtopsdk/mtop/domain/MtopResponse;)Lmtopsdk/mtop/domain/MtopResponse;
    .locals 2

    .prologue
    .line 180
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 191
    :cond_0
    :goto_0
    return-object p0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "m-retcode"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 185
    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->setRetCode(Ljava/lang/String;)V

    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    goto :goto_0
.end method
