.class public Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;
.super Ljava/util/Observable;
.source "ConfigContainerAdapter.java"


# static fields
.field private static configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

.field private static context:Landroid/content/Context;

.field private static instance:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;


# instance fields
.field private defaultIActionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    invoke-direct {v0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->instance:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->defaultIActionName:Ljava/lang/String;

    .line 244
    return-void
.end method

.method static synthetic access$000()Lcom/taobao/wswitch/api/service/IConfigCenterService;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/taobao/wswitch/api/service/IConfigCenterService;)Lcom/taobao/wswitch/api/service/IConfigCenterService;
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    return-object p0
.end method

.method static synthetic access$100()Landroid/content/Context;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->notifyRegisteredObservers()V

    return-void
.end method

.method private getDefaultIActionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    invoke-static {p1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->getIActionNameByAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_0
    return-object v0

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->defaultIActionName:Ljava/lang/String;

    invoke-static {v0}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-static {p1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->getIActionNameByAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->defaultIActionName:Ljava/lang/String;

    .line 292
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->defaultIActionName:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getIActionNameByAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 296
    invoke-static {p0}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const-string/jumbo v0, "com.taobao.taobao.config.update.notify"

    .line 299
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com.taobao.taobao.config.update.notify_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;
    .locals 2

    .prologue
    .line 32
    const-class v1, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->instance:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    invoke-direct {v0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;-><init>()V

    sput-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->instance:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;

    .line 35
    :cond_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->instance:Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .locals 4

    .prologue
    .line 63
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 79
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$2;

    invoke-direct {v0, p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$2;-><init>(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private notifyRegisteredObservers()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->setChanged()V

    .line 83
    invoke-virtual {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->notifyObservers()V

    .line 84
    return-void
.end method

.method private registerDefaultBoradcastReceiver(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 283
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-direct {p0, p1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->getDefaultIActionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 279
    new-instance v2, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$ConfigContainertDefaultReceiver;

    invoke-direct {v2, p0, v0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$ConfigContainertDefaultReceiver;-><init>(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;Ljava/lang/String;)V

    .line 280
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public addExtraGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 125
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    .line 135
    :goto_0
    return-void

    .line 130
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->addExtraGroup(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    .line 132
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "configCenterService addExtraGroup exception,appKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",groupName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addIntentActionGroupNames([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 356
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_2

    .line 360
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    goto :goto_0

    .line 364
    :cond_2
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v0, p1}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->addIntentActionGroupNames([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 365
    :catch_0
    move-exception v0

    .line 366
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "configCenterService addIntentActionGroupNames exception,groupNames:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 171
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    .line 181
    :goto_0
    return-object p3

    .line 176
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v0, p1, p2, p3}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p3

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "configCenterService getConfig exception,groupName:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 147
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    .line 158
    :goto_0
    return-object p4

    .line 152
    :cond_0
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->getConfigRecommend(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "configCenterService getConfig exception,appKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",groupName"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfigContent(Ljava/lang/String;)Lcom/taobao/wswitch/api/model/Config;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 191
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_1

    .line 192
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    .line 210
    :cond_0
    :goto_0
    return-object v2

    .line 197
    :cond_1
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v0, p1}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 202
    :goto_1
    invoke-static {v1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 206
    :try_start_1
    const-class v0, Lcom/taobao/wswitch/api/model/Config;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/api/model/Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_0

    .line 198
    :catch_0
    move-exception v0

    .line 199
    const-string/jumbo v1, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "configCenterService getConfig exception,groupName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    .line 207
    :catch_1
    move-exception v0

    .line 208
    const-string/jumbo v3, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "JSON.parseObject exception,contents:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",detail:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfigContent(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/wswitch/api/model/Config;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 221
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_1

    .line 222
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    .line 240
    :cond_0
    :goto_0
    return-object v2

    .line 227
    :cond_1
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v0, p1, p2}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->getConfigContentRecommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 232
    :goto_1
    invoke-static {v1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    :try_start_1
    const-class v0, Lcom/taobao/wswitch/api/model/Config;

    invoke-static {v1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/api/model/Config;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const-string/jumbo v1, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "configCenterService getConfig exception,appKey:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",groupName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_1

    .line 237
    :catch_1
    move-exception v0

    .line 238
    const-string/jumbo v3, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "JSON.parseObject exception,contents:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, ",detail:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getConfigListByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    :goto_0
    return-object v0

    .line 321
    :cond_0
    :try_start_0
    new-instance v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$3;

    invoke-direct {v0, p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$3;-><init>(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v0

    .line 324
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "string value to list action fail! content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getConfigMapByKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->getConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 342
    invoke-static {v1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 352
    :goto_0
    return-object v0

    .line 346
    :cond_0
    :try_start_0
    new-instance v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$4;

    invoke-direct {v0, p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$4;-><init>(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;)V

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v1, v0, v2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 348
    :catch_0
    move-exception v0

    .line 349
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "string value to map action fail! content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method public getIntentActionNameByGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 373
    invoke-static {p1}, Lcom/taobao/wswitch/api/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    :goto_0
    return-object v0

    .line 376
    :cond_0
    sget-object v1, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v1, :cond_1

    .line 377
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    goto :goto_0

    .line 381
    :cond_1
    :try_start_0
    sget-object v1, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    invoke-interface {v1, p1}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->getIntentActionNameByGroupName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "configCenterService getIntentActionNameByGroupName exception,groupName:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",detail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 44
    if-nez p1, :cond_1

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_0

    .line 50
    sput-object p1, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->context:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$1;

    invoke-direct {v0, p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$1;-><init>(Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 97
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "ConfigContainerAdapter init entry"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->registerDefaultBoradcastReceiver(Ljava/lang/String;)V

    .line 99
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    if-nez v0, :cond_0

    .line 100
    invoke-direct {p0}, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->init()V

    .line 101
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v1, "ConfigContainerAdapter init fail! service is null!"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 104
    :cond_0
    const-string/jumbo v0, "ConfigContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ConfigContainerAdapter init start:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :try_start_0
    sget-object v0, Lcom/taobao/wswitch/api/business/ConfigContainerAdapter;->configCenterService:Lcom/taobao/wswitch/api/service/IConfigCenterService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/taobao/wswitch/api/service/IConfigCenterService;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_1
    const-string/jumbo v0, "ConfigContainer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ConfigContainerAdapter init stop:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "configCenterService init exception,appKey:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",deviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",appVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",groupNames:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",isPrd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/api/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
