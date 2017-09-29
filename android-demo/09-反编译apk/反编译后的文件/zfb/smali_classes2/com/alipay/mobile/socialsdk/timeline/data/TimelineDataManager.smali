.class public Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;
.super Ljava/lang/Object;
.source "TimelineDataManager.java"


# static fields
.field public static final BUNDLE_KEY_FEDDS:Ljava/lang/String; = "bundle_key_feeds"

.field private static a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;


# instance fields
.field private final b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

.field private d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

.field private f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

.field private g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

.field private h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

.field private i:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

.field private m:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

.field public mCurrentUserId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->k:Ljava/util/HashMap;

    .line 88
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->mCurrentUserId:Ljava/lang/String;

    .line 93
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    .line 94
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->m:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "new TimeLineDataManager"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method private a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 482
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 483
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " \u62c9\u53d6feed\u6761\u6570: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const/4 v1, 0x0

    .line 486
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 502
    :cond_1
    return-object v2

    .line 486
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    .line 487
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v4, :cond_0

    .line 488
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->getContent()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->getContent()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 491
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->getContent()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 497
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;

    .line 494
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    add-int/lit8 v0, v1, 0x1

    .line 496
    if-ge v0, p2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "\u670d\u52a1\u7aefrpc\u8fd4\u56de\u6210\u529f\uff0c\u5237\u65b0\u73b0\u573a\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    const/4 v0, 0x1

    .line 158
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v1, v2

    .line 170
    :goto_1
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;

    .line 171
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/SceneDaoOp;->clearAndStore(Ljava/util/List;)V

    .line 172
    return-object v1

    .line 158
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;

    .line 159
    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;

    invoke-direct {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;-><init>()V

    .line 160
    iget-object v5, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->activityId:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->sceneid:Ljava/lang/String;

    .line 161
    iget-object v5, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->image:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->mediaJson:Ljava/lang/String;

    .line 162
    iget-object v5, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->theme:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->title:Ljava/lang/String;

    .line 163
    iget-object v5, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->text:Ljava/lang/String;

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->desc:Ljava/lang/String;

    .line 164
    iput v1, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->localId:I

    .line 165
    iget-object v0, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->addressName:Ljava/lang/String;

    iput-object v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->addressName:Ljava/lang/String;

    .line 166
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 403
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u8f6c\u6362\u5185\u5b58feeds\u5bf9\u8c61\u7ed3\u675f,\u5f00\u59cb\u5b58\u50a8"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-virtual {v0, v1, p2, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->storePersonalFeedList(Ljava/util/List;Ljava/lang/String;Z)V

    .line 406
    :cond_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->d(Ljava/util/List;)V

    .line 407
    invoke-direct {p0, v1, v4}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Ljava/util/List;Z)V

    .line 408
    return-object v1
.end method

.method private a(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 412
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " \u66f4\u65b0\u4e86\u5168\u91cffeed \uff0c\u6765\u81ea\u4e2a\u4eba\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    if-nez v0, :cond_0

    .line 415
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 416
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 415
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    const-string/jumbo v2, "feeddata_list"

    .line 419
    const-string/jumbo v3, "updateFeedData"

    const-string/jumbo v4, "feedData"

    const/4 v5, 0x3

    move-object v6, p1

    .line 418
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 421
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 312
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 318
    :cond_0
    return-object v1

    .line 313
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;

    .line 314
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    invoke-direct {v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;-><init>(Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;)V

    .line 315
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 365
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 366
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u8f6c\u6362\u5185\u5b58feeds\u5bf9\u8c61\u7ed3\u675f,\u5f00\u59cb\u5b58\u50a8"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->storeHomeFeedList(Ljava/util/List;)V

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_1

    .line 369
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 371
    :cond_1
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->d(Ljava/util/List;)V

    .line 372
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u7ec4\u5408\u7528\u6237\u6570\u636e\u7ed3\u675f"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    return-object v1
.end method

.method private d(Ljava/util/List;)V
    .locals 5
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
    .line 377
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, " list\u4e3a\u7a7a\uff0c\u4e0d\u9700\u8981\u91cd\u65b0load"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, " \u5f00\u59cb\u91cd\u65b0\u52a0\u8f7d from db"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 383
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 384
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 388
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_2

    .line 389
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->loadFeedDataInfoList(Ljava/util/List;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 392
    if-eqz v0, :cond_3

    .line 393
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 394
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 396
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, " \u91cd\u65b0\u52a0\u8f7d\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    .line 385
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v4, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->clientFeedId:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;->feedId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 610
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 611
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u8f6c\u6362\u5185\u5b58feeds\u5bf9\u8c61\u7ed3\u675f,\u5f00\u59cb\u5b58\u50a8"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-object v1

    .line 611
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefInfo;

    .line 612
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;-><init>()V

    .line 613
    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefInfo;->activityId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->activityId:Ljava/lang/String;

    .line 614
    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefInfo;->addressName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->addressName:Ljava/lang/String;

    .line 615
    iget-object v0, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefInfo;->theme:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityDataInfo;->theme:Ljava/lang/String;

    .line 616
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private f(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 663
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 664
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u8f6c\u6362\u5185\u5b58feeds\u5bf9\u8c61\u7ed3\u675f,\u5f00\u59cb\u5b58\u50a8"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-object v1

    .line 664
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;

    .line 665
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;

    invoke-direct {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;-><init>()V

    .line 666
    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->activityId:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->sceneid:Ljava/lang/String;

    .line 667
    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->theme:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->title:Ljava/lang/String;

    .line 668
    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->text:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->desc:Ljava/lang/String;

    .line 669
    iget-object v4, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->addressName:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->addressName:Ljava/lang/String;

    .line 670
    iget-object v0, v0, Lcom/alipay/mcomment/common/service/facade/model/ActivityBriefExtInfo;->image:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Scene;->mediaJson:Ljava/lang/String;

    .line 671
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;
    .locals 2

    .prologue
    .line 67
    const-class v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized refreshInstance(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V
    .locals 4

    .prologue
    .line 71
    const-class v1, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->l:Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->releaseInstance()V

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->m:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->release()V

    .line 74
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    .line 75
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u91cd\u65b0\u751f\u6210TimeLineDataManager"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 78
    :cond_1
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;-><init>(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addPreLoadSceneData(Ljava/lang/String;Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;)V
    .locals 1

    .prologue
    .line 694
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    monitor-exit p0

    return-void

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public convert2FeedDataAndStore2Db(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mcomment/common/service/facade/model/NewsfeedDetailInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 297
    invoke-static {p1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u8f6c\u6362\u5185\u5b58feeds\u5bf9\u8c61\u7ed3\u675f,\u5f00\u59cb\u5b58\u50a8"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_0

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    if-nez v0, :cond_1

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->saveFeeds(Ljava/util/List;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-virtual {v0, v4, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->saveOptionsAndDeleteFeedSOptions(Ljava/util/List;Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u5b58\u50a8feed\uff0coption\u7ed3\u675f"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    if-nez v0, :cond_3

    .line 302
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->h:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 304
    :cond_3
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->d(Ljava/util/List;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u7ec4\u5408\u7528\u6237\u6570\u636e\u7ed3\u675f"

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Ljava/util/List;Z)V

    .line 307
    return-object v2

    .line 299
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->feedInfo:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Feeds;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->replyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->likeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/FeedDataInfo;->rewardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;

    new-instance v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v6, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/RewardInfo;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;

    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/ReplyInfo;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;

    new-instance v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LikeInfo;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v6, " feed \u4e3a\u7a7a,\u54ea\u91cc\u51fa\u9519\u4e86"

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getActivityBriefInfoList(Ljava/lang/String;Ljava/lang/String;DD)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneData;
    .locals 4

    .prologue
    .line 625
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 626
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 627
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 628
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 627
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 629
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 631
    :cond_0
    new-instance v0, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    invoke-direct {v0}, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;-><init>()V

    .line 632
    iput-wide p3, v0, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lat:D

    .line 633
    iput-wide p5, v0, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lon:D

    .line 635
    new-instance v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;

    invoke-direct {v1}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;-><init>()V

    .line 636
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 637
    const-string/jumbo p1, "0"

    .line 639
    :cond_1
    iput-object p1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;->lastActivityId:Ljava/lang/String;

    .line 640
    iput-object v0, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;->locationInfo:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    .line 641
    iput-object p2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;->userId:Ljava/lang/String;

    .line 642
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneData;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneData;-><init>()V

    .line 644
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-interface {v2, v1}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->getActivityBriefInfoList(Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityBriefExtListRespVO;

    move-result-object v1

    .line 645
    if-eqz v1, :cond_3

    .line 646
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityBriefExtListRespVO;->hasmore:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneData;->hasmore:Z

    .line 647
    const-string/jumbo v2, "100"

    iget-object v3, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityBriefExtListRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 648
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityBriefExtListRespVO;->activityList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityBriefExtListRespVO;->activityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 649
    iget-object v1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityBriefExtListRespVO;->activityList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneData;->scene:Ljava/util/List;

    .line 659
    :cond_2
    :goto_0
    return-object v0

    .line 654
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 659
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 656
    :catch_0
    move-exception v0

    .line 657
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public declared-synchronized getCachedLiveData(Ljava/lang/String;)Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;
    .locals 1

    .prologue
    .line 704
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSceneRecord(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;
    .locals 1

    .prologue
    .line 711
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 714
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 711
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public loadActivityListByRpc(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;
    .locals 3

    .prologue
    .line 569
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 570
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 571
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 572
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 573
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 575
    :cond_0
    new-instance v0, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    invoke-direct {v0}, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;-><init>()V

    .line 576
    iput-wide p3, v0, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lat:D

    .line 577
    iput-wide p5, v0, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lon:D

    .line 580
    new-instance v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;

    invoke-direct {v1}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;-><init>()V

    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    const-string/jumbo p1, "0"

    .line 585
    :cond_1
    iput-object p1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;->lastActivityId:Ljava/lang/String;

    .line 586
    iput-object v0, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;->locationInfo:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    .line 587
    iput-object p2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;->userId:Ljava/lang/String;

    .line 590
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-interface {v0, v1}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->getActivityList(Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;

    move-result-object v1

    .line 591
    if-eqz v1, :cond_3

    const-string/jumbo v0, "100"

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 592
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;-><init>()V

    .line 593
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;->hasmore:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;->hasMore:Z

    .line 595
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;->resultStatus:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;->resultStatus:Ljava/lang/String;

    .line 596
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;->activityList:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;->activityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 597
    iget-object v1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/GetActivityListRespVO;->activityList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;->dataList:Ljava/util/List;

    .line 606
    :cond_2
    :goto_0
    return-object v0

    .line 601
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 606
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public loadNewHomeFeedsFromRpc(Ljava/lang/String;DDI)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 120
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 121
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 123
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 125
    :cond_0
    new-instance v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewReqVO;

    invoke-direct {v0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewReqVO;-><init>()V

    .line 126
    iput-object p1, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewReqVO;->curFeedId:Ljava/lang/String;

    .line 127
    new-instance v1, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    invoke-direct {v1}, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;-><init>()V

    .line 128
    iput-wide p4, v1, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lon:D

    .line 129
    iput-wide p2, v1, Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;->lat:D

    .line 130
    iput-object v1, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewReqVO;->locationInfo:Lcom/alipay/mcomment/common/service/facade/model/LocationInfo;

    .line 131
    iput p6, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewReqVO;->pageSize:I

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-interface {v1, v0}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->enterFriendTrendsView(Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;

    move-result-object v1

    .line 134
    if-eqz v1, :cond_2

    const-string/jumbo v0, "100"

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;-><init>()V

    .line 136
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->flush:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->flush:Z

    .line 137
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->newsfeedList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->feedList:Ljava/util/List;

    .line 140
    :cond_1
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->hasMore:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->hasMore:Z

    .line 141
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->hasMoreLive:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->hasMoreScene:Z

    .line 142
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->fromRpc:Z

    .line 143
    iget-object v1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsHomeViewRespVO;->activityList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->sceneList:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_0
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadNewPersonalFeedsFromRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 4

    .prologue
    .line 429
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 430
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 431
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 432
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 433
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 435
    :cond_0
    new-instance v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;

    invoke-direct {v0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;-><init>()V

    .line 436
    iput-object p1, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;->curFeedId:Ljava/lang/String;

    .line 437
    iput p4, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;->pageSize:I

    .line 438
    iput-object p2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;->userId:Ljava/lang/String;

    .line 440
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-interface {v1, v0}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->enterPersonalHomeView(Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_5

    .line 442
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;-><init>()V

    .line 443
    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->personalConfig:Lcom/alipay/mcomment/common/service/facade/model/PersonalConfig;

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->personalConfig:Lcom/alipay/mcomment/common/service/facade/model/PersonalConfig;

    .line 444
    iget-boolean v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->hasMore:Z

    iput-boolean v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->hasMore:Z

    .line 445
    const-string/jumbo v2, "rpc"

    iput-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->from:Ljava/lang/String;

    .line 446
    const-string/jumbo v2, "100"

    iget-object v3, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->newsfeedList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 447
    iget-object v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 448
    iget-boolean v2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->flush:Z

    iput-boolean v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->flush:Z

    .line 449
    iget-object v0, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalHomeViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-direct {p0, v0, p2}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    .line 451
    :cond_1
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->personalConfig:Lcom/alipay/mcomment/common/service/facade/model/PersonalConfig;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->personalConfig:Lcom/alipay/mcomment/common/service/facade/model/PersonalConfig;

    iget-object v0, v0, Lcom/alipay/mcomment/common/service/facade/model/PersonalConfig;->background:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    move-object v0, v1

    .line 459
    :goto_1
    return-object v0

    .line 451
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, "\u5b58\u50a8\u9996\u9875\u76f8\u518c"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    if-nez v0, :cond_4

    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    :cond_4
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;-><init>()V

    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->getBgList()Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;->infoList:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-virtual {v2, p2, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->savePersonalMediaWall(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalMediaWall;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 456
    :catch_1
    move-exception v0

    .line 457
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 459
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 454
    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JIZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " \u8bf7\u6c42\u9996\u9875\u66f4\u591a\u6570\u636e\uff0c\u9700rpc\uff1f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " lastFeedId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    .line 244
    if-eqz p6, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 245
    invoke-virtual {p0, p1, p5}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadOldHomeFeedsFromRpc(Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    .line 248
    :cond_0
    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    if-nez v0, :cond_1

    .line 250
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;

    invoke-virtual {v0, p5, p1, p3, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/HomeFeedsDaoOp;->loadOldHomeFeedList(ILjava/lang/String;J)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_2

    .line 254
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->fromRpc:Z

    .line 257
    :cond_2
    return-object v0
.end method

.method public loadOldHomeFeedsFromRpc(Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 265
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 266
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 267
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 268
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 270
    :cond_0
    new-instance v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsViewReqVO;

    invoke-direct {v0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsViewReqVO;-><init>()V

    .line 271
    iput-object p1, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsViewReqVO;->curFeedId:Ljava/lang/String;

    .line 272
    iput p2, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsViewReqVO;->pageSize:I

    .line 274
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-interface {v1, v0}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->getFriendTrendsView(Lcom/alipay/mcomment/biz/lfc/rpc/vo/TrendsViewReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_2

    const-string/jumbo v0, "100"

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;-><init>()V

    .line 277
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->hasMore:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->hasMore:Z

    .line 278
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->newsfeedList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    iget-object v1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->feedList:Ljava/util/List;

    .line 281
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;->fromRpc:Z

    .line 289
    :goto_0
    return-object v0

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 7

    .prologue
    .line 511
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " \u8bf7\u6c42\u4e2a\u4eba\u4e3b\u9875\u66f4\u591a\u6570\u636e\uff0c\u9700rpc\uff1f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const/4 v0, 0x0

    .line 513
    if-eqz p8, :cond_0

    .line 514
    invoke-virtual/range {p0 .. p6}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadOldPersonalFeedsFromRpc(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    .line 518
    :cond_0
    if-nez v0, :cond_1

    .line 519
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    .line 520
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    move-object v1, p4

    move v2, p6

    move-object v3, p1

    move-wide v4, p2

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadOldPersonalFeedList(Ljava/lang/String;ILjava/lang/String;JZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    .line 523
    :cond_1
    return-object v0
.end method

.method public loadOldPersonalFeedsFromRpc(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    if-nez v0, :cond_0

    .line 533
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 534
    const-class v1, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 535
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 534
    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 536
    const-class v1, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    .line 538
    :cond_0
    new-instance v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;

    invoke-direct {v0}, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;-><init>()V

    .line 539
    iput-object p1, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;->curFeedId:Ljava/lang/String;

    .line 540
    iput p6, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;->pageSize:I

    .line 541
    iput-object p4, v0, Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;->userId:Ljava/lang/String;

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->c:Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;

    invoke-interface {v1, v0}, Lcom/alipay/mcomment/biz/lfc/rpc/LifeCircleService;->getPersonalFeedsView(Lcom/alipay/mcomment/biz/lfc/rpc/vo/PersonalViewReqVO;)Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;

    move-result-object v1

    .line 544
    if-eqz v1, :cond_2

    const-string/jumbo v0, "100"

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->resultStatus:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 545
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;-><init>()V

    .line 546
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->newsfeedList:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 547
    iget-boolean v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->hasMore:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->hasMore:Z

    .line 548
    iget-object v2, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->newsfeedList:Ljava/util/List;

    invoke-direct {p0, v2, p4}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->feedList:Ljava/util/List;

    .line 550
    :cond_1
    iget-object v1, v1, Lcom/alipay/mcomment/biz/lfc/rpc/vo/FeedDetailListViewRespVO;->resultStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->resultStatus:Ljava/lang/String;

    .line 551
    const-string/jumbo v1, "rpc"

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;->from:Ljava/lang/String;

    .line 559
    :goto_0
    return-object v0

    .line 554
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v2, "\u670d\u52a1\u7aef\u8bf7\u6c42\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 559
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    .line 557
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public loadProfileMediaFromLocal(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 463
    const/16 v0, 0xa

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 464
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, " \u672c\u5730\u62c9\u53d6profile\u9875\u6570\u636e"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/PersonalFeedsDaoOp;->loadNewPersonalFeedList(Ljava/lang/String;IZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, " \u672c\u5730\u62c9\u53d6\u7ed3\u675f"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    invoke-direct {p0, v0, p3}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadProfileMediaFromRpc(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/media/timeline/MediaListInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    const/16 v0, 0xa

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 476
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_dm"

    const-string/jumbo v3, " \u5f00\u59cb\u62c9\u53d6\u670d\u52a1\u7aef\u6570\u636e"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadNewPersonalFeedsFromRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    .line 478
    invoke-direct {p0, v0, p3}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public responseTlNotiSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->m:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->responseTlNotiSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 100
    return-void
.end method

.method public responseTlOpSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->m:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->responseTlOpSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 104
    return-void
.end method

.method public responseTlSyncDownMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->m:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->responseTlSyncDownMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V

    .line 108
    return-void
.end method

.method public declared-synchronized saveSceneRecord(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;)V
    .locals 1

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->k:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 722
    new-instance p2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;

    invoke-direct {p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneRecord;-><init>()V

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->k:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPreLoadLiveData(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mcomment/common/service/facade/model/LiveShowDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 683
    monitor-enter p0

    if-nez p1, :cond_0

    .line 684
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 688
    :goto_0
    monitor-exit p0

    return-void

    .line 686
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->j:Ljava/util/HashMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 683
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
