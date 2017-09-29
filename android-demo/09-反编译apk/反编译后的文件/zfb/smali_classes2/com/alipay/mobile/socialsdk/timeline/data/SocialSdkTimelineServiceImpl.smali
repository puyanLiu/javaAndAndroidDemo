.class public Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;
.super Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;
.source "SocialSdkTimelineServiceImpl.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private static b:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;

.field private static c:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;

.field private static d:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;

.field private static e:Z

.field private static final f:Ljava/lang/Object;


# instance fields
.field private final g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 26
    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->b:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;

    .line 27
    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->c:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;

    .line 28
    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->d:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->e:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->f:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/service/SocialSdkTimeLineService;-><init>()V

    .line 33
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 21
    return-void
.end method

.method private static declared-synchronized a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    .locals 3

    .prologue
    .line 36
    const-class v1, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 38
    const-class v2, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 37
    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 40
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 3

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "initTimeLineModuleForLoggin:start"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "initTimeLineModuleForLoggin:syncService\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 79
    if-nez v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "initTimeLineModuleForLoggin:\u672a\u767b\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->refreshInstance(Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;)V

    .line 84
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "initTimeLineModuleForLoggin:\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->c()V

    .line 91
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->e:Z

    .line 92
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/data/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/timeline/data/a;-><init>(Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 102
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a()Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "registerSyncCallback:syncService\u521d\u59cb\u5316\u5931\u8d25"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "registerSyncCallback:\u6ce8\u518c\u751f\u6d3b\u63d0\u9192sync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-LCN"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->b:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;

    if-nez v0, :cond_1

    .line 109
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->b:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;

    .line 111
    :cond_1
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-LCN"

    sget-object v2, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->b:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncNotiCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 113
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "registerSyncCallback:\u6ce8\u518c\u751f\u6d3b\u5708\u64cd\u4f5csync"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-LCM"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 115
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->c:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;

    if-nez v0, :cond_2

    .line 116
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->c:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;

    .line 118
    :cond_2
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-LCM"

    sget-object v2, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->c:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncOpCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "registerSyncCallback:\u6ce8\u518c\u751f\u6d3b\u5708sync\u4e0a\u884c\u7684\u5bf9\u5e94\u901a\u77e5"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-LCO"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBiz(Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->d:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;

    if-nez v0, :cond_3

    .line 123
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;-><init>()V

    sput-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->d:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;

    .line 125
    :cond_3
    sget-object v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->a:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    const-string/jumbo v1, "UCHAT-LCO"

    sget-object v2, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->d:Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataSyncDownCallback;

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->registerBizCallback(Ljava/lang/String;Lcom/alipay/mobile/rome/longlinkservice/ISyncCallback;)V

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline"

    const-string/jumbo v2, "registerSyncCallback:\u6ce8\u518c\u751f\u6d3b\u5708sync\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getActivityBriefInfoList(Ljava/lang/String;Ljava/lang/String;DD)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 209
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getActivityBriefInfoList(Ljava/lang/String;Ljava/lang/String;DD)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SceneData;

    move-result-object v0

    return-object v0
.end method

.method public loadActivityListFromRpc(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Ljava/lang/Object;
    .locals 8

    .prologue
    .line 201
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadActivityListByRpc(Ljava/lang/String;Ljava/lang/String;DDLjava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/LbsActivityData;

    move-result-object v0

    return-object v0
.end method

.method public loadNewHomeFeedsFromRpc(Ljava/lang/String;DDI)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 144
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadNewHomeFeedsFromRpc(Ljava/lang/String;DDI)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadNewPersonalFeedsFromRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 171
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadNewPersonalFeedsFromRpc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JI)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 152
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    .line 153
    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    .line 152
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JIZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JIZ)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 162
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadOldHomeFeeds(Ljava/lang/String;Ljava/lang/String;JIZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/HomeFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 180
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    .line 181
    const/4 v8, 0x1

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    .line 180
    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZ)Ljava/lang/Object;
    .locals 9

    .prologue
    .line 190
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadOldPersonalFeeds(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;IZZ)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/PersonalFeedData;

    move-result-object v0

    return-object v0
.end method

.method public loadProfileMediaFromLocal(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadProfileMediaFromLocal(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadProfileMediaFromRpc(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->loadProfileMediaFromRpc(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadTimeLineModule()V
    .locals 4

    .prologue
    .line 45
    sget-object v1, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline"

    const-string/jumbo v3, "loadTimeLineModule:start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    sget-boolean v0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->e:Z

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline"

    const-string/jumbo v3, "loadTimeLineModule:\u672a\u767b\u5f55"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    monitor-exit v1

    .line 57
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->getInstance()Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;

    move-result-object v2

    .line 54
    if-eqz v2, :cond_1

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/timeline/data/TimelineDataManager;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline"

    const-string/jumbo v3, "loadTimeLineModule:\u5df2\u7ecf\u521d\u59cb\u5316"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->c()V

    .line 57
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 60
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->b()V

    .line 45
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public refreshTimeLIneModule()V
    .locals 4

    .prologue
    .line 66
    sget-object v1, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline"

    const-string/jumbo v3, "refreshTimeLineModule:start"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/timeline/data/SocialSdkTimelineServiceImpl;->b()V

    .line 66
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
