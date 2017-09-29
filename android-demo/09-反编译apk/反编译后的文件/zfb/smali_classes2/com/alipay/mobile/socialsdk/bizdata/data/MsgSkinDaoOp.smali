.class public Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;
.super Ljava/lang/Object;
.source "MsgSkinDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private b:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 28
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    .line 29
    const-string/jumbo v0, "skin"

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->d:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "msg_skin"

    const-string/jumbo v2, "MsgSkinObj"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllData()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "msg_skin"

    const-string/jumbo v3, "deleteAllData \u5b58\u50a8\u5931\u8d25,\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return v0

    .line 66
    :cond_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    monitor-enter v2

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "msg_skin"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public queryMsgSkinObj(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "queryMsgSkinObj:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 93
    :goto_0
    return-object v0

    .line 83
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "templateCode"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "skinCode"

    invoke-virtual {v0, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 86
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 93
    goto :goto_0
.end method

.method public save(Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 44
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "msg_skin"

    const-string/jumbo v3, "MsgSkinObj \u5b58\u50a8\u5931\u8d25,\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_0
    return v0

    .line 49
    :cond_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/model/MsgSkinObj;

    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    :try_start_1
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MsgSkinDaoOp;->a:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "msg_skin"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
