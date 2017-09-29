.class Lcom/taobao/wswitch/net/request/TokenRequestListener;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "ConfigTokenRequest.java"


# instance fields
.field private final gNames:[Ljava/lang/String;

.field private final loopTime:I


# direct methods
.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->gNames:[Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->loopTime:I

    .line 63
    return-void
.end method

.method private parseConfigToken(Ljava/lang/String;)Lcom/taobao/wswitch/model/ConfigToken;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/taobao/wswitch/util/EntityHelper;->string2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 108
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 109
    goto :goto_0

    .line 111
    :cond_2
    const-string/jumbo v0, "t"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 113
    goto :goto_0

    .line 115
    :cond_3
    sget-object v1, Lcom/taobao/wswitch/constant/ConfigConstant;->LOCAL_TOKEN_CACHE_TIME:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 116
    const-string/jumbo v1, "l"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 117
    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 119
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 125
    :goto_1
    new-instance v3, Lcom/taobao/wswitch/model/ConfigToken;

    invoke-direct {v3, v0, v1, v2}, Lcom/taobao/wswitch/model/ConfigToken;-><init>(Ljava/lang/String;J)V

    move-object v0, v3

    .line 126
    goto :goto_0

    .line 120
    :catch_0
    move-exception v4

    .line 121
    const-string/jumbo v5, "ConfigContainer"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "cacheTimeValue to long error,detail:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move-wide v1, v2

    goto :goto_1
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1, p2}, Lmtopsdk/mtop/common/DefaultMtopCallback;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 68
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    if-nez v0, :cond_2

    .line 69
    :cond_0
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "invalid MtopFinishEvent or MtopResponse "

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_1
    :goto_0
    return-void

    .line 72
    :cond_2
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v0

    .line 74
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "ConfigTokenRequest onDataArrive"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 77
    :try_start_0
    const-class v1, Lcom/taobao/wswitch/model/ConfigMtopResponse;

    invoke-static {v0, v1}, Lmtopsdk/mtop/util/MtopConvert;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    invoke-direct {p0, v0}, Lcom/taobao/wswitch/net/request/TokenRequestListener;->parseConfigToken(Ljava/lang/String;)Lcom/taobao/wswitch/model/ConfigToken;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 86
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->gNames:[Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/taobao/wswitch/business/ConfigContainer;->setmCfgToken(Lcom/taobao/wswitch/model/ConfigToken;[Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->gNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->gNames:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 90
    new-instance v1, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;

    iget-object v2, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->gNames:[Ljava/lang/String;

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ConfigToken;->getToken()Ljava/lang/String;

    move-result-object v0

    iget v3, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->loopTime:I

    invoke-direct {v1, v2, v0, v3}, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    invoke-virtual {v1}, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->syncByDefault()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    const-string/jumbo v1, "ConfigContainer"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_3
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "config token register fail!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/taobao/wswitch/net/request/TokenRequestListener;->gNames:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/taobao/wswitch/business/ConfigContainer;->setmCfgToken(Lcom/taobao/wswitch/model/ConfigToken;[Ljava/lang/String;)V

    goto :goto_0
.end method
