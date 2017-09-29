.class public Lcom/taobao/wswitch/business/ConfigContainer;
.super Ljava/util/Observable;
.source "ConfigContainer.java"


# static fields
.field private static sIntance:Lcom/taobao/wswitch/business/ConfigContainer;


# instance fields
.field private defaultIActionName:Ljava/lang/String;

.field private final mAllBizGroupNames:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppKey:Ljava/lang/String;

.field private mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

.field private final mConfigMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfig;",
            ">;"
        }
    .end annotation
.end field

.field public mGlobalContext:Landroid/content/Context;

.field private mGlobalGroupNames:[Ljava/lang/String;

.field private mIntent:Landroid/content/Intent;

.field private final mIntentNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mIsPrd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/taobao/wswitch/business/ConfigContainer;

    invoke-direct {v0}, Lcom/taobao/wswitch/business/ConfigContainer;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/business/ConfigContainer;->sIntance:Lcom/taobao/wswitch/business/ConfigContainer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalGroupNames:[Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAllBizGroupNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntentNameMap:Ljava/util/Map;

    .line 35
    iput-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    .line 37
    iput-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIsPrd:Z

    .line 41
    iput-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    .line 42
    iput-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->defaultIActionName:Ljava/lang/String;

    return-void
.end method

.method private addXcmdListener()V
    .locals 0

    .prologue
    .line 512
    return-void
.end method

.method private declared-synchronized configSyncByInit([Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 395
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_1

    .line 411
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 398
    :cond_1
    :try_start_1
    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "configToken is null! configSyncByInit is blocked!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/taobao/wswitch/net/request/ConfigTokenRequest;->synConfigTokenRequest([Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 405
    :cond_2
    :try_start_2
    new-instance v0, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    .line 406
    invoke-virtual {v0}, Lcom/taobao/wswitch/net/request/ConfigDetaiInitRequest;->syncByDefault()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    .line 408
    :try_start_3
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init sync config content error,detail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private getDefaultIActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 385
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    invoke-static {p1}, Lcom/taobao/wswitch/util/EntityHelper;->getIActionNameByAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    :goto_0
    return-object v0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->defaultIActionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-static {p1}, Lcom/taobao/wswitch/util/EntityHelper;->getIActionNameByAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->defaultIActionName:Ljava/lang/String;

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->defaultIActionName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/wswitch/business/ConfigContainer;
    .locals 2

    .prologue
    .line 46
    const-class v0, Lcom/taobao/wswitch/business/ConfigContainer;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/taobao/wswitch/business/ConfigContainer;->sIntance:Lcom/taobao/wswitch/business/ConfigContainer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getMissedConfigGroupNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .prologue
    .line 333
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-object p1

    .line 336
    :cond_1
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    .line 340
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 342
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 343
    array-length v3, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v4, p1, v1

    .line 344
    invoke-static {v4}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 345
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 343
    :cond_2
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 352
    :cond_3
    iget-object v5, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    .line 353
    if-nez v0, :cond_4

    .line 354
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 356
    :cond_4
    invoke-static {v0}, Lcom/taobao/wswitch/util/VersionUtil;->isCurVersionMiss(Lcom/taobao/wswitch/model/ValidConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 362
    :cond_5
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    move-object p1, v0

    goto :goto_0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z[Ljava/lang/String;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Z[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "configContainer init invoke start"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-static {p4, p1}, Lcom/taobao/wswitch/util/ReceiptUtil;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    invoke-static {p5}, Lcom/taobao/wswitch/util/LogUtil;->setIsRelease(Z)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    .line 125
    invoke-direct/range {v0 .. v6}, Lcom/taobao/wswitch/business/ConfigContainer;->isParamLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "init params is illegal,pls check!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    .line 131
    iput-object p6, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalGroupNames:[Ljava/lang/String;

    .line 132
    iput-boolean p5, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIsPrd:Z

    .line 133
    iput-object p4, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    .line 135
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAllBizGroupNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalGroupNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    .line 137
    invoke-direct {p0}, Lcom/taobao/wswitch/business/ConfigContainer;->addXcmdListener()V

    .line 139
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAllBizGroupNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v0, p1, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->loadLocalConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 141
    invoke-direct {p0}, Lcom/taobao/wswitch/business/ConfigContainer;->loadConfigToken()V

    .line 143
    invoke-direct {p0, p6}, Lcom/taobao/wswitch/business/ConfigContainer;->getMissedConfigGroupNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 145
    if-eqz v1, :cond_1

    array-length v0, v1

    if-gtz v0, :cond_2

    .line 146
    :cond_1
    const-string/jumbo v0, "ConfigContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "there is no configGroup missed cache! groupName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 150
    :cond_2
    const/4 v0, 0x0

    .line 151
    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    if-eqz v2, :cond_3

    .line 152
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ConfigToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 155
    :cond_3
    invoke-direct {p0}, Lcom/taobao/wswitch/business/ConfigContainer;->isLocalConfigTokenMiss()Z

    move-result v2

    .line 156
    if-eqz v2, :cond_4

    .line 158
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/net/request/ConfigTokenRequest;->synConfigTokenRequest([Ljava/lang/String;I)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->configSyncByInit([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private isAddedConfigGroupMiss(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 166
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 190
    :goto_0
    return v0

    .line 169
    :cond_1
    invoke-static {p1, p2}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    .line 173
    if-eqz v0, :cond_3

    .line 174
    invoke-static {v0}, Lcom/taobao/wswitch/util/VersionUtil;->isCurVersionMiss(Lcom/taobao/wswitch/model/ValidConfig;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 175
    goto :goto_0

    :cond_2
    move v0, v2

    .line 177
    goto :goto_0

    .line 179
    :cond_3
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/taobao/wswitch/util/CCFileUtil;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v1

    .line 181
    goto :goto_0

    .line 183
    :cond_4
    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->string2ValidConfig(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v0

    .line 184
    if-nez v0, :cond_5

    move v0, v1

    .line 185
    goto :goto_0

    .line 187
    :cond_5
    invoke-static {v0}, Lcom/taobao/wswitch/util/VersionUtil;->isCurVersionMiss(Lcom/taobao/wswitch/model/ValidConfig;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 188
    goto :goto_0

    :cond_6
    move v0, v2

    .line 190
    goto :goto_0
.end method

.method private isLocalConfigTokenMiss()Z
    .locals 6

    .prologue
    .line 220
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ConfigToken;->getLastUpdateTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    invoke-virtual {v4}, Lcom/taobao/wswitch/model/ConfigToken;->getCacheTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/taobao/wswitch/util/VersionUtil;->isCurVersionMiss(JJJ)Z

    move-result v0

    goto :goto_0
.end method

.method private isParamLegal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "init param appKey is null!"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return v0

    .line 57
    :cond_0
    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "init param version is null!"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {p3}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "init param deviceId is null!"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_2
    if-nez p4, :cond_3

    .line 68
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "init param context is null!"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    if-eqz p5, :cond_4

    array-length v1, p5

    if-gtz v1, :cond_5

    .line 72
    :cond_4
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "init param groupNames is null!"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_5
    if-eqz p6, :cond_6

    invoke-interface {p6}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 76
    :cond_6
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "init param customziedMap is null!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_7
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadConfigToken()V
    .locals 4

    .prologue
    .line 232
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/taobao/wswitch/util/ConfigCache;->getConfigToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 233
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    :goto_0
    return-void

    .line 237
    :cond_0
    :try_start_0
    const-class v1, Lcom/taobao/wswitch/model/ConfigToken;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ConfigToken;

    iput-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "configToken to object error,detail:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadLocalConfig(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 282
    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_2

    .line 283
    :cond_0
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "loadLocalConfig error:context|appKey|gNames is null!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void

    .line 286
    :cond_2
    invoke-virtual {p3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 288
    invoke-static {p1, p2, v0}, Lcom/taobao/wswitch/util/CCFileUtil;->read(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 292
    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->string2ValidConfig(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_3

    .line 296
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 300
    invoke-static {v2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 301
    iget-object v3, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private declared-synchronized saveConfigToken(Lcom/taobao/wswitch/model/ConfigToken;)V
    .locals 5

    .prologue
    .line 245
    monitor-enter p0

    if-nez p1, :cond_0

    .line 259
    :goto_0
    monitor-exit p0

    return-void

    .line 249
    :cond_0
    const/4 v1, 0x0

    .line 251
    :try_start_0
    iput-object p1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    .line 252
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 253
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/ConfigCache;->saveConfigToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_1
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "configToken write fail!token:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",detail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/ConfigCache;->saveConfigToken(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendBroadcastMsg(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 559
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 573
    :goto_0
    return-void

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    if-nez v0, :cond_1

    .line 563
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    .line 565
    :cond_1
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->getDefaultIActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 567
    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 571
    :goto_1
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 572
    const-string/jumbo v0, "ConfigContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "intent actionName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method


# virtual methods
.method public addExtraGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 196
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "pls invoke init first!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAllBizGroupNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 205
    invoke-direct {p0, p1, p2}, Lcom/taobao/wswitch/business/ConfigContainer;->isAddedConfigGroupMiss(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 207
    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    if-eqz v1, :cond_2

    .line 208
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ConfigToken;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 210
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 211
    invoke-direct {p0, v1, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->configSyncByInit([Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addIntentActionNameMapping([Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 367
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 382
    :cond_0
    return-void

    .line 370
    :cond_1
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 371
    invoke-static {v3}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 372
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 375
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntentNameMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 376
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/taobao/wswitch/util/EntityHelper;->getIActionNameByGroupName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    iget-object v3, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntentNameMap:Ljava/util/Map;

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string/jumbo v3, "ConfigContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "add action:gName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",iName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    invoke-virtual {p0, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 617
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-object p4

    .line 591
    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 592
    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    .line 593
    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->vcfg2cfg(Lcom/taobao/wswitch/model/ValidConfig;)Lcom/taobao/wswitch/model/Config;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0, p3}, Lcom/taobao/wswitch/model/Config;->getVal(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 599
    invoke-virtual {v0, p3}, Lcom/taobao/wswitch/model/Config;->getVal(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    const-string/jumbo v0, "ConfigContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getConfig error,groupName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",defaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->getConfigByGroupName(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v0

    return-object v0
.end method

.method public getConfigByGroupName(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 455
    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 466
    :goto_0
    return-object v0

    .line 458
    :cond_0
    invoke-static {p1, p2}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 460
    goto :goto_0

    .line 462
    :cond_1
    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    .line 463
    if-nez v0, :cond_2

    move-object v0, v1

    .line 464
    goto :goto_0

    .line 466
    :cond_2
    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->vcfg2cfg(Lcom/taobao/wswitch/model/ValidConfig;)Lcom/taobao/wswitch/model/Config;

    move-result-object v0

    goto :goto_0
.end method

.method public getIntentActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 635
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    const/4 v0, 0x0

    .line 643
    :cond_0
    :goto_0
    return-object v0

    .line 638
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntentNameMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 640
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->getDefaultIActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTokenValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ConfigToken;->getToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUpdatedConfigs(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfig;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-object p1

    .line 480
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 483
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 484
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/wswitch/model/ValidConfig;

    .line 486
    if-eqz v1, :cond_2

    .line 487
    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/wswitch/model/ValidConfig;

    .line 490
    if-nez v2, :cond_3

    .line 491
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 493
    :cond_3
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 494
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object p1, v3

    .line 498
    goto :goto_0
.end method

.method public getValidConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 438
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-object v0

    .line 441
    :cond_1
    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    goto :goto_0
.end method

.method public getmAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    return-object v0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z[Ljava/lang/String;)V
    .locals 8

    .prologue
    .line 94
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    :try_start_0
    invoke-direct/range {v0 .. v7}, Lcom/taobao/wswitch/business/ConfigContainer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z[Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :goto_0
    const-string/jumbo v0, "ConfigContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "init appKey with:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    :try_start_1
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init action fail!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public isGroupCacheMiss(Ljava/lang/String;JJ)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 433
    :goto_0
    return v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    .line 430
    if-eqz v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ValidConfig;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p2, v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v2

    cmp-long v0, v2, p4

    if-gez v0, :cond_3

    .line 431
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 433
    goto :goto_0
.end method

.method public isGroupEverRequested(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 414
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    :cond_0
    :goto_0
    return v0

    .line 417
    :cond_1
    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAllBizGroupNames:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 420
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized saveConfigs2disk(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    monitor-exit p0

    return-void

    .line 312
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/taobao/wswitch/model/ValidConfig;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    if-eqz v1, :cond_2

    .line 315
    :try_start_2
    const-string/jumbo v3, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "save config content with appKey:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",configName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v3, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mGlobalContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/taobao/wswitch/util/CCFileUtil;->write(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    :try_start_3
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->dequeue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 323
    :catch_0
    move-exception v3

    :try_start_4
    const-string/jumbo v3, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "config to disk error,groupName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 326
    :try_start_5
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->dequeue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    iget-object v2, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->dequeue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public setConfigs(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 528
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 533
    const/4 v0, 0x0

    .line 534
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 535
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 536
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;

    .line 537
    if-eqz v0, :cond_2

    .line 538
    iget-object v3, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 542
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mIntentNameMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 543
    const-string/jumbo v4, "ConfigContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "send action:gName:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",iName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 546
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    .line 548
    :cond_3
    invoke-direct {p0, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->sendBroadcastMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 552
    :cond_4
    if-eqz v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mAppKey:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->getDefaultIActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 554
    invoke-direct {p0, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->sendBroadcastMsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setmCfgToken(Lcom/taobao/wswitch/model/ConfigToken;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 268
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mCfgToken:Lcom/taobao/wswitch/model/ConfigToken;

    if-nez v0, :cond_0

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->saveConfigToken(Lcom/taobao/wswitch/model/ConfigToken;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ConfigContainer [mConfigMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/wswitch/business/ConfigContainer;->mConfigMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uninit()V
    .locals 0

    .prologue
    .line 522
    return-void
.end method
