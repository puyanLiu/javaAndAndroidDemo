.class final Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;
.super Ljava/lang/Object;
.source "StageDao.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/framework/service/ext/openplatform/persist/DaoExcutor",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/util/List;

.field private final synthetic e:I

.field private final synthetic f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->a:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/StageDao;

    iput-object p2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->d:Ljava/util/List;

    iput p5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->e:I

    iput-object p6, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->f:Ljava/lang/String;

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final excute(Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getStageEntityDao()Lcom/j256/ormlite/dao/Dao;

    move-result-object v1

    .line 326
    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "userId"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 328
    const-string/jumbo v3, "stageCode"

    iget-object v4, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 329
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->queryForFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    .line 330
    if-eqz v0, :cond_0

    .line 331
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    .line 332
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StageDao"

    .line 333
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "userId :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " setNeedReport:true !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 332
    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setNeedReport(Z)V

    .line 335
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 350
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 337
    :cond_0
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;-><init>()V

    .line 338
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setUserId(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setStageCode(Ljava/lang/String;)V

    .line 340
    iget v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->e:I

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setRank(I)V

    .line 341
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setParentStageCode(Ljava/lang/String;)V

    .line 342
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->d:Ljava/util/List;

    invoke-static {v2}, Lcom/alibaba/fastjson/JSONArray;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setAppRank(Ljava/lang/String;)V

    .line 343
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->c:Ljava/lang/String;

    const-string/jumbo v3, "firstScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 344
    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V

    .line 348
    :cond_1
    :goto_1
    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    goto :goto_0

    .line 345
    :cond_2
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/ag;->c:Ljava/lang/String;

    const-string/jumbo v3, "secondScreen"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;->setMaxAppNum(I)V

    goto :goto_1
.end method
