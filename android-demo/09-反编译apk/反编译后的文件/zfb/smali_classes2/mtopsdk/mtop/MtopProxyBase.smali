.class public Lmtopsdk/mtop/MtopProxyBase;
.super Ljava/lang/Object;
.source "MtopProxyBase.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.MtopProxyBase"

.field public static defaultBaseUrl:[Ljava/lang/String;

.field public static envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public static httpStatusCodeHandler:Lmtopsdk/mtop/common/HttpStatusCodeHandler;

.field private static volatile isInit:Z


# instance fields
.field public callback:Lmtopsdk/mtop/common/MtopListener;

.field public context:Ljava/lang/Object;

.field private entrance:Lmtopsdk/mtop/domain/EntranceEnum;

.field private fullBaseUrl:Ljava/lang/String;

.field public mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

.field public property:Lmtopsdk/mtop/common/MtopNetworkProp;

.field private spcode:Ljava/lang/String;

.field public stat:Lmtopsdk/mtop/util/MtopStatistics;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 44
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->defaultBaseUrl:[Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0, v0, v0}, Lmtopsdk/mtop/MtopProxyBase;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V
    .locals 1

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    sget-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->Api4:Lmtopsdk/mtop/domain/EntranceEnum;

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 75
    new-instance v0, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v0}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 142
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 143
    if-eqz p2, :cond_0

    .line 144
    iput-object p2, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 146
    :cond_0
    iput-object p3, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    .line 147
    iput-object p4, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    .line 148
    invoke-static {}, Lmtopsdk/mtop/MtopProxyBase;->checkInit()V

    .line 149
    return-void
.end method

.method private static checkInit()V
    .locals 2

    .prologue
    .line 126
    sget-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    if-nez v0, :cond_1

    .line 127
    const-class v1, Lmtopsdk/mtop/MtopProxyBase;

    monitor-enter v1

    .line 128
    :try_start_0
    sget-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    if-nez v0, :cond_0

    .line 129
    invoke-static {}, Lmtopsdk/mtop/MtopProxyBase;->init()V

    .line 131
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_1
    return-void

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static init()V
    .locals 1

    .prologue
    .line 100
    invoke-static {}, Lmtopsdk/mtop/MtopProxyBase;->initDefaultUrl()V

    .line 101
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalEnvMode()Lmtopsdk/mtop/domain/EnvModeEnum;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    sput-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    .line 105
    :cond_0
    invoke-static {}, Lmtopsdk/mtop/global/MtopSDK;->checkMtopSDKInit()V

    .line 106
    const/4 v0, 0x1

    sput-boolean v0, Lmtopsdk/mtop/MtopProxyBase;->isInit:Z

    .line 107
    return-void
.end method

.method private static initDefaultUrl()V
    .locals 2

    .prologue
    .line 115
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v1, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_ONLINE:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/mtop/MtopProxyBase;->setDefaultBaseUrl(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v1, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_PREPARE:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/mtop/MtopProxyBase;->setDefaultBaseUrl(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 117
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v1, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/mtop/MtopProxyBase;->setDefaultBaseUrl(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v1, Lmtopsdk/mtop/util/MtopProxyConstant;->BASE_URL_ENV_TEST_SANDBOX:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/mtop/MtopProxyBase;->setDefaultBaseUrl(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public static setDefaultBaseUrl(Lmtopsdk/mtop/domain/EnvModeEnum;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    if-eqz p0, :cond_0

    .line 168
    sget-object v0, Lmtopsdk/mtop/MtopProxyBase;->defaultBaseUrl:[Ljava/lang/String;

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v1

    aput-object p1, v0, v1

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public getCallback()Lmtopsdk/mtop/common/MtopListener;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    return-object v0
.end method

.method public getContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    return-object v0
.end method

.method public getEntrance()Lmtopsdk/mtop/domain/EntranceEnum;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    return-object v0
.end method

.method public getFullBaseUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    if-eqz v0, :cond_2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v1}, Lmtopsdk/mtop/common/MtopNetworkProp;->getProtocol()Lmtopsdk/mtop/domain/ProtocolEnum;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/ProtocolEnum;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    sget-object v1, Lmtopsdk/mtop/MtopProxyBase;->defaultBaseUrl:[Ljava/lang/String;

    sget-object v2, Lmtopsdk/mtop/MtopProxyBase;->envMode:Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EnvModeEnum;->getEnvMode()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->Spcode:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v2}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxyBase;->getSpcode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxyBase;->getSpcode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    :goto_1
    return-object v0

    .line 195
    :cond_0
    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->Api4:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EntranceEnum;->getEntrance()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 204
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    return-object v0
.end method

.method public getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    return-object v0
.end method

.method public getSpcode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->spcode:Ljava/lang/String;

    return-object v0
.end method

.method public handleExceptionCallBack(Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 3

    .prologue
    .line 294
    if-eqz p1, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    instance-of v0, v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    new-instance v1, Lmtopsdk/mtop/common/MtopFinishEvent;

    invoke-direct {v1, p1}, Lmtopsdk/mtop/common/MtopFinishEvent;-><init>(Lmtopsdk/mtop/domain/MtopResponse;)V

    .line 299
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    check-cast v0, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;

    iget-object v2, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lmtopsdk/mtop/common/MtopCallback$MtopFinishListener;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 300
    const-string/jumbo v0, "mtop.mtopProxy.async"

    const v1, 0xfb86

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public setCallback(Lmtopsdk/mtop/common/MtopListener;)V
    .locals 0

    .prologue
    .line 268
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    .line 269
    return-void
.end method

.method public setContext(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public setEntrance(Lmtopsdk/mtop/domain/EntranceEnum;)V
    .locals 0

    .prologue
    .line 214
    if-eqz p1, :cond_0

    .line 215
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    .line 218
    :cond_0
    return-void
.end method

.method public setFullBaseUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMtopRequest(Lmtopsdk/mtop/domain/MtopRequest;)V
    .locals 0

    .prologue
    .line 226
    if-eqz p1, :cond_0

    .line 227
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    .line 230
    :cond_0
    return-void
.end method

.method public setProperty(Lmtopsdk/mtop/common/MtopNetworkProp;)V
    .locals 0

    .prologue
    .line 239
    if-eqz p1, :cond_0

    .line 240
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    .line 243
    :cond_0
    return-void
.end method

.method public setSpcode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lmtopsdk/mtop/MtopProxyBase;->spcode:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MtopProxyBase [entrance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->entrance:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", spcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->spcode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fullBaseUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->fullBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mtopRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", property="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->context:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->callback:Lmtopsdk/mtop/common/MtopListener;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validateBusinessInit()Lmtopsdk/mtop/util/Result;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const v2, 0xfb86

    const/4 v3, 0x0

    .line 312
    invoke-virtual {p0}, Lmtopsdk/mtop/MtopProxyBase;->getFullBaseUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const-string/jumbo v1, "fullBaseUrl is invalid."

    .line 316
    const-string/jumbo v0, "mtopsdk.MtopProxyBase"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string/jumbo v0, "mtop.mtopProxy.baseurl"

    invoke-static {v0, v2, v1}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    .line 318
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v2, "ANDROID_SYS_MTOPPROXYBASE_INIT_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-object v0

    .line 322
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->isLegalRequest()Z

    move-result v0

    if-nez v0, :cond_3

    .line 323
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "mtopRequest is invalid."

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 324
    const-string/jumbo v0, "mtopsdk.MtopProxyBase"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string/jumbo v0, "mtop.mtopProxy.mtopRequest"

    invoke-static {v0, v2, v1}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v2, "ANDROID_SYS_MTOPPROXYBASE_INIT_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 323
    :cond_2
    const-string/jumbo v0, "mtopRequest=null"

    goto :goto_1

    .line 329
    :cond_3
    const-string/jumbo v0, "mtopsdk.MtopProxyBase"

    iget-object v1, p0, Lmtopsdk/mtop/MtopProxyBase;->mtopRequest:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lmtopsdk/mtop/MtopProxyBase;->property:Lmtopsdk/mtop/common/MtopNetworkProp;

    if-nez v0, :cond_4

    .line 331
    const-string/jumbo v1, "MtopNetworkProp is invalid."

    .line 332
    const-string/jumbo v0, "mtopsdk.MtopProxyBase"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string/jumbo v0, "mtop.mtopProxy.property"

    invoke-static {v0, v2, v1}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v2, "ANDROID_SYS_MTOPPROXYBASE_INIT_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_4
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
