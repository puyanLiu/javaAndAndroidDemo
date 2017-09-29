.class public Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;
.super Ljava/lang/Object;
.source "PersonalFeedsDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

.field private e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

.field private final f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    const-string/jumbo v2, "personal_feeds"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 43
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 44
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 43
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteFeed(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u672a\u4f20\u5165\u5fc5\u8981\u7684\u53c2\u6570"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " deleteFeed from personalFeed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 235
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "personal_feeds"

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x2

    move-object v3, p1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deletePersonalFeeds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, "deleteFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 255
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteIds(Ljava/util/Collection;)I

    .line 255
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

    .line 258
    :catch_0
    move-exception v0

    .line 259
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadNewPersonalFeedList(Ljava/lang/String;IZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadNewPersonalFeedList(Ljava/lang/String;IZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadNewPersonalFeedList(Ljava/lang/String;IZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 7

    .prologue
    .line 354
    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadPersonalFeedList(Ljava/lang/String;IZJZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadNewPersonalFeedListNoOptions(Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 2

    .prologue
    .line 362
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadPersonalFeedListNoOptions(Ljava/lang/String;IJ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldPersonalFeedList(Ljava/lang/String;ILjava/lang/String;JZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 8

    .prologue
    .line 266
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadOldPersonalFeedList(Ljava/lang/String;ILjava/lang/String;JZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldPersonalFeedList(Ljava/lang/String;ILjava/lang/String;JZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 7

    .prologue
    .line 271
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p6

    move-wide v4, p4

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadPersonalFeedList(Ljava/lang/String;IZJZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadPersonalFeedList(Ljava/lang/String;IZJZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 8

    .prologue
    .line 307
    const/4 v6, 0x0

    .line 309
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [I

    move-object v0, p0

    move v1, p2

    move-wide v3, p4

    move-object v5, p1

    .line 310
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->queryPersonalClientFeedListByCreateTime(I[IJLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 313
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 314
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v4, "\u8bfb\u53d6\u4e2a\u4eba\u4e3b\u9875feedlist index \u6210\u529f"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :try_start_1
    const-string/jumbo v0, "local"

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->from:Ljava/lang/String;

    .line 317
    const/4 v0, 0x0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->hasMore:Z

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_0

    .line 319
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 321
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 322
    const/4 v0, 0x0

    .line 323
    if-eqz p6, :cond_4

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 326
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 333
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-virtual {v0, v4, v2, p3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadFeedDataInfoList(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    move-object v0, v1

    .line 339
    :goto_3
    return-object v0

    .line 317
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 326
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    .line 328
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->clientFeedId:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    if-eqz p6, :cond_1

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->feedId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 330
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->feedId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 336
    :catch_0
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 337
    :goto_4
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 336
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :cond_4
    move-object v2, v0

    goto :goto_1

    :cond_5
    move-object v0, v6

    goto :goto_3
.end method

.method public loadPersonalFeedListNoOptions(Ljava/lang/String;IJ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 276
    const/4 v6, 0x0

    .line 278
    const/4 v0, 0x1

    :try_start_0
    new-array v2, v0, [I

    move-object v0, p0

    move v1, p2

    move-wide v3, p3

    move-object v5, p1

    .line 279
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->queryPersonalClientFeedListByCreateTime(I[IJLjava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 282
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v4, "\u8bfb\u53d6\u4e2a\u4eba\u4e3b\u9875feedlist index \u6210\u529f"

    invoke-interface {v0, v1, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    const-string/jumbo v0, "local"

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->from:Ljava/lang/String;

    .line 286
    const/4 v0, 0x0

    aget v0, v2, v0

    if-ne v0, v7, :cond_1

    move v0, v7

    :goto_0
    iput-boolean v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->hasMore:Z

    .line 287
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_0

    .line 288
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 290
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 291
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 295
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadFeedDataInfoListNoOptions(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    move-object v0, v1

    .line 300
    :goto_2
    return-object v0

    :cond_1
    move v0, v8

    .line 286
    goto :goto_0

    .line 291
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    .line 293
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->clientFeedId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 297
    :catch_0
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 298
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 297
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v6

    goto :goto_3

    :cond_3
    move-object v0, v6

    goto :goto_2
.end method

.method public queryPersonalClientFeedListByCreateTime(I[IJLjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[IJ",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 58
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :goto_0
    return-object v0

    .line 62
    :cond_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v3, " \u67e5\u8be2\u672a\u77e5\u4eba\u6570\u636e"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_1
    if-eqz p2, :cond_2

    .line 67
    aput v3, p2, v3

    .line 70
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "clientFeedId"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "feedId"

    aput-object v6, v4, v5

    invoke-virtual {v2, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 75
    const-string/jumbo v4, "createTime"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v4, "createTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v4, "userid"

    invoke-virtual {v2, v4, p5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    .line 77
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 78
    :try_start_1
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 90
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :goto_3
    move-object v0, v1

    .line 92
    goto :goto_0

    .line 78
    :cond_3
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    .line 79
    if-ge v3, p1, :cond_4

    .line 80
    add-int/lit8 v3, v3, 0x1

    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 87
    :catch_0
    move-exception v0

    .line 88
    :goto_4
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_PersonalBase"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_3

    .line 83
    :cond_4
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_4
    aput v3, p2, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 89
    :catchall_0
    move-exception v0

    .line 90
    :goto_5
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 91
    throw v0

    .line 89
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    .line 87
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_4
.end method

.method public savePersonalFeeds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_0
    return-void

    .line 166
    :cond_0
    if-nez p1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u4e66\u5c40"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/f;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/f;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 171
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

    .line 182
    :catch_0
    move-exception v0

    .line 183
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 7

    .prologue
    .line 188
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_0
    return-void

    .line 192
    :cond_0
    if-nez p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u4e66\u5c40"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 197
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "personal_feeds"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->clientFeedId:Ljava/lang/String;

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public storePersonalFeedList(Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 100
    if-nez p1, :cond_1

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u5b58\u50a8\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, " \u62c6\u5206\u5b8c\u6210,\u662f\u5426\u5168\u91cf\u66f4\u65b0\uff1a"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 145
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_3

    .line 146
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->saveFeeds(Ljava/util/List;)V

    .line 150
    :cond_4
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->savePersonalFeeds(Ljava/util/List;)V

    .line 152
    if-eqz p3, :cond_0

    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    if-nez v0, :cond_5

    .line 154
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    .line 156
    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-virtual {v0, v4, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->saveOptionsAndDeleteFeedSOptions(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 107
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    .line 108
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v0, :cond_b

    .line 110
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;-><init>()V

    .line 112
    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    iput-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->clientFeedId:Ljava/lang/String;

    .line 113
    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    iput-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->feedId:Ljava/lang/String;

    .line 114
    iput-object p2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->userid:Ljava/lang/String;

    .line 115
    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    iput-wide v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->createTime:J

    .line 117
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    if-eqz p3, :cond_2

    .line 119
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 122
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 127
    :cond_7
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 128
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 133
    :cond_8
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;

    .line 135
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;)V

    .line 136
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 122
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;

    .line 123
    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;)V

    .line 124
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 128
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;

    .line 129
    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;)V

    .line 130
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 140
    :cond_b
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v6, " feed \u4e3a\u7a7a,\u54ea\u91cc\u51fa\u9519\u4e86"

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateSinglePersonalFeed(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 7

    .prologue
    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 211
    :cond_0
    if-nez p1, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_PersonalBase_timeline_plop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u4e66\u5c40"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 216
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 219
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "personal_feeds"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeeds;->clientFeedId:Ljava/lang/String;

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_PersonalBase_timeline_plop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
