.class public Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;
.super Ljava/lang/Object;
.source "ProtocolParamBuilderImpl.java"

# interfaces
.implements Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.ProtocolParamBuilderImpl"

.field private static signGenerator:Lmtopsdk/security/ISign;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSign()Lmtopsdk/security/ISign;

    move-result-object v0

    sput-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lmtopsdk/security/ISign;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method private buildApi4Params(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v3

    .line 88
    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v4

    .line 90
    invoke-direct {p0, v4}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->buildGlobalParams(Lmtopsdk/mtop/common/MtopNetworkProp;)Ljava/util/Map;

    move-result-object v2

    .line 92
    const-string/jumbo v0, "api"

    new-instance v1, Lmtopsdk/mtop/protocol/ApiNameParamReader;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lmtopsdk/mtop/protocol/ApiNameParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string/jumbo v0, "v"

    new-instance v1, Lmtopsdk/mtop/protocol/ApiVersionParamReader;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lmtopsdk/mtop/protocol/ApiVersionParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string/jumbo v0, "data"

    new-instance v1, Lmtopsdk/mtop/protocol/DataParamReader;

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lmtopsdk/mtop/protocol/DataParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string/jumbo v0, "pv"

    new-instance v1, Lmtopsdk/mtop/protocol/ProtocolVersionParamReader;

    const-string/jumbo v5, "4.1"

    invoke-direct {v1, v5}, Lmtopsdk/mtop/protocol/ProtocolVersionParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v0, "netType"

    new-instance v1, Lmtopsdk/mtop/protocol/NetTypeParamReader;

    invoke-direct {v1}, Lmtopsdk/mtop/protocol/NetTypeParamReader;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string/jumbo v0, "nq"

    new-instance v1, Lmtopsdk/mtop/protocol/NetQualityParamReader;

    invoke-direct {v1}, Lmtopsdk/mtop/protocol/NetQualityParamReader;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v5, Lmtopsdk/mtop/protocol/SidParamReader;

    invoke-direct {v5}, Lmtopsdk/mtop/protocol/SidParamReader;-><init>()V

    .line 102
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    const-string/jumbo v0, "ecode"

    new-instance v1, Lmtopsdk/mtop/protocol/EcodeParamReader;

    invoke-direct {v1}, Lmtopsdk/mtop/protocol/EcodeParamReader;-><init>()V

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string/jumbo v0, "sid"

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    :goto_0
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/global/SwitchConfig;->isSecurityAppKeyApi(Ljava/lang/String;)Z

    move-result v0

    .line 113
    if-eqz v0, :cond_4

    .line 114
    new-instance v0, Lmtopsdk/mtop/protocol/AppKeyParamReader;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSecurityAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmtopsdk/mtop/protocol/AppKeyParamReader;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 119
    :goto_1
    const-string/jumbo v0, "appKey"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-boolean v0, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->useOpenApi:Z

    if-eqz v0, :cond_5

    .line 124
    const-string/jumbo v0, "sid"

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string/jumbo v0, "exttype"

    new-instance v6, Lmtopsdk/mtop/protocol/ExtTypeParamReader;

    sget-object v7, Lmtopsdk/mtop/domain/ApiTypeEnum;->ISV_OPEN_API:Lmtopsdk/mtop/domain/ApiTypeEnum;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/ApiTypeEnum;->getApiType()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmtopsdk/mtop/protocol/ExtTypeParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string/jumbo v0, "extdata"

    new-instance v6, Lmtopsdk/mtop/protocol/ExtDataParamReader;

    iget-object v7, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->openAppKey:Ljava/lang/String;

    iget-object v8, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->accessToken:Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->prepareExtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lmtopsdk/mtop/protocol/ExtDataParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lmtopsdk/security/ISign;

    invoke-direct {p0, v2}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->prepareSignInvolvedParam(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1}, Lmtopsdk/mtop/protocol/AppKeyParamReader;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lmtopsdk/security/ISign;->b(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    :goto_2
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    const-string/jumbo v2, "api="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getApiName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, ";v="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " getMtopSignApi4  failed. [appKey="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/protocol/AppKeyParamReader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedSession()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    :cond_1
    const-string/jumbo v1, ";sid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5}, Lmtopsdk/mtop/protocol/SidParamReader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_2
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string/jumbo v1, "mtopsdk.ProtocolParamBuilderImpl"

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string/jumbo v1, "mtop.mtopProxy.sign"

    const v2, 0xfb86

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .line 173
    :goto_3
    return-object v0

    .line 105
    :cond_3
    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedEcode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lmtopsdk/mtop/domain/MtopRequest;->isNeedSession()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string/jumbo v0, "sid"

    invoke-interface {v2, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 116
    :cond_4
    new-instance v0, Lmtopsdk/mtop/protocol/AppKeyParamReader;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmtopsdk/mtop/protocol/AppKeyParamReader;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    goto/16 :goto_1

    .line 129
    :cond_5
    sget-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lmtopsdk/security/ISign;

    invoke-direct {p0, v2}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->prepareSignInvolvedParam(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v1}, Lmtopsdk/mtop/protocol/AppKeyParamReader;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v6, v7}, Lmtopsdk/security/ISign;->a(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 153
    :cond_6
    const-string/jumbo v3, "sign"

    new-instance v5, Lmtopsdk/mtop/protocol/SignParamReader;

    invoke-direct {v5, v0}, Lmtopsdk/mtop/protocol/SignParamReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-boolean v0, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->useWua:Z

    if-eqz v0, :cond_7

    .line 156
    const-string/jumbo v0, "t"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/protocol/ParamReader;

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string/jumbo v3, "wua"

    new-instance v5, Lmtopsdk/mtop/protocol/CommonParamReader;

    const-string/jumbo v6, "wua"

    sget-object v7, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lmtopsdk/security/ISign;

    invoke-virtual {v1}, Lmtopsdk/mtop/protocol/AppKeyParamReader;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v0, v1}, Lmtopsdk/security/ISign;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Lmtopsdk/mtop/protocol/CommonParamReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_7
    iget-object v0, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    if-eqz v0, :cond_8

    iget-object v0, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 161
    iget-object v0, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->queryParameterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lmtopsdk/mtop/protocol/CommonParamReader;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v6, v0, v1}, Lmtopsdk/mtop/protocol/CommonParamReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 166
    :cond_8
    iget-object v0, v4, Lmtopsdk/mtop/common/MtopNetworkProp;->apiConfig:Lmtopsdk/mtop/config/ApiConfig;

    .line 167
    if-eqz v0, :cond_9

    iget-object v1, v0, Lmtopsdk/mtop/config/ApiConfig;->configVersion:Ljava/lang/String;

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 168
    const-string/jumbo v1, "x-m-apiconfig-v"

    new-instance v3, Lmtopsdk/mtop/protocol/CommonParamReader;

    const-string/jumbo v4, "x-m-apiconfig-v"

    iget-object v0, v0, Lmtopsdk/mtop/config/ApiConfig;->configVersion:Ljava/lang/String;

    invoke-direct {v3, v4, v0}, Lmtopsdk/mtop/protocol/CommonParamReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_9
    const-string/jumbo v0, "ecode"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 173
    goto/16 :goto_3
.end method

.method private buildGlobalParams(Lmtopsdk/mtop/common/MtopNetworkProp;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/common/MtopNetworkProp;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 186
    new-instance v0, Lmtopsdk/mtop/protocol/LatitudeParamReader;

    invoke-direct {v0}, Lmtopsdk/mtop/protocol/LatitudeParamReader;-><init>()V

    .line 187
    new-instance v2, Lmtopsdk/mtop/protocol/LongtitudeParamReader;

    invoke-direct {v2}, Lmtopsdk/mtop/protocol/LongtitudeParamReader;-><init>()V

    .line 188
    invoke-virtual {v0}, Lmtopsdk/mtop/protocol/LatitudeParamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmtopsdk/mtop/protocol/LongtitudeParamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    const-string/jumbo v3, "lat"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v0, "lng"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    :cond_0
    const-string/jumbo v0, "t"

    new-instance v2, Lmtopsdk/mtop/protocol/TimeStampParamReader;

    invoke-direct {v2}, Lmtopsdk/mtop/protocol/TimeStampParamReader;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string/jumbo v0, "deviceId"

    new-instance v2, Lmtopsdk/mtop/protocol/DeviceIdParamReader;

    invoke-direct {v2}, Lmtopsdk/mtop/protocol/DeviceIdParamReader;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    if-eqz p1, :cond_1

    iget-object v0, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    new-instance v0, Lmtopsdk/mtop/protocol/TtidParamReader;

    iget-object v2, p1, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-direct {v0, v2}, Lmtopsdk/mtop/protocol/TtidParamReader;-><init>(Ljava/lang/String;)V

    .line 201
    :goto_0
    const-string/jumbo v2, "ttid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string/jumbo v0, "imei"

    new-instance v2, Lmtopsdk/mtop/protocol/ImeiParamReader;

    invoke-direct {v2}, Lmtopsdk/mtop/protocol/ImeiParamReader;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string/jumbo v0, "imsi"

    new-instance v2, Lmtopsdk/mtop/protocol/ImsiParamReader;

    invoke-direct {v2}, Lmtopsdk/mtop/protocol/ImsiParamReader;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    return-object v1

    .line 199
    :cond_1
    new-instance v0, Lmtopsdk/mtop/protocol/TtidParamReader;

    invoke-direct {v0}, Lmtopsdk/mtop/protocol/TtidParamReader;-><init>()V

    goto :goto_0
.end method

.method private prepareExtParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    const-string/jumbo v1, "openappkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const-string/jumbo v1, ";accesstoken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareSignInvolvedParam(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 223
    if-eqz p1, :cond_0

    .line 224
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/protocol/ParamReader;

    .line 225
    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lmtopsdk/mtop/protocol/ParamReader;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 229
    :cond_0
    return-object v1
.end method


# virtual methods
.method public buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/MtopProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lmtopsdk/mtop/protocol/ParamReader;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getEntrance()Lmtopsdk/mtop/domain/EntranceEnum;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    :cond_0
    const-string/jumbo v1, "mtopsdk.ProtocolParamBuilderImpl"

    const-string/jumbo v2, "proxy or entrance is invalid."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-object v0

    .line 57
    :cond_1
    sget-object v1, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->signGenerator:Lmtopsdk/security/ISign;

    if-nez v1, :cond_2

    .line 58
    const-string/jumbo v1, "mtopsdk.ProtocolParamBuilderImpl"

    const-string/jumbo v2, "ISign for SDKConfig.getInstance().getGlobalSign is null"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    sget-object v1, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I

    invoke-virtual {p1}, Lmtopsdk/mtop/MtopProxy;->getEntrance()Lmtopsdk/mtop/domain/EntranceEnum;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EntranceEnum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 68
    :pswitch_0
    invoke-direct {p0, p1}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl;->buildApi4Params(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
