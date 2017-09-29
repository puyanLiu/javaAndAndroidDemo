.class public Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;
.super Ljava/lang/Object;
.source "GroupChatMsgDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private final e:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 41
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "group_chat_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 46
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 47
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "GroupChatMsgDaoOp\u521b\u5efa"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;)V
    .locals 2

    .prologue
    .line 110
    if-eqz p1, :cond_0

    const-string/jumbo v0, "12"

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->loadingState:I

    :cond_0
    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllMsgs()V
    .locals 7

    .prologue
    .line 346
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "deleteAllMsgs:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 351
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->deleteIndex(Ljava/lang/String;Ljava/util/List;)V

    .line 353
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 351
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 356
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteAllMsgs:\u5220\u9664\u6240\u6709\u7fa4\u6d88\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 357
    :catch_0
    move-exception v0

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deleteMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 303
    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "deleteMessage:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_0
    return v0

    .line 309
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    .line 309
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 312
    const/4 v7, 0x1

    .line 313
    if-eqz p2, :cond_1

    .line 314
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 316
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "deleteMessage:\u7fa4\u6d88\u606f\u5220\u9664\u6216\u91cd\u53d1\u5220\u9664 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v7

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 317
    :catch_0
    move-exception v1

    .line 318
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 317
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v7

    goto :goto_1
.end method

.method public deleteMessagesById(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 439
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 452
    :goto_0
    return v0

    .line 444
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 445
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 444
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v7

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v1

    move v7, v0

    move-object v0, v1

    :goto_1
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 448
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 449
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 448
    :catch_1
    move-exception v1

    goto :goto_2

    .line 444
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public getAllMultiMediaMsgInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v4, "getAllMultiMediaMsgInfo:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 240
    :goto_0
    return-object v1

    .line 216
    :cond_0
    const/4 v2, 0x0

    .line 218
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "templateData"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 219
    const-string/jumbo v6, "templateCode"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "clientMsgId"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "side"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 220
    const-string/jumbo v6, "createTime"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "templateCode"

    const-string/jumbo v5, "14"

    invoke-virtual {v1, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "templateCode"

    const-string/jumbo v5, "19"

    invoke-virtual {v1, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "templateCode"

    const-string/jumbo v5, "20"

    invoke-virtual {v1, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 223
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 224
    :try_start_1
    invoke-interface {v4}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 239
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "getAllMultiMediaMsgInfo:\u67e5\u5230\u7fa4\u56fe\u7247"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 240
    goto/16 :goto_0

    .line 224
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v2, v0

    .line 225
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->templateData:Ljava/lang/String;

    const-class v6, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;

    invoke-static {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;

    .line 227
    iget-object v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->setClientMsgId(Ljava/lang/String;)V

    .line 228
    iget v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->side:I

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->setSide(I)V

    .line 229
    iget-wide v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->createTime:J

    invoke-virtual {v1, v6, v7}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->setCreateTime(J)V

    .line 230
    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/media/MultiMediaMessageInfo;->setTemplateCode(Ljava/lang/String;)V

    .line 231
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 234
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 235
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 236
    :catchall_0
    move-exception v1

    .line 237
    :goto_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 238
    throw v1

    .line 236
    :catchall_1
    move-exception v1

    move-object v2, v4

    goto :goto_4

    .line 234
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public queryAllGroupChatPhotoMsgInfo()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMsgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v4, "queryAllGroupChatPhotoMsgInfo:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 206
    :goto_0
    return-object v1

    .line 186
    :cond_0
    const/4 v2, 0x0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "templateData"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 189
    const-string/jumbo v6, "clientMsgId"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "side"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "createTime"

    aput-object v6, v4, v5

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "templateCode"

    const-string/jumbo v5, "14"

    invoke-virtual {v1, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 190
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 191
    :try_start_1
    invoke-interface {v4}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-nez v1, :cond_2

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 205
    :goto_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryAllGroupChatPhotoMsgInfo:\u67e5\u5230\u7fa4\u56fe\u7247"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 206
    goto :goto_0

    .line 191
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-object v2, v0

    .line 192
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->templateData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    iget-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->templateData:Ljava/lang/String;

    const-class v6, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMsgInfo;

    invoke-static {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMsgInfo;

    .line 194
    iget-object v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    iput-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMsgInfo;->clientMsgId:Ljava/lang/String;

    .line 195
    iget v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->side:I

    iput v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMsgInfo;->side:I

    .line 196
    iget-wide v6, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->createTime:J

    iput-wide v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/media/ImageMsgInfo;->createTime:J

    .line 197
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 200
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 201
    :goto_3
    :try_start_3
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    invoke-interface {v4, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 202
    :catchall_0
    move-exception v1

    .line 203
    :goto_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v3, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 204
    throw v1

    .line 202
    :catchall_1
    move-exception v1

    move-object v2, v4

    goto :goto_4

    .line 200
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method public queryLastRecentMessage()Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 324
    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "queryLastRecentMessage:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_0
    return-object v1

    .line 329
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v2, "localId"

    .line 332
    const/4 v3, 0x0

    .line 331
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "recent"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 333
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v0

    .line 334
    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 342
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public queryMessage(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "queryMessage:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 372
    :goto_0
    return-object v0

    .line 368
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 369
    :catch_0
    move-exception v0

    .line 370
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 372
    goto :goto_0
.end method

.method public queryMessagesByRowids(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 377
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "queryMessagesByRowids:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 394
    :goto_0
    return-object v0

    .line 381
    :cond_0
    const/4 v2, 0x0

    .line 383
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "localId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 384
    const-string/jumbo v5, "bizMemo"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "createTime"

    aput-object v5, v3, v4

    .line 383
    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "clientMsgId"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 385
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v2

    .line 386
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :goto_2
    move-object v0, v1

    .line 394
    goto :goto_0

    .line 386
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    .line 387
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 389
    :catch_0
    move-exception v0

    .line 390
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 391
    :catchall_0
    move-exception v0

    .line 392
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 393
    throw v0
.end method

.method public queryPreviousMsg(JIJI[J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJI[J)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    const/4 v8, 0x0

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move-wide v4, p4

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->queryPreviousMsg(JIJI[JZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryPreviousMsg(JIJI[JZ)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIJI[JZ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "queryPreviousMsg:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 169
    :goto_0
    return-object v0

    .line 126
    :cond_0
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, p7, v0

    .line 127
    const/4 v2, 0x0

    .line 128
    const/4 v3, 0x0

    .line 129
    const/4 v0, 0x0

    .line 131
    if-eqz p8, :cond_3

    .line 133
    :try_start_0
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string/jumbo v5, "localId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "localId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v4

    .line 139
    :goto_1
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v5, v4}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v2

    .line 140
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v4, v3

    move v3, v0

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 161
    :goto_3
    if-lez p6, :cond_2

    const/4 v0, 0x1

    aget-wide v3, p7, v0

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    const/4 v3, 0x1

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    iget-wide v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    aput-wide v4, p7, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :goto_4
    move-object v0, v1

    .line 169
    goto :goto_0

    .line 135
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    const-string/jumbo v5, "localId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v4

    goto :goto_1

    .line 140
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    .line 141
    iget-wide v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    cmp-long v6, v6, p1

    if-ltz v6, :cond_5

    .line 142
    if-nez p8, :cond_1

    .line 143
    const/4 v6, 0x0

    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 154
    :goto_5
    iget-boolean v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->countAsUnread:Z

    if-eqz v6, :cond_1

    if-lez p6, :cond_1

    .line 155
    add-int/lit8 v3, v3, 0x1

    .line 156
    if-ne v3, p6, :cond_1

    .line 157
    const/4 v6, 0x1

    iget-wide v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    aput-wide v7, p7, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 164
    :catch_0
    move-exception v0

    .line 165
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_4

    .line 146
    :cond_5
    if-lt v4, p3, :cond_6

    :try_start_3
    iget-wide v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->localId:J

    cmp-long v6, v6, p4

    if-gez v6, :cond_6

    if-ge v3, p6, :cond_7

    .line 147
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 148
    const/4 v6, 0x0

    invoke-interface {v1, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5

    .line 166
    :catchall_0
    move-exception v0

    .line 167
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 168
    throw v0

    .line 150
    :cond_7
    const/4 v0, 0x0

    const-wide/16 v3, 0x1

    :try_start_4
    aput-wide v3, p7, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3
.end method

.method public saveMessages(Ljava/util/List;Z)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;",
            ">;Z)I"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 62
    const/4 v0, 0x2

    new-array v7, v0, [I

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "saveMessages:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    aget v0, v7, v8

    .line 107
    :goto_0
    return v0

    .line 67
    :cond_0
    new-array v0, v4, [Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    .line 69
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/data/g;

    invoke-direct {v3, p0, p1, v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/g;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;Ljava/util/List;[I[Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;)V

    invoke-interface {v2, v3}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 69
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    if-eqz p2, :cond_1

    .line 95
    const/4 v1, 0x1

    :try_start_2
    aget v1, v7, v1

    if-ne v1, v4, :cond_2

    const/4 v1, 0x0

    aget-object v1, v0, v1

    if-eqz v1, :cond_2

    .line 96
    const/4 v1, 0x0

    aget-object v6, v0, v1

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    iget-object v3, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->clientMsgId:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 102
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveMessages:\u66f4\u65b0\u7fa4\u6d88\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v7, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const/4 v0, 0x0

    aget v0, v7, v0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    aget v0, v7, v8

    goto :goto_0

    .line 99
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public saveSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v0, 0x0

    .line 250
    .line 251
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "saveSingleMessage:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    :goto_0
    return v0

    .line 256
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 256
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-eqz p2, :cond_1

    .line 261
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    const/4 v5, 0x1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveSingleMessage:\u65b0\u5efa\u7fa4\u4e0a\u884c\u6d88\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move v0, v7

    goto :goto_0

    .line 256
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2

    throw v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 264
    :catch_0
    move-exception v1

    .line 265
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 264
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v7

    goto :goto_1
.end method

.method public updateEggReaded()V
    .locals 5

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 416
    :goto_0
    return-void

    .line 406
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "isEggRead"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 409
    const-string/jumbo v2, "isEggRead"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 410
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 406
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 412
    :catch_0
    move-exception v0

    .line 413
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSingleMessage(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;Z)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 277
    .line 278
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "updateSingleMessage:\u7fa4\u6d88\u606f\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    return v0

    .line 283
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 283
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateSingleMessage:\u66f4\u65b0\u7fa4\u4e0a\u884c\u6216\u64a4\u56de\u6216\u6807\u8bb0\u5df2\u8bfb"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 287
    const/4 v7, 0x1

    .line 288
    if-eqz p2, :cond_1

    .line 289
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->clientMsgId:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    const/4 v5, 0x3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move v0, v7

    goto :goto_0

    .line 283
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v2

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 291
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method public updateVoiceStatus(Ljava/lang/String;I)V
    .locals 7

    .prologue
    .line 422
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 436
    :goto_0
    return-void

    .line 426
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "clientMsgId"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 429
    const-string/jumbo v2, "loadingState"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 430
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 426
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "chatmsgdb"

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->e:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 433
    :catch_0
    move-exception v0

    .line 434
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->d:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 426
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
