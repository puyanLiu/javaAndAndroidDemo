.class public Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;
.super Ljava/lang/Object;
.source "HomeFeedsDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;",
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

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 39
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    .line 40
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    const-string/jumbo v2, "home_feeds"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

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
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 45
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

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
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u672a\u4f20\u5165\u5fc5\u8981\u7684\u53c2\u6570"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " deleteFeed from homeFeed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 189
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "home_feeds"

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x2

    move-object v3, p1

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public deleteHomeFeeds(Ljava/util/List;)V
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
    .line 202
    if-nez p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, "deleteFeed:\u6570\u636e\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_0
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteIds(Ljava/util/Collection;)I

    .line 211
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

    .line 214
    :catch_0
    move-exception v0

    .line 215
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public loadHomeFeedList(IZJ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 239
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;-><init>()V

    .line 241
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [I

    .line 242
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->queryHomeFeedListByCreateTime(I[IJ)Ljava/util/List;

    move-result-object v4

    .line 243
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 244
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v6, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v7, "\u8bfb\u53d6\u9996\u9875feedlist index \u6210\u529f"

    invoke-interface {v5, v6, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v5, 0x0

    aget v3, v3, v5

    if-ne v3, v0, :cond_3

    :goto_0
    iput-boolean v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->hasMore:Z

    .line 246
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_0

    .line 247
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 249
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 250
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 257
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-virtual {v0, v1, v3, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadFeedDataInfoList(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->feedList:Ljava/util/List;

    .line 262
    :cond_2
    :goto_2
    return-object v2

    :cond_3
    move v0, v1

    .line 245
    goto :goto_0

    .line 251
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    .line 252
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->clientFeedId:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->feedId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 254
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->feedId:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 259
    :catch_0
    move-exception v0

    .line 260
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_homeop"

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public loadNewHomeFeedList(I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->loadNewHomeFeedList(IZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadNewHomeFeedList(IZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 2

    .prologue
    .line 225
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->loadHomeFeedList(IZJ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldHomeFeedList(ILjava/lang/String;J)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 6

    .prologue
    .line 229
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->loadOldHomeFeedList(ILjava/lang/String;JZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldHomeFeedList(ILjava/lang/String;JZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 1

    .prologue
    .line 233
    invoke-virtual {p0, p1, p5, p3, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->loadHomeFeedList(IZJ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public queryHomeFeedListByCreateTime(I[IJ)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[IJ)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v3, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-object v0

    .line 275
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 278
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

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

    .line 280
    const-string/jumbo v4, "createTime"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v4, "createTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->lt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v2

    .line 282
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v2}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 283
    :try_start_1
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 297
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :goto_3
    move-object v0, v1

    .line 299
    goto :goto_0

    .line 283
    :cond_2
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    .line 284
    if-ge v3, p1, :cond_3

    .line 285
    add-int/lit8 v3, v3, 0x1

    .line 286
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    .line 295
    :goto_4
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 297
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_3

    .line 288
    :cond_3
    if-eqz p2, :cond_1

    .line 289
    const/4 v0, 0x0

    const/4 v3, 0x1

    :try_start_4
    aput v3, p2, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    :goto_5
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 298
    throw v0

    .line 296
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_5

    .line 294
    :catch_1
    move-exception v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_4
.end method

.method public saveHomeFeeds(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 116
    :cond_0
    if-nez p1, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/b;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/b;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 121
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

    .line 132
    :catch_0
    move-exception v0

    .line 133
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveSingleHomeFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 7

    .prologue
    .line 138
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 142
    :cond_0
    if-nez p1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u4e66\u5c40"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 147
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "home_feeds"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->clientFeedId:Ljava/lang/String;

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public storeHomeFeedList(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u5b58\u50a8\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void

    .line 61
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v5, " \u62c6\u5206\u5b8c\u6210"

    invoke-interface {v0, v1, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_2

    .line 100
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->saveFeeds(Ljava/util/List;)V

    .line 104
    :cond_3
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->saveHomeFeeds(Ljava/util/List;)V

    .line 105
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    if-nez v0, :cond_4

    .line 106
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    .line 108
    :cond_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-virtual {v0, v4, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->saveOptionsAndDeleteFeedSOptions(Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 64
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    .line 65
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v0, :cond_a

    .line 67
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;-><init>()V

    .line 69
    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    iput-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->clientFeedId:Ljava/lang/String;

    .line 70
    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    iput-object v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->feedId:Ljava/lang/String;

    .line 71
    iget-object v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-wide v6, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->createTime:J

    iput-wide v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->createTime:J

    .line 73
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 81
    :cond_6
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 82
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_9

    .line 87
    :cond_7
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;

    .line 89
    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;)V

    .line 90
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 76
    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;

    .line 77
    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;)V

    .line 78
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 82
    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;

    .line 83
    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;)V

    .line 84
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 94
    :cond_a
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v6, " feed \u4e3a\u7a7a,\u54ea\u91cc\u51fa\u9519\u4e86"

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateSingleHomeFeeds(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;)V
    .locals 7

    .prologue
    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u6570\u636e\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    return-void

    .line 164
    :cond_0
    if-nez p1, :cond_1

    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_homeop"

    const-string/jumbo v2, " \u65e0\u53ef\u5b58\u50a8\u4e66\u5c40"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 169
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "home_feeds"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeeds;->clientFeedId:Ljava/lang/String;

    const-string/jumbo v4, "clientFeedId"

    const/4 v5, 0x3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->c:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_homeop"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method
