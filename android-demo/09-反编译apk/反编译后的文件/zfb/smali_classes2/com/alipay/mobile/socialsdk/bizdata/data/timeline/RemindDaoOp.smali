.class public Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;
.super Ljava/lang/Object;
.source "RemindDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 51
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    .line 52
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    const-string/jumbo v2, "remind"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 55
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 56
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 57
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 58
    return-void
.end method

.method private static a(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 287
    const v0, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a(Lcom/j256/ormlite/dao/CloseableWrappedIterable;I[I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/j256/ormlite/dao/CloseableWrappedIterable;I[I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/CloseableWrappedIterable",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;",
            ">;I[I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 292
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 293
    if-eqz p0, :cond_2

    .line 296
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 297
    invoke-interface {p0}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 328
    :cond_0
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 330
    const-class v1, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 328
    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryAndLoadAccountBriefInfoForTl(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 333
    if-eqz v2, :cond_2

    .line 334
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 342
    :cond_2
    return-object v3

    .line 297
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    .line 298
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;

    invoke-direct {v6}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;-><init>()V

    .line 299
    new-array v7, v11, [Ljava/lang/String;

    .line 300
    iput-object v0, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->remindInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    .line 301
    new-instance v8, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v8}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v8, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 302
    iget-object v8, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 303
    iget-object v8, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userLoginId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 304
    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userId:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 305
    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userLoginId:Ljava/lang/String;

    aput-object v8, v7, v10

    .line 306
    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userId:Ljava/lang/String;

    invoke-interface {v4, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserId:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 308
    new-array v7, v11, [Ljava/lang/String;

    .line 309
    new-instance v8, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v8}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v8, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 310
    iget-object v8, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 311
    iget-object v8, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserLoginId:Ljava/lang/String;

    iput-object v9, v8, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;

    .line 312
    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserId:Ljava/lang/String;

    aput-object v8, v7, v2

    .line 313
    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserLoginId:Ljava/lang/String;

    aput-object v8, v7, v10

    .line 314
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserId:Ljava/lang/String;

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_4
    add-int/lit8 v0, v1, 0x1

    .line 318
    if-gt v0, p1, :cond_5

    .line 319
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto/16 :goto_0

    .line 321
    :cond_5
    if-eqz p2, :cond_0

    .line 322
    aput v10, p2, v2

    goto/16 :goto_1

    .line 334
    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;

    .line 335
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->fromAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 336
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;->toAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    goto/16 :goto_2
.end method

.method private static a(Ljava/util/Map;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 371
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 374
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    return-object v1

    .line 374
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 375
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearMessage()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 224
    .line 225
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return v0

    .line 230
    :cond_0
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 232
    const/4 v0, 0x1

    .line 230
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move v1, v0

    move-object v0, v4

    :try_start_2
    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 234
    :catch_0
    move-exception v0

    move-object v4, v0

    move v0, v1

    move-object v1, v4

    .line 235
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_reminddaoop"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public clearUnreadCount()V
    .locals 7

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 192
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "isRead"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 195
    const-string/jumbo v2, "isRead"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 196
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 192
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v2, "\u5f53\u524d\u767b\u5f55\u7528\u6237\u4e3a\u7a7a,\u6682\u4e0d\u901a\u77e5\u670b\u53cbtab\u4e86"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    .line 202
    const-string/jumbo v2, "remind"

    const-string/jumbo v3, "isRead"

    const-string/jumbo v4, "isRead"

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 201
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_reminddaoop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0

    .line 199
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "userId"

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "leftUnread"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v4, "\u6e05\u7a7a\u9996\u9875\u672a\u8bfb\u6570"

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateTimelineInfo(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public getUnreadModel(Z)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 83
    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string/jumbo v3, "createTime"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 88
    const-string/jumbo v5, "userId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "userLoginId"

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "isRead"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 89
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 91
    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/String;

    .line 92
    if-eqz v1, :cond_0

    .line 93
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v3, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v3

    .line 101
    :cond_0
    if-lez v0, :cond_1

    .line 102
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;

    invoke-direct {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 103
    :try_start_2
    iput v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->unreadNum:I

    .line 104
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;-><init>()V

    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->lastAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 105
    iget-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->lastAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    const/4 v2, 0x0

    aget-object v2, v4, v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    .line 106
    iget-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->lastAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    const/4 v2, 0x1

    aget-object v2, v4, v2

    iput-object v2, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->account:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v3

    .line 108
    :cond_1
    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 109
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->e:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 112
    invoke-virtual {v3, v0}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->queryAndLoadAccountBriefInfoForTl(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 113
    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 114
    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->lastAccount:Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    move-object v0, v2

    .line 122
    :goto_1
    if-nez v0, :cond_3

    .line 123
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;-><init>()V

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2\u5230\u672a\u8bfb\u6570\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->unreadNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    return-object v0

    .line 93
    :cond_4
    :try_start_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    .line 94
    if-nez v3, :cond_5

    .line 95
    const/4 v6, 0x0

    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userId:Ljava/lang/String;

    aput-object v7, v4, v6

    .line 96
    const/4 v6, 0x1

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userLoginId:Ljava/lang/String;

    aput-object v0, v4, v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 98
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 117
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 118
    :goto_2
    :try_start_5
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    move-object v0, v2

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 120
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 121
    throw v0

    .line 119
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 117
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v3

    goto :goto_2
.end method

.method public getUnreadNum()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 66
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "mRemindDao:\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return v0

    .line 72
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "commentClientId"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "isRead"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 73
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->countOf()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    long-to-int v0, v0

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2\u5230\u672a\u8bfb\u6570\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :catch_0
    move-exception v1

    .line 76
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public loadAllUnreadReminds()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "mRemindDao:\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    :goto_0
    return-object v0

    .line 248
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string/jumbo v2, "createTime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "isRead"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 250
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 251
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 252
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 258
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2\u5230\u672a\u8bfb\u6d88\u606f\u5171\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 254
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 255
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 256
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 257
    throw v0

    .line 255
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 253
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public loadAllUpdateReminds(J)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 263
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "mRemindDao:\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-object v0

    .line 270
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 273
    const-string/jumbo v3, "createTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "isRead"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const-string/jumbo v5, "isdelete"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2, v4, v5, v6}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 274
    const-string/jumbo v2, "createTime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 276
    :try_start_1
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 280
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 282
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2\u5230\u53ef\u80fd\u66f4\u65b0\u7684\u6d88\u606f\u5171\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 278
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 280
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 279
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 280
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 281
    throw v0

    .line 279
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 277
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public loadOlderReminds(JI[I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI[I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RemindDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 347
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "mRemindDao:\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-object v0

    .line 354
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string/jumbo v2, "createTime"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 356
    const-string/jumbo v2, "createTime"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 358
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 359
    :try_start_1
    invoke-static {v2, p3, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a(Lcom/j256/ormlite/dao/CloseableWrappedIterable;I[I)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 365
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u67e5\u8be2\u5230\u672a\u8bfb\u6d88\u606f\u5171\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 361
    :goto_2
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 362
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 363
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 364
    throw v0

    .line 362
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 360
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public saveSyncRemind(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    .line 136
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 183
    :goto_0
    return v0

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_reminddaoop"

    const-string/jumbo v3, " \u65e0\u53ef\u5b58\u50a8\u6570\u636e"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_2
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;

    invoke-direct {v4, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/g;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;Ljava/util/List;)V

    invoke-interface {v3, v4}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 145
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    :goto_1
    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 180
    :catch_0
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    .line 181
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_reminddaoop"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 145
    :catchall_1
    move-exception v0

    goto :goto_1
.end method
