.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;
.super Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;
.source "StageDao.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StageDao"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    .line 27
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoTemplate;-><init>()V

    .line 34
    return-void
.end method

.method public static getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    return-object v0
.end method

.method private isStageExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 409
    .line 410
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ah;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 409
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public copyOldStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 452
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isStageExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/y;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/y;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 476
    :cond_0
    return-void
.end method

.method public copyPreinstallStage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 479
    invoke-direct {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->isStageExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/z;

    invoke-direct {v0, p0, p2, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/z;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 499
    :cond_0
    return-void
.end method

.method public getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    .line 51
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/w;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 65
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 67
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 72
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public getDisplayAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "StageDao"

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getDisplayAppsForStage, appRanks size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 87
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 90
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    :cond_1
    return-object v1

    .line 91
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public getDisplayAppsForUser(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 101
    .line 102
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/aa;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 114
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 115
    if-eqz v0, :cond_1

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 140
    :cond_1
    return-object v4

    .line 116
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 117
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 122
    :try_start_0
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    move-object v3, v2

    .line 129
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 130
    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getStageCode()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    goto :goto_1

    .line 127
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v2

    goto :goto_1

    .line 131
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 132
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v2

    if-nez v2, :cond_3

    .line 133
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_2
.end method

.method public getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;
    .locals 1

    .prologue
    .line 144
    .line 145
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ab;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 144
    return-object v0
.end method

.method public getStageEntityList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    .line 163
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ac;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ac;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 162
    return-object v0
.end method

.method public getUserStageRankForStage(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;
    .locals 5

    .prologue
    .line 227
    .line 228
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ae;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ae;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 241
    new-instance v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;

    invoke-direct {v2}, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;-><init>()V

    .line 242
    iput-object p2, v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;->stageCode:Ljava/lang/String;

    .line 243
    if-eqz v0, :cond_1

    .line 244
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    const-class v3, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v1, v3}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 246
    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    :cond_0
    iput-object v3, v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;->appIdList:Ljava/util/List;

    .line 252
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getDataVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobileappconfig/core/model/stage/UserStageRank;->dataVersion:Ljava/lang/String;

    .line 255
    :cond_1
    return-object v2

    .line 247
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 248
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasOldUserStage()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 427
    .line 428
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/x;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/x;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 440
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    const/4 v0, 0x1

    .line 448
    :goto_0
    return v0

    .line 441
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 442
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 443
    goto :goto_0

    :cond_2
    move v0, v1

    .line 448
    goto :goto_0
.end method

.method public isAppDisplayInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 374
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    .line 376
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 382
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 376
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 377
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->isDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAppInThisStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 363
    if-eqz v0, :cond_1

    .line 364
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 370
    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 364
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 365
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isFull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 181
    .line 182
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ad;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ad;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 197
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxShowAppNum()I

    move-result v7

    .line 199
    if-lez v7, :cond_2

    move v2, v3

    .line 200
    :goto_0
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 201
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getAppRank()Ljava/lang/String;

    move-result-object v1

    const-class v5, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    invoke-static {v1, v5}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 202
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 203
    if-eqz v2, :cond_6

    .line 204
    invoke-static {}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getDao()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDao;->getAppListByAppRanks(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 205
    if-eqz v1, :cond_6

    .line 206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v4

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v6

    .line 216
    :goto_2
    if-eqz v2, :cond_5

    .line 217
    if-lt v5, v7, :cond_4

    .line 223
    :cond_1
    :goto_3
    return v3

    :cond_2
    move v2, v4

    .line 199
    goto :goto_0

    .line 206
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    .line 207
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->isDisplay()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 208
    const-string/jumbo v9, "OFFLINE"

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getStatus()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ChannelConfigUtils;->isBannedApp(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    :cond_4
    move v3, v4

    .line 217
    goto :goto_3

    .line 219
    :cond_5
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getMaxAppNum()I

    move-result v0

    .line 220
    if-ge v1, v0, :cond_1

    move v3, v4

    goto :goto_3

    :cond_6
    move v5, v4

    move v1, v6

    goto :goto_2

    :cond_7
    move v5, v4

    move v1, v4

    goto :goto_2
.end method

.method public moveAppByStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 387
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 388
    const/4 v1, 0x0

    .line 389
    if-eqz v2, :cond_1

    .line 390
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 399
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 400
    invoke-virtual {p0, p1, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 401
    if-eqz v2, :cond_2

    .line 402
    if-eqz p5, :cond_4

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 403
    invoke-virtual {p0, p1, p3, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 406
    :cond_2
    return-void

    .line 390
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 391
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 393
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {p0, p1, p2, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object v1, v0

    .line 395
    goto :goto_0

    .line 402
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1
.end method

.method public needReportStage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    .line 507
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->isNeedReport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 509
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getLastReportTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->getReportInterval()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v0, v1, v3

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 508
    goto :goto_0
.end method

.method public saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 320
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    .line 353
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 354
    return-void
.end method

.method public saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 358
    const-string/jumbo v3, ""

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    .line 359
    return-void
.end method

.method public saveOrderInStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 289
    if-nez p3, :cond_0

    .line 316
    :goto_0
    return-void

    .line 292
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getAppsForStage(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 293
    if-eqz v3, :cond_2

    .line 294
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 295
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_3

    .line 299
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 306
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 315
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->saveOrUpdateStage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_0

    .line 296
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 297
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 299
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 300
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 306
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 307
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/openplatform/app/AppRank;

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v5

    if-gt v0, v5, :cond_6

    .line 309
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p3, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 311
    :cond_6
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public stageHasChanged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 502
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->getStageEntity(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    move-result-object v0

    .line 503
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->isNeedReport()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateStageEntity(Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/af;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/af;-><init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;)V

    .line 283
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;->excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;)Ljava/lang/Object;

    .line 284
    return-void
.end method
