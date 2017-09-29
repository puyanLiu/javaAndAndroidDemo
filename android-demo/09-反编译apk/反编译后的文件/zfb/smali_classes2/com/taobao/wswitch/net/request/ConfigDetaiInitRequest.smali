.class public Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;
.super Ljava/lang/Object;
.source "ConfigDetaiInitRequest.java"


# instance fields
.field private final configToken:Ljava/lang/String;

.field private loopTime:I

.field private final requestGroupNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->loopTime:I

    .line 44
    iput-object p1, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->requestGroupNames:[Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->configToken:Ljava/lang/String;

    .line 46
    iput p3, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->loopTime:I

    .line 47
    return-void
.end method

.method private doSyncAction(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/taobao/wswitch/model/ConfigDetailInputDO;

    iget-object v1, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->configToken:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/taobao/wswitch/model/ConfigDetailInputDO;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/taobao/wswitch/util/ReceiptUtil;->getAndClearReceiptInfoListInJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ConfigDetailInputDO;->setReceipt(Ljava/lang/String;)V

    .line 97
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v0

    .line 98
    new-instance v1, Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v1}, Lmtopsdk/mtop/common/MtopNetworkProp;-><init>()V

    .line 99
    sget-object v2, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/common/MtopNetworkProp;->setMethod(Lmtopsdk/mtop/domain/MethodEnum;)V

    .line 100
    new-instance v2, Lmtopsdk/mtop/MtopProxy;

    invoke-direct {v2, v0, v1, v3, v3}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 101
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v0}, Lmtopsdk/mtop/MtopProxy;->setContext(Ljava/lang/Object;)V

    .line 102
    new-instance v0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;

    iget-object v1, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->requestGroupNames:[Ljava/lang/String;

    iget v3, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->loopTime:I

    invoke-direct {v0, v1, v3}, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;-><init>([Ljava/lang/String;I)V

    .line 104
    invoke-virtual {v2, v0}, Lmtopsdk/mtop/MtopProxy;->setCallback(Lmtopsdk/mtop/common/MtopListener;)V

    .line 105
    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->asyncApiCall()Lmtopsdk/mtop/common/ApiID;

    .line 106
    return-void
.end method

.method private initRequestConfigGroups(Ljava/lang/String;)Lcom/taobao/wswitch/model/ConfigGroup;
    .locals 5

    .prologue
    .line 51
    new-instance v0, Lcom/taobao/wswitch/model/ConfigGroup;

    invoke-direct {v0}, Lcom/taobao/wswitch/model/ConfigGroup;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Lcom/taobao/wswitch/model/ConfigGroup;->setName(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/Config;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/taobao/wswitch/model/ConfigGroup;->setId(Ljava/lang/Long;)V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/Config;->getVersion()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ConfigGroup;->setVersion(Ljava/lang/String;)V

    .line 58
    :cond_0
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Request ConfigGroup :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-object v0
.end method


# virtual methods
.method public declared-synchronized syncByDefault()V
    .locals 7

    .prologue
    .line 63
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->requestGroupNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->requestGroupNames:[Ljava/lang/String;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 89
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 67
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 68
    iget-object v2, p0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->requestGroupNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    .line 69
    invoke-static {v4}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 70
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->enqueueIfAbsent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 73
    invoke-direct {p0, v4}, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->initRequestConfigGroups(Ljava/lang/String;)Lcom/taobao/wswitch/model/ConfigGroup;

    move-result-object v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_3
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 83
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-direct {p0, v0}, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->doSyncAction(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    :try_start_2
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "syncByDefault failed :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
