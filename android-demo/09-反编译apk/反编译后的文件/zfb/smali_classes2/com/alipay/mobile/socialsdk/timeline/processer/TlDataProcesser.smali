.class public Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;
.super Ljava/lang/Object;
.source "TlDataProcesser.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private c:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

.field private d:Z

.field private final e:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

.field private final f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private g:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 69
    const-class v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->e:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    .line 70
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, " \u6ce8\u518cresume\u5e7f\u64ad"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;-><init>(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->c:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.alipay.mobile.framework.BROUGHT_TO_FOREGROUND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->c:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 73
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->d:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, "\u6b63\u5728\u62c9\u53d6\u7ea2\u70b9 return"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/timeline/processer/a;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/socialsdk/timeline/processer/a;-><init>(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public notiFriendTabRedChange(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;ZZ)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 328
    if-nez p1, :cond_1

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, " \u4e0b\u53d1\u63d0\u9192\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;-><init>()V

    .line 333
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->refreshTimelineEntry(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V

    .line 334
    iget-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->createTime:J

    .line 335
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 336
    const-class v3, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 337
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "\u7ea2\u70b9\u901a\u77e5 "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "url:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->url:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ; \u6765\u6e90\u662fsync\uff1f"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " ; local time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 339
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "; \u901a\u77e5\u7684time\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->ts:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 338
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    if-eqz p3, :cond_3

    .line 341
    iget-wide v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->ts:J

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 343
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 344
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string/jumbo v2, "rightIcon"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string/jumbo v2, "createTime"

    iget-wide v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->ts:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 347
    const-string/jumbo v2, "rightUnreadStyle"

    sget-object v3, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 349
    const-string/jumbo v2, "rightUnread"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    :goto_1
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateTimelineInfo(Landroid/os/Bundle;)V

    .line 354
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u7ea2\u70b9\u901a\u77e5\u670b\u53cbtab userId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ; \u6765\u6e90\u662fsync\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 351
    :cond_2
    const-string/jumbo v2, "rightUnread"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 359
    :cond_3
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 360
    const-string/jumbo v2, "userId"

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string/jumbo v2, "rightMemo"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->bizMemo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    const-string/jumbo v2, "rightUnreadStyle"

    sget-object v3, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->bizMemo:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 364
    const-string/jumbo v2, "rightUnread"

    invoke-virtual {v1, v2, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 368
    :goto_2
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateTimelineInfo(Landroid/os/Bundle;)V

    .line 369
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 370
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " \u901a\u77e5\u670b\u53cbtab \u8425\u9500memo \u66f4\u65b0 userId = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "bizMemo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->bizMemo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 369
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 366
    :cond_4
    const-string/jumbo v2, "rightUnread"

    invoke-virtual {v1, v2, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public release()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, " \u53cd\u6ce8\u518cresume\u5e7f\u64ad"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->c:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->c:Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser$OnWalletBack2ForegroundReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    :cond_0
    return-void
.end method

.method public responseTlNotiSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 12

    .prologue
    const/4 v9, 0x1

    .line 301
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, "TlDataManager:responseNotiSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_0
    return-void

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "receive tl noti sync:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 309
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    .line 310
    const-wide/16 v2, 0x0

    .line 311
    const/4 v1, 0x0

    .line 312
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-lt v4, v6, :cond_2

    .line 321
    invoke-virtual {p0, v1, v9, v9}, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->notiFriendTabRedChange(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;ZZ)V

    .line 322
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->e:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TlDataManager:responseSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 323
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_2
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 314
    const-string/jumbo v7, "pl"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    const-class v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;

    invoke-static {v0, v7}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;

    .line 316
    iget-wide v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->ts:J

    cmp-long v7, v7, v2

    if-ltz v7, :cond_3

    .line 318
    iget-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlRecommendModel;->ts:J

    .line 312
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-wide v10, v1

    move-wide v2, v10

    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    move-wide v10, v2

    move-wide v1, v10

    goto :goto_2
.end method

.method public responseTlOpSyncMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 375
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, "TlDataManager:responseSyncMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "receive sync:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    .line 385
    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v5

    .line 386
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 387
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v2

    .line 388
    :goto_1
    if-lt v3, v5, :cond_4

    .line 480
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;

    .line 481
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    if-nez v1, :cond_2

    .line 482
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    iput-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    .line 485
    :cond_2
    invoke-virtual {v0, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->saveSyncRemind(Ljava/util/List;)Z

    .line 486
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-virtual {v1, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->saveSyncOptions(Ljava/util/List;)Z

    .line 487
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 488
    const-string/jumbo v4, "\u6279\u91cf\u5b58\u50a8\u6570\u636e\u7ed3\u675f"

    .line 487
    invoke-interface {v1, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    new-instance v3, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;

    invoke-direct {v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;-><init>()V

    .line 493
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->refreshTimelineEntry(Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;)V

    .line 494
    iget-object v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightIcon:Ljava/lang/String;

    .line 495
    iget-object v5, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->rightMemo:Ljava/lang/String;

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/RemindDaoOp;->getUnreadModel(Z)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;

    move-result-object v6

    .line 499
    if-eqz v6, :cond_e

    .line 501
    iget v0, v6, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/UnreadModel;->unreadNum:I

    move v1, v0

    .line 504
    :goto_2
    iget-wide v2, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/TimelineEntryInfo;->createTime:J

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "userId"

    iget-object v8, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "leftUnread"

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v0, "rightIcon"

    invoke-virtual {v7, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "rightMemo"

    invoke-virtual {v7, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "createTime"

    invoke-virtual {v7, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v0, "rightUnreadStyle"

    sget-object v2, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_3
    const-string/jumbo v0, "rightUnread"

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_3
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

    invoke-virtual {v0, v7}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->updateTimelineInfo(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "\u901a\u77e5\u670b\u53cbtab \u6765\u6e90:2 userId = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " unread:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " url:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; right memo:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->f:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "timelinedb"

    .line 507
    const-string/jumbo v2, "remind"

    const-string/jumbo v3, "isRead"

    const-string/jumbo v4, "isRead"

    const/4 v5, 0x3

    .line 506
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :goto_4
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->e:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TlDataManager:responseSyncMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 514
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 389
    :cond_4
    :try_start_1
    invoke-virtual {v4, v3}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;

    .line 392
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->tp:Ljava/lang/String;

    const-string/jumbo v8, "FEED"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 393
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->op:Ljava/lang/String;

    const-string/jumbo v8, "D"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 395
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->cid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->deleteAllFeedById(Ljava/lang/String;)V

    .line 388
    :cond_5
    :goto_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_1

    .line 399
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v8, " \u6536\u5230\u589e\u52a0\u52a8\u6001\u63a8\u9001\uff0c\u51fa\u9519"

    invoke-interface {v0, v1, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 509
    :catch_0
    move-exception v0

    .line 510
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 403
    :cond_7
    :try_start_2
    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;

    invoke-direct {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;-><init>()V

    .line 404
    new-instance v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;

    invoke-direct {v8}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;-><init>()V

    .line 405
    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->op:Ljava/lang/String;

    const-string/jumbo v10, "D"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 406
    iget-object v9, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v10, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v11, " \u5220\u9664\u64cd\u4f5c"

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->isAdd:Z

    .line 408
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->isAdd:Z

    .line 416
    :goto_6
    new-instance v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    invoke-direct {v9}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>()V

    iput-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    .line 417
    new-instance v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    invoke-direct {v9}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;-><init>()V

    iput-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    .line 418
    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->tp:Ljava/lang/String;

    const-string/jumbo v10, "COMM"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 419
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    const/4 v10, 0x1

    iput v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 420
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    const/4 v10, 0x1

    iput v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->bizType:I

    .line 439
    :goto_7
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->uid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    .line 440
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->uid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userId:Ljava/lang/String;

    .line 442
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->lid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    .line 443
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->lid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->userLoginId:Ljava/lang/String;

    .line 445
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->oid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 446
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->oid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->commentSvrId:Ljava/lang/String;

    .line 448
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->cid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 449
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->cid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->commentClientId:Ljava/lang/String;

    .line 451
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->con:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->content:Ljava/lang/String;

    .line 452
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->con:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->content:Ljava/lang/String;

    .line 454
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-wide v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->ts:J

    iput-wide v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    .line 455
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-wide v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->ts:J

    iput-wide v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->lastModifyTime:J

    .line 457
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-wide v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->ct:J

    iput-wide v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    .line 458
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-wide v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->ct:J

    iput-wide v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->createTime:J

    .line 460
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->prid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toOptionId:Ljava/lang/String;

    .line 461
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->prid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toOptionId:Ljava/lang/String;

    .line 463
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->pruid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserId:Ljava/lang/String;

    .line 464
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->pruid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserId:Ljava/lang/String;

    .line 466
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->prlid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->toUserLoginId:Ljava/lang/String;

    .line 467
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->prlid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->toUserLoginId:Ljava/lang/String;

    .line 469
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->sid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    .line 470
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->sid:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->feedId:Ljava/lang/String;

    .line 472
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->res:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->mediaContent:Ljava/lang/String;

    .line 473
    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->sce:Ljava/lang/String;

    const-string/jumbo v10, "LOCALE"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->tp:Ljava/lang/String;

    const-string/jumbo v9, "REWARD"

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 475
    :cond_8
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    :cond_9
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 409
    :cond_a
    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->op:Ljava/lang/String;

    const-string/jumbo v10, "A"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 410
    iget-object v9, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v10, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v11, " \u589e\u52a0\u64cd\u4f5c"

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/4 v9, 0x1

    iput-boolean v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->isAdd:Z

    .line 412
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->isAdd:Z

    goto/16 :goto_6

    .line 421
    :cond_b
    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->tp:Ljava/lang/String;

    const-string/jumbo v10, "PRAISE"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 422
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    const/4 v10, 0x2

    iput v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 423
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    const/4 v10, 0x2

    iput v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->bizType:I

    goto/16 :goto_7

    .line 424
    :cond_c
    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->tp:Ljava/lang/String;

    const-string/jumbo v10, "REWARD"

    invoke-static {v9, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 425
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    const/4 v10, 0x3

    iput v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->bizType:I

    .line 426
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    const/4 v10, 0x3

    iput v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->bizType:I

    .line 428
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->mo:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->amount:Ljava/lang/String;

    .line 429
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->mo:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->rewardAmount:Ljava/lang/String;

    .line 432
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->ln:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->sceneTopic:Ljava/lang/String;

    .line 434
    iget-object v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncOption;->option:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->sce:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->fromType:Ljava/lang/String;

    .line 435
    iget-object v9, v8, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/SyncRemind;->remind:Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;

    iget-object v10, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlOpSyncModel;->sce:Ljava/lang/String;

    iput-object v10, v9, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Remind;->fromType:Ljava/lang/String;

    goto/16 :goto_7

    .line 504
    :cond_d
    const-string/jumbo v0, "rightUnread"

    const/4 v2, 0x0

    invoke-virtual {v7, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_e
    move v1, v2

    goto/16 :goto_2
.end method

.method public responseTlSyncDownMessage(Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;)V
    .locals 13

    .prologue
    .line 172
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, "TlDataManager:responseTlSyncDownMessage:\u63a5\u6536sync\u6d88\u606f\u9519\u8bef"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "user:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " receive \u4e0a\u884c\u5bf9\u5e94\u7684\u4e0b\u884c sync:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->msgData:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 180
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 181
    const/4 v0, 0x0

    move v4, v0

    :goto_1
    if-lt v4, v6, :cond_2

    .line 295
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->e:Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/longlinkservice/LongLinkSyncService;->reportMsgReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "TlDataManager:responseTlSyncDownMessage:\u62a5\u544async\u6536\u5230"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->biz:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncMessage;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 296
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    :try_start_1
    invoke-virtual {v5, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 183
    const-string/jumbo v1, "pl"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;

    .line 185
    const-string/jumbo v1, "FEED"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->tp:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 186
    const-string/jumbo v1, "D"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->op:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    const-string/jumbo v1, "100"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->code:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 188
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;

    .line 189
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->cid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/FeedsDaoOp;->deleteFeed(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, " \u5220\u9664feed\u7684sync\u4e0b\u884c\uff0c\u5220\u9664\u6210\u529f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_3
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 195
    :cond_4
    const-string/jumbo v1, "PRAISE"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->tp:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 197
    const/4 v1, 0x0

    move v3, v1

    .line 203
    :goto_4
    const-string/jumbo v1, "A"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->op:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 205
    const/4 v1, 0x1

    move v2, v1

    .line 211
    :goto_5
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;

    .line 212
    if-nez v3, :cond_a

    const-string/jumbo v7, "905"

    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->code:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 213
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->sid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->uid:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 214
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->uid:Ljava/lang/String;

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 215
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " \u91cd\u590d\u70b9\u8d5e\u4f46\u662f\u670d\u52a1\u7aef\u6ca1\u6709\u4e0b\u53d1fid == "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->sid:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " uid:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->uid:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 292
    :catch_0
    move-exception v0

    .line 293
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 198
    :cond_6
    :try_start_2
    const-string/jumbo v1, "COMM"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->tp:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    const/4 v1, 0x1

    move v3, v1

    goto :goto_4

    .line 206
    :cond_7
    const-string/jumbo v1, "D"

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->op:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    const/4 v1, 0x0

    move v2, v1

    goto :goto_5

    .line 219
    :cond_8
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->sid:Ljava/lang/String;

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->findLikeByFeedIdAndUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    move-result-object v2

    .line 220
    if-eqz v2, :cond_9

    .line 222
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v7, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v8, " \u67e5\u8be2\u5230\u4e86\u4e4b\u524d\u7684\u8d5e\u6570\u636e"

    invoke-interface {v3, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->deleteOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V

    .line 224
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v7, " \u5220\u9664\u4e86\u4e4b\u524d\u7684\u8d5e"

    invoke-interface {v2, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_6
    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;-><init>(I)V

    .line 229
    iget-wide v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ct:J

    iput-wide v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    .line 230
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->sid:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->feedId:Ljava/lang/String;

    .line 231
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->cid:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->clientOptionId:Ljava/lang/String;

    .line 232
    iget-wide v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ts:J

    iput-wide v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    .line 233
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->uid:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userId:Ljava/lang/String;

    .line 234
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->lid:Ljava/lang/String;

    iput-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->userLoginId:Ljava/lang/String;

    .line 235
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->oid:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 236
    const/4 v0, 0x0

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 238
    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->saveSingleOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V

    .line 239
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, " \u63d2\u5165\u7528\u6237\u8d5e\u6570\u636e"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 226
    :cond_9
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v7, " \u5ba2\u6237\u7aef\u65e0\u6b64\u7528\u6237\u70b9\u8d5e\u6570\u636e"

    invoke-interface {v2, v3, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 242
    :cond_a
    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->cid:Ljava/lang/String;

    invoke-virtual {v1, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->getOptionsById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;

    move-result-object v7

    .line 243
    if-nez v7, :cond_b

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v7, " sync \u4e0b\u884c\u64cd\u4f5c\u5bf9\u5e94\u7684\u672c\u5730\u6570\u636e\u4e3a\u7a7a:"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->cid:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, " \u64cd\u4f5c\u7c7b\u578b = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->op:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 247
    :cond_b
    iget-object v8, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v9, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, " \u672c\u5730\u6570\u636e\u65f6\u95f4\u6233\uff1a"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v11, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " server time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ts:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 248
    const-string/jumbo v11, "server create time:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ct:J

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 247
    invoke-interface {v8, v9, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-wide v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ts:J

    iget-wide v10, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_c

    .line 250
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->cid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, " sync\u4e0b\u884c\u64cd\u4f5c\u5df2\u8fc7\u671f\uff0c\u4e0d\u5904\u7406"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 253
    :cond_c
    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->code:Ljava/lang/String;

    .line 254
    if-eqz v2, :cond_11

    .line 255
    iget-wide v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ts:J

    iput-wide v9, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->lastModifyTime:J

    .line 256
    iget-wide v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ct:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    if-lez v2, :cond_d

    .line 257
    iget-wide v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->ct:J

    iput-wide v9, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->createTime:J

    .line 259
    :cond_d
    const-string/jumbo v2, "100"

    iget-object v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->code:Ljava/lang/String;

    invoke-static {v2, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 260
    iget-object v2, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 262
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v8, " \u6dfb\u52a0\u6210\u529f\u4e86\uff0c\u66f4\u65b0\u72b6\u6001\u548coption id"

    invoke-interface {v2, v3, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v2, 0x0

    iput v2, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 264
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->oid:Ljava/lang/String;

    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 265
    const/4 v0, 0x1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->updateOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V

    goto/16 :goto_3

    .line 267
    :cond_e
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v2, " \u5df2\u7ecf\u53d1\u9001\u6210\u529f\u4e86\uff0c\u672c\u5730\u5df2\u7ecf\u66f4\u65b0\u8fc7\u4e86\uff0c\u4e0d\u9700\u8981\u989d\u5916\u66f4\u65b0\u4e86"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 270
    :cond_f
    if-eqz v3, :cond_10

    .line 271
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->oid:Ljava/lang/String;

    iput-object v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->optionId:Ljava/lang/String;

    .line 272
    const/4 v0, 0x2

    iput v0, v7, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;->state:I

    .line 273
    const/4 v0, 0x1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->updateOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " \u589e\u52a0\u8bc4\u8bba\u64cd\u4f5c\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u66f4\u65b0\u72b6\u6001"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 276
    :cond_10
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " \u589e\u52a0\u8d5e\u64cd\u4f5c\u5931\u8d25\uff1a"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "\u5148\u5220\u9664\u6389\u8d5e"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->deleteOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V

    goto/16 :goto_3

    .line 282
    :cond_11
    const-string/jumbo v2, "100"

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/TlSyncDownModel;->code:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 283
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    const-string/jumbo v3, " \u5220\u9664\u64cd\u4f5c\u672c\u5730\u6709\u8d5e\u6570\u636e\uff0c\u8bf4\u660e\u5e94\u8be5\u6709\u62c9\u53bb\u4e0b\u6765\u8fc7"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const/4 v0, 0x1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->deleteOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V

    goto/16 :goto_3

    .line 286
    :cond_12
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/timeline/processer/TlDataProcesser;->b:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk_timeline_tldataprosser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v9, " \u5220\u9664\u64cd\u4f5c\u5931\u8d25\uff0c\u672c\u5730\u6709\u6570\u636e"

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v8, "\u5148\u5220\u9664\u6389"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {v1, v7, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/timeline/OptionsDaoOp;->deleteOption(Lcom/alipay/mobile/socialsdk/bizdata/model/timeline/Options;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3
.end method
