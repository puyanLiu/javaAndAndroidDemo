.class public Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;
.super Ljava/lang/Object;
.source "RecentSessionDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final d:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

.field private final e:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

.field private final f:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

.field private final g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

.field private final h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

.field private i:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

.field private final j:Landroid/content/Context;

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->l:Ljava/util/HashMap;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->m:Ljava/util/HashMap;

    .line 56
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 57
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    const-string/jumbo v2, "recent_session"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    .line 62
    :cond_0
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 63
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    .line 64
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 66
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 67
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    .line 68
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->j:Landroid/content/Context;

    .line 69
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "RecentSessionDaoOp\u521b\u5efa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 597
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 598
    const/4 v1, 0x0

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 602
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 603
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 611
    :goto_1
    return-object v2

    .line 603
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 604
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 606
    :catch_0
    move-exception v0

    .line 607
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 609
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 608
    :catchall_0
    move-exception v0

    .line 609
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 610
    throw v0
.end method

.method private a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 2

    .prologue
    .line 520
    const/4 v0, -0x1

    iput v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 521
    const-string/jumbo v0, "2"

    iput-object v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 523
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->j:Landroid/content/Context;

    sget v1, Lcom/alipay/mobile/socialsdk/R$string;->stranger_entry:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 524
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 525
    iget-wide v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    iput-wide v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    .line 526
    iget-wide v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 527
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizType:Ljava/lang/String;

    iput-object v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizType:Ljava/lang/String;

    .line 528
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    if-nez v0, :cond_1

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 535
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isStranger:Z

    .line 536
    iget v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    iput v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    .line 537
    return-void

    .line 532
    :cond_1
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    iput-object v0, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    goto :goto_0
.end method

.method private static a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Z)V
    .locals 4

    .prologue
    .line 492
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 493
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draft:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draftTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 494
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draftTime:J

    .line 496
    :cond_1
    iget-boolean v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_2

    .line 497
    iget-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    .line 499
    :cond_2
    iput-wide v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 500
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;ZLjava/lang/String;)V
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 845
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 846
    invoke-static {p2, p1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->getRecentSessionBySessionId(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    move-result-object v0

    .line 848
    if-nez v0, :cond_5

    .line 849
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 850
    iput-object p1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 851
    invoke-static {p2, p1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 852
    sget-object v1, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    move-object v2, v0

    .line 858
    :goto_0
    iput-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    .line 859
    invoke-static {p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 861
    const-string/jumbo v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 862
    if-nez p3, :cond_b

    .line 863
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;

    .line 864
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/ChatMsgDaoOp;->queryLastRecentMessage()Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;

    move-result-object p3

    move-object v1, p3

    .line 872
    :goto_1
    iput v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->memoParseType:I

    .line 873
    if-eqz v1, :cond_a

    .line 874
    iget-wide v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    iput-wide v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 875
    iget-wide v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    iput-wide v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    .line 876
    iget-wide v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->createTime:J

    iput-wide v7, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 877
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizType:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizType:Ljava/lang/String;

    .line 878
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizMemo:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 879
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizIcon:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizIcon:Ljava/lang/String;

    .line 880
    iget v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->sendingState:I

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sendingState:I

    .line 881
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->bizRemind:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->bizRemind:Ljava/lang/String;

    .line 882
    iput-boolean v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->voiceNotReadState:Z

    .line 883
    const-string/jumbo v0, "12"

    iget-object v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-nez v0, :cond_9

    .line 886
    :try_start_0
    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->mediaState:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 889
    :goto_2
    if-eqz v0, :cond_0

    .line 890
    const-string/jumbo v7, "audioState"

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    :goto_3
    iput-boolean v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->voiceNotReadState:Z

    .line 895
    :cond_0
    :goto_4
    iget v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    if-nez v0, :cond_1

    instance-of v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    if-eqz v0, :cond_1

    iget-object v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    const-string/jumbo v3, "80"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v1

    .line 896
    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    .line 897
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;->senderId:Ljava/lang/String;

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    .line 899
    :cond_1
    iget v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->side:I

    iput v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    .line 909
    :goto_5
    if-eqz p4, :cond_2

    .line 910
    iput v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 912
    :cond_2
    iget-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCMsgId:Ljava/lang/String;

    invoke-static {v0, p5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 913
    iput-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCMsgId:Ljava/lang/String;

    .line 914
    iput-object v5, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    .line 916
    :cond_3
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 918
    invoke-direct {p0, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c(Ljava/util/List;)V

    .line 920
    :cond_4
    return-void

    .line 853
    :cond_5
    if-eqz p3, :cond_6

    .line 854
    iget-wide v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    iget-wide v7, p3, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->localId:J

    cmp-long v1, v1, v7

    if-gtz v1, :cond_4

    :cond_6
    move-object v2, v0

    goto/16 :goto_0

    .line 866
    :cond_7
    const-string/jumbo v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 867
    if-nez p3, :cond_b

    .line 868
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    invoke-static {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;

    .line 869
    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupChatMsgDaoOp;->queryLastRecentMessage()Lcom/alipay/mobile/socialsdk/bizdata/model/GroupChatMsgObj;

    move-result-object p3

    move-object v1, p3

    goto/16 :goto_1

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_2

    :cond_8
    move v0, v4

    .line 890
    goto :goto_3

    .line 892
    :cond_9
    const-string/jumbo v0, "11"

    iget-object v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;->templateCode:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iput v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->memoParseType:I

    goto :goto_4

    .line 901
    :cond_a
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizType:Ljava/lang/String;

    .line 902
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 903
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizIcon:Ljava/lang/String;

    .line 904
    iput v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sendingState:I

    .line 905
    iput-boolean v4, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->voiceNotReadState:Z

    .line 906
    iput v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    .line 907
    const-string/jumbo v0, ""

    iput-object v0, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->bizRemind:Ljava/lang/String;

    goto :goto_5

    :cond_b
    move-object v1, p3

    goto/16 :goto_1
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 383
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 385
    :cond_0
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryExistingGroups(Ljava/util/List;Z)Ljava/util/HashMap;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 389
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->g:Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-virtual {v0, p4}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNick(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->m:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 393
    :cond_2
    const/4 v3, 0x0

    .line 394
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 395
    const/4 v4, 0x0

    .line 396
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 463
    :try_start_0
    const-string/jumbo v0, "-1"

    .line 464
    const-string/jumbo v1, "2"

    .line 463
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 465
    if-eqz v3, :cond_13

    .line 466
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 468
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v5, "SocialSdk_Sdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\u65e7\u964c\u751f\u4eba\u672a\u8bfb:"

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    if-nez v0, :cond_11

    const/4 v1, -0x1

    :goto_1
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v6, "-\u65b0\u964c\u751f\u4eba\u672a\u8bfb"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    invoke-interface {v2, v5, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    if-eqz v0, :cond_3

    iget v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-le v4, v1, :cond_12

    .line 472
    :cond_3
    iput v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 473
    sget-object v0, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 478
    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    .line 479
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, v3}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 487
    :goto_3
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->updateSessionList(Ljava/util/List;)V

    .line 488
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "stranger_visual"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 489
    return-void

    .line 397
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 398
    iget v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 458
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Z)V

    goto :goto_0

    .line 400
    :pswitch_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 401
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 402
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->toDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 404
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->headImageUrl:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    .line 405
    iget-boolean v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->notDisturb:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    .line 406
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isStranger:Z

    .line 407
    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-nez v2, :cond_6

    iget-boolean v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isTop:Z

    if-eqz v2, :cond_6

    .line 408
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    .line 410
    :cond_6
    iget-boolean v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isTop:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    .line 411
    iget-boolean v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInBlack:Z

    .line 412
    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isStranger:Z

    if-eqz v2, :cond_15

    iget-boolean v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->blacked:Z

    if-nez v2, :cond_15

    .line 413
    if-nez v3, :cond_8

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    :goto_5
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    if-nez v3, :cond_a

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    .line 414
    :goto_6
    iget v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    add-int/2addr v1, v4

    move-object v3, v2

    .line 417
    :goto_7
    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Z)V

    move v4, v1

    .line 418
    goto/16 :goto_0

    .line 406
    :cond_7
    const/4 v2, 0x1

    goto :goto_4

    .line 413
    :cond_8
    iget-wide v7, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iget-wide v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_9

    invoke-direct {p0, v0, v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V

    :cond_9
    move-object v2, v3

    goto :goto_5

    :cond_a
    iget-object v3, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ","

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    goto :goto_6

    .line 420
    :pswitch_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->l:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 421
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->l:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 422
    invoke-virtual {v1}, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 423
    invoke-static {v2}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->toDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 424
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupImg:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    .line 425
    iget-boolean v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->notDisturb:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    .line 426
    iget-boolean v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->isCurrentUserQuit:Z

    iput-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isCurrentUserQuit:Z

    .line 427
    iget-object v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->groupCount:I

    .line 428
    iget-boolean v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-nez v2, :cond_b

    iget-boolean v2, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->top:Z

    if-eqz v2, :cond_b

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    .line 431
    :cond_b
    iget-boolean v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->top:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    .line 433
    const/4 v5, 0x0

    .line 434
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 435
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 436
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->m:Ljava/util/HashMap;

    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 437
    iget-object v7, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 438
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->remarkName:Ljava/lang/String;

    .line 449
    :cond_c
    :goto_8
    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderName:Ljava/lang/String;

    .line 451
    :cond_d
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;Z)V

    goto/16 :goto_0

    .line 439
    :cond_e
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 441
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 442
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->nickName:Ljava/lang/String;

    goto :goto_8

    .line 443
    :cond_f
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 444
    iget-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->name:Ljava/lang/String;

    goto :goto_8

    .line 447
    :cond_10
    const/4 v2, 0x0

    goto :goto_8

    .line 455
    :pswitch_3
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 469
    :cond_11
    :try_start_1
    iget v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    goto/16 :goto_1

    .line 474
    :cond_12
    iget v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-gt v4, v1, :cond_4

    .line 475
    iput v4, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 476
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 484
    :catch_0
    move-exception v0

    .line 485
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 482
    :cond_13
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_14
    move-object v2, v5

    goto :goto_8

    :cond_15
    move v1, v4

    goto/16 :goto_7

    .line 398
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v2, "operationLocalId"

    .line 340
    const/4 v3, 0x0

    .line 339
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 340
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 341
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 342
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 377
    :goto_1
    return-void

    .line 342
    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 343
    iget v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    packed-switch v3, :pswitch_data_0

    .line 368
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 345
    :pswitch_0
    :try_start_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 346
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v0

    .line 375
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 376
    throw v0

    .line 352
    :pswitch_1
    :try_start_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->l:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 353
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_2
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 356
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 357
    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->m:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 360
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSenderId:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 361
    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    aput-object v0, v3, v4

    invoke-interface {p5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 343
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method private b(Ljava/util/List;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;"
        }
    .end annotation

    .prologue
    .line 670
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 671
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 687
    :goto_0
    return-object v0

    .line 674
    :cond_0
    const/4 v2, 0x0

    .line 676
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 677
    const-string/jumbo v5, "top"

    aput-object v5, v3, v4

    .line 676
    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 677
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 678
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v2

    .line 679
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :goto_2
    move-object v0, v1

    .line 687
    goto :goto_0

    .line 679
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 680
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 682
    :catch_0
    move-exception v0

    .line 683
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 685
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 684
    :catchall_0
    move-exception v0

    .line 685
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 686
    throw v0
.end method

.method private c(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 719
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/m;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/m;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 719
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 734
    :goto_0
    return-void

    .line 719
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 731
    :catch_0
    move-exception v0

    .line 732
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public deleteAllRecentSession()V
    .locals 7

    .prologue
    .line 985
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 986
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 987
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    .line 988
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteRecentSession:\u5220\u9664\u6700\u8fd1\u5168\u90e8\u4f1a\u8bdd"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 990
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 994
    :goto_0
    return-void

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 991
    :catch_0
    move-exception v0

    .line 992
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public deleteRecentSession(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 979
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 980
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->deleteRecentSessions(Ljava/util/List;)V

    .line 981
    return-void
.end method

.method public deleteRecentSessions(Ljava/util/List;)V
    .locals 7
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
    .line 997
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 998
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "deleteRecentSessions:\u6700\u8fd1\u5e93\u672a\u521d\u59cb\u5316"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :goto_0
    return-void

    .line 1002
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1003
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 1004
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 1005
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    move-result v0

    .line 1006
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "deleteRecentSessions:\u5220\u9664\u7ec4\u4f1a\u8bdd\u7ed3\u679c"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/sql/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v0

    .line 1010
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/sql/SQLException; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public getMaxOperationLocalId()J
    .locals 6

    .prologue
    .line 1031
    const-wide/16 v1, 0x0

    .line 1033
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 1034
    const-string/jumbo v5, "MAX(lastLocalId)"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 1035
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 1036
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 1035
    invoke-interface {v3, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    .line 1037
    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1038
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-nez v3, :cond_1

    .line 1039
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1046
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "\u672c\u5730\u767b\u5f55\u6700\u5927\u7684localId\u4e3a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    return-wide v0

    .line 1041
    :cond_1
    const/4 v3, 0x0

    :try_start_1
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    goto :goto_0

    .line 1043
    :catch_0
    move-exception v0

    .line 1044
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-wide v0, v1

    goto :goto_0
.end method

.method public getRecentSessionBySessionId(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 764
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 772
    :goto_0
    return-object v0

    .line 768
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 770
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 772
    goto :goto_0
.end method

.method public getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->i:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    return-object v0
.end method

.method public loadFriendAndGroupSessions(Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "itemId"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "itemType"

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "itemType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->or()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "itemType"

    .line 206
    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 205
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 206
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 207
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 208
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadFriendAndGroupSessions:\u4f1a\u8bdd\u4eba\u548c\u7fa4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 219
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 227
    :cond_0
    :goto_1
    return-void

    .line 208
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 209
    iget v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 211
    :pswitch_0
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 214
    :pswitch_1
    :try_start_3
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v2, :cond_2

    .line 224
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 226
    :cond_2
    throw v0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public loadRecentFriendAndGroupCursor()Landroid/database/Cursor;
    .locals 11

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 179
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v2, "top"

    .line 182
    const/4 v3, 0x0

    .line 181
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 182
    const-string/jumbo v2, "operationLocalId"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 184
    const-string/jumbo v3, "displayName"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "displayName"

    const-string/jumbo v5, ""

    invoke-virtual {v2, v4, v5}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/j256/ormlite/stmt/Where;

    const/4 v6, 0x0

    const-string/jumbo v7, "isStranger"

    .line 185
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 184
    invoke-virtual {v2, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    .line 185
    const-string/jumbo v7, "isInBlack"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "itemType"

    .line 186
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 185
    invoke-virtual {v2, v7, v8}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    .line 186
    const-string/jumbo v8, "itemType"

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Lcom/j256/ormlite/stmt/Where;

    .line 185
    invoke-virtual {v2, v7, v8, v9}, Lcom/j256/ormlite/stmt/Where;->or(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v7

    aput-object v7, v5, v6

    .line 184
    invoke-virtual {v2, v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->and(Lcom/j256/ormlite/stmt/Where;Lcom/j256/ormlite/stmt/Where;[Lcom/j256/ormlite/stmt/Where;)Lcom/j256/ormlite/stmt/Where;

    .line 187
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 188
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 189
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 190
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadRecentFriendAndGroupCursor:\u6700\u8fd1\u804a\u5929\u4eba\u7fa4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 195
    :goto_0
    return-object v0

    .line 192
    :catch_0
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 193
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 192
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public loadRecentFriendsByCount(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 301
    if-nez p1, :cond_0

    .line 302
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "loadRecentFriendsByCount:\u7a7a\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    return-void

    .line 305
    :cond_0
    const/4 v1, 0x0

    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v2, "operationLocalId"

    .line 308
    const/4 v3, 0x0

    .line 307
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "itemType"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isStranger"

    .line 309
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 308
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isInBlack"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 310
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 311
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 322
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 332
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loadRecentFriendsByCount:\u8fd4\u56de\u7ed3\u679c"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_3
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 312
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->e:Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->getAccountById(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    move-result-object v0

    .line 313
    if-eqz v0, :cond_4

    .line 314
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    .line 315
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "loadRecentFriendsByCount:userId:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    iget-object v6, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " \u662f\u5426\u597d\u53cb:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 315
    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->isMyFriend()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-ge v0, p2, :cond_1

    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    .line 326
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_2

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 327
    :catchall_0
    move-exception v0

    .line 328
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v2, :cond_5

    .line 329
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 331
    :cond_5
    throw v0
.end method

.method public loadRecentFriendsCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 279
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 281
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    .line 282
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "top"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 283
    const-string/jumbo v3, "operationLocalId"

    const/4 v4, 0x0

    .line 282
    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    .line 283
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "itemType"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 284
    const-string/jumbo v3, "displayName"

    .line 283
    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "displayName"

    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "itemId"

    invoke-virtual {v2, v3, v0}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isStranger"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isInBlack"

    .line 285
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 284
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 286
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 287
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadRecentFriendsCursor:\u597d\u53cb\u6700\u8fd1\u5217\u8868"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :goto_0
    return-object v0

    .line 291
    :cond_0
    new-instance v1, Landroid/database/MatrixCursor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 295
    :goto_1
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 294
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public loadRecentGroupIds(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 254
    if-nez p1, :cond_1

    .line 255
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "loadRecentGroupIds:\u4f20\u5165\u7a7a\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const/4 v1, 0x0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 261
    const-string/jumbo v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isStranger"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 263
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_0

    .line 263
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 264
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 267
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_0

    .line 268
    :catchall_0
    move-exception v0

    .line 269
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v2, :cond_3

    .line 270
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 272
    :cond_3
    throw v0
.end method

.method public loadRecentGroups(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    if-nez p1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "loadRecentGroups:\u4f20\u5165\u7a7a\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    const/4 v1, 0x0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v2, "operationLocalId"

    .line 237
    const/4 v3, 0x0

    .line 236
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "itemType"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isStranger"

    .line 238
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 237
    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 240
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_0

    .line 240
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 241
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->f:Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->queryGroupById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v0

    .line 242
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 244
    :catch_0
    move-exception v0

    .line 245
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_0

    .line 246
    :catchall_0
    move-exception v0

    .line 247
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v2, :cond_3

    .line 248
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 250
    :cond_3
    throw v0
.end method

.method public loadRecentListCursor(ZLjava/util/HashMap;)Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 83
    :try_start_0
    const-class v6, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    if-eqz p1, :cond_0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->l:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->m:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 89
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 90
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 91
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 92
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    .line 94
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 95
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->j:Landroid/content/Context;

    invoke-static {v0, v5, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/LbsInfoUtil;->getLBSShareSessionStates(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;)V

    .line 96
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 83
    :goto_0
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "top"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 105
    const-string/jumbo v1, "operationLocalId"

    const/4 v2, 0x0

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "displayName"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "displayName"

    .line 106
    const-string/jumbo v2, ""

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "isStranger"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "isInBlack"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 108
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 116
    :cond_1
    :goto_1
    return-object v0

    .line 99
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    const-string/jumbo v1, "-1"

    .line 100
    const-string/jumbo v2, "2"

    .line 99
    invoke-static {v1, v2}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 83
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 116
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v8, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v7

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_1
.end method

.method public loadRecentStrangerCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "top"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 164
    const-string/jumbo v1, "operationLocalId"

    const/4 v2, 0x0

    .line 163
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "displayName"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "displayName"

    .line 165
    const-string/jumbo v2, ""

    .line 164
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "isStranger"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "isInBlack"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 167
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadRecentStrangerCursor:\u964c\u751f\u4eba\u6700\u8fd1\u5217\u8868"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return-object v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public markSessionRead(Ljava/lang/String;)I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 923
    .line 925
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 926
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 927
    if-eqz v0, :cond_0

    iget v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 928
    :cond_0
    monitor-exit v2

    move v0, v1

    .line 942
    :goto_0
    return v0

    .line 930
    :cond_1
    iget v7, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 932
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v3, "_id"

    invoke-virtual {v1, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 933
    const-string/jumbo v1, "unread"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 934
    const-string/jumbo v1, "atMe"

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 935
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 936
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "markSessionRead:\u6e05\u7a7a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u672a\u8bfb\u6570\u4e3a0, \u66f4\u65b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 938
    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const-string/jumbo v4, "unread"

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v7

    goto :goto_0

    .line 925
    :catchall_0
    move-exception v0

    move v7, v1

    :goto_1
    monitor-exit v2

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 939
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v7

    .line 940
    :goto_2
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 939
    :catch_1
    move-exception v0

    move-object v8, v0

    move v0, v1

    move-object v1, v8

    goto :goto_2

    .line 925
    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public markSessionUnread(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 947
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 948
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 950
    const-string/jumbo v2, "unread"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 951
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 952
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "markSessionUnread:\u6807\u8bb0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u672a\u8bfb\u6570\u4e3a1, \u66f4\u65b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 954
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const-string/jumbo v4, "unread"

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 958
    :goto_0
    return-void

    .line 947
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 955
    :catch_0
    move-exception v0

    .line 956
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public markStrangerSessionRead()V
    .locals 7

    .prologue
    .line 961
    const-string/jumbo v0, "-1"

    .line 962
    const-string/jumbo v1, "2"

    .line 961
    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 964
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v4, "_id"

    invoke-virtual {v2, v4, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 967
    const-string/jumbo v2, "redPointStyle"

    const-string/jumbo v4, "no"

    invoke-virtual {v0, v2, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 968
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 969
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v4, "markStrangerSessionRead:\u6807\u8bb0\u964c\u751f\u4eba\u5165\u53e3\u5df2\u8bfb"

    invoke-interface {v0, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 971
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const-string/jumbo v4, "unread"

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 975
    :goto_0
    return-void

    .line 964
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 972
    :catch_0
    move-exception v0

    .line 973
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public operateRecentSession(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 7

    .prologue
    .line 777
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "operateRecentSession:\u66f4\u65b0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u662f\u5426\u91cd\u7f6e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 780
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->getRecentSessionBySessionId(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    move-result-object v0

    .line 781
    if-nez p6, :cond_4

    .line 782
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 783
    if-nez v0, :cond_0

    .line 784
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 785
    iput-object p1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 786
    iput-object p3, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 787
    invoke-static {p2}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 788
    iput-wide v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 789
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v2}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->generateMessageIncrementalId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    .line 790
    const-string/jumbo v2, "num"

    iput-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 791
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 794
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 795
    invoke-virtual {v0, p4, p5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 796
    const-string/jumbo v2, "top"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 797
    const-string/jumbo v2, "topTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 801
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 779
    :cond_2
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 816
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 820
    :goto_2
    return-void

    .line 798
    :cond_3
    :try_start_3
    const-string/jumbo v2, "draft"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 799
    const-string/jumbo v2, "draftTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 779
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 817
    :catch_0
    move-exception v0

    .line 818
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 803
    :cond_4
    if-eqz v0, :cond_2

    .line 804
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 805
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 806
    invoke-virtual {v0, p4, p5}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 807
    const-string/jumbo v2, "top"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 808
    const-string/jumbo v2, "topTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 812
    :cond_5
    :goto_3
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    goto :goto_1

    .line 809
    :cond_6
    const-string/jumbo v2, "draft"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 810
    const-string/jumbo v2, "draftTime"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public queryTotalUnread()I
    .locals 6

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 120
    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 123
    const-string/jumbo v5, "SUM(unread)"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "redPointStyle"

    sget-object v5, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "unread"

    .line 125
    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 124
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->ge(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "notDisturb"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "displayName"

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "displayName"

    .line 126
    const-string/jumbo v5, ""

    .line 125
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "isStranger"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "isInBlack"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 127
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 128
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 127
    invoke-interface {v3, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 130
    if-eqz v0, :cond_0

    array-length v3, v0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-nez v3, :cond_2

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "SUM(unread)"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectRaw([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "redPointStyle"

    sget-object v5, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_NUM:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "unread"

    .line 137
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 136
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 137
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "notDisturb"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "displayName"

    invoke-virtual {v3, v4}, Lcom/j256/ormlite/stmt/Where;->isNotNull(Ljava/lang/String;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "displayName"

    .line 138
    const-string/jumbo v5, ""

    .line 137
    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    .line 138
    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "isStranger"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    invoke-virtual {v3}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "isInBlack"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 139
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 140
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepareStatementString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    .line 139
    invoke-interface {v3, v0, v4}, Lcom/j256/ormlite/dao/Dao;->queryRaw(Ljava/lang/String;[Ljava/lang/String;)Lcom/j256/ormlite/dao/GenericRawResults;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Lcom/j256/ormlite/dao/GenericRawResults;->getFirstResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 142
    if-eqz v0, :cond_1

    array-length v3, v0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-eqz v3, :cond_1

    .line 143
    const/4 v3, 0x0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    .line 145
    :cond_1
    if-nez v2, :cond_3

    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "unread"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "itemType"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "redPointStyle"

    .line 148
    sget-object v4, Lcom/alipay/mobile/mpass/badge/ui/BadgeView;->STYLE_POINT:Ljava/lang/String;

    .line 147
    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "isStranger"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "unread"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->gt(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 149
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->queryForFirst(Lcom/j256/ormlite/stmt/PreparedQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    if-eqz v0, :cond_3

    move v0, v1

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryTotalUnread:\u6700\u8fd1\u672a\u8bfb\u6570"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    return v0

    .line 133
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    div-int/lit8 v2, v0, 0x2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 154
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v2

    .line 155
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public removeRecentSessionsFromExternal(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/l;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/l;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 695
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 710
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 711
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "removeRecentSessionsFromExternal:\u6e05\u9664\u5916\u90e8\u6700\u8fd1"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 712
    :catch_0
    move-exception v0

    .line 713
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 695
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method public updateLastVoiceState(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1016
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 1018
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 1019
    const-string/jumbo v2, "voiceNotReadState"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 1020
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 1021
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    .line 1022
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateLastVoiceState:\u6807\u8bb0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\u6700\u540e\u4e00\u6761\u8bed\u97f3, \u66f4\u65b0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1021
    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1024
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const-string/jumbo v4, "voiceNotReadState"

    const/4 v5, 0x1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 1028
    :goto_0
    return-void

    .line 1016
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1025
    :catch_0
    move-exception v0

    .line 1026
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateRecentForClearMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 826
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;ZLjava/lang/String;)V

    .line 827
    return-void
.end method

.method public updateRecentForRevert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 840
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;ZLjava/lang/String;)V

    .line 841
    return-void
.end method

.method public updateRecentForSendOrDelete(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;)V
    .locals 6

    .prologue
    .line 833
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/socialsdk/bizdata/model/ChatMsgObj;ZLjava/lang/String;)V

    .line 834
    return-void
.end method

.method public updateRecentSessionsFromExternal(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 615
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 616
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 649
    new-instance v0, Ljava/util/ArrayList;

    .line 650
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 649
    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 651
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 665
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateRecentSessionsFromExternal:\u8f6c\u6362\u6700\u8fd1\u4f1a\u8bdd\u5b8c\u6bd5"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c(Ljava/util/List;)V

    .line 667
    return-void

    .line 616
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 617
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 618
    new-instance v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    invoke-direct {v4}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;-><init>()V

    .line 619
    const-string/jumbo v5, "itemType"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 620
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    invoke-static {v5}, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->getItemType(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    .line 622
    const-string/jumbo v5, "itemId"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    .line 623
    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    const-string/jumbo v5, "displayName"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 625
    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    invoke-static {v5}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->toDBC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 626
    const-string/jumbo v5, "bizMemo"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastBizMemo:Ljava/lang/String;

    .line 627
    const-string/jumbo v5, "icon"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    .line 628
    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    const-string/jumbo v5, "createTime"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    .line 630
    iget-wide v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    const-string/jumbo v5, "unread"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    iput v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 632
    iget v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string/jumbo v5, "redPointStyle"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    .line 634
    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->redPointStyle:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    const-string/jumbo v5, "uri"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->uri:Ljava/lang/String;

    .line 636
    const-string/jumbo v5, "notDisturb"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    .line 637
    iget-boolean v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string/jumbo v5, "top"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    .line 639
    iget-boolean v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string/jumbo v5, "lastOperateTime"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draftTime:J

    .line 641
    iget-wide v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draftTime:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    iget v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemType:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {v0, v5}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->composeId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    .line 644
    iget-wide v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCreateTime:J

    iput-wide v5, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->operationLocalId:J

    .line 645
    const/4 v0, 0x0

    iput v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastSide:I

    .line 646
    iget-object v0, v4, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "updateRecentSessionsFromExternal:\u503c"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v4, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 651
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 652
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 653
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 654
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 655
    iget-boolean v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-eqz v5, :cond_0

    iget-boolean v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-nez v1, :cond_0

    .line 656
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    goto/16 :goto_1

    .line 659
    :cond_3
    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-eqz v1, :cond_0

    .line 660
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    goto/16 :goto_1
.end method

.method public updateRecentSessionsFromMsg(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 541
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->a(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 546
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 547
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 588
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateRecentSessionsFromMsg:\u6d88\u606f\u4f1a\u8bdd"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c(Ljava/util/List;)V

    .line 590
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 591
    return-void

    .line 542
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 543
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 547
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 548
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;

    .line 549
    if-eqz v1, :cond_3

    .line 550
    iget-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    iget-wide v7, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastLocalId:J

    cmp-long v5, v5, v7

    if-gez v5, :cond_6

    .line 551
    iget v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-ne v5, v10, :cond_5

    iget v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-lez v5, :cond_5

    .line 552
    iput v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 556
    :cond_2
    :goto_2
    iget v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    iget v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    add-int/2addr v0, v5

    .line 558
    iput v0, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    move-object v0, v1

    .line 580
    :cond_3
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/SocialSdkChatService;->getCurrentChatPage()Ljava/lang/String;

    move-result-object v1

    .line 581
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->itemId:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 582
    iput v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 583
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    .line 585
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 553
    :cond_5
    iget v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-nez v5, :cond_2

    .line 554
    iput v9, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    goto :goto_2

    .line 560
    :cond_6
    iget-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 561
    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    iput-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->atMe:Ljava/lang/String;

    .line 562
    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCMsgId:Ljava/lang/String;

    iput-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->lastCMsgId:Ljava/lang/String;

    .line 564
    :cond_7
    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draft:Ljava/lang/String;

    iput-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->draft:Ljava/lang/String;

    .line 565
    iget-boolean v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    iput-boolean v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    .line 566
    iget-boolean v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->top:Z

    if-eqz v5, :cond_8

    .line 567
    iget-wide v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    iput-wide v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->topTime:J

    .line 569
    :cond_8
    iget-boolean v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    iput-boolean v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->notDisturb:Z

    .line 570
    iget v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-ne v5, v10, :cond_9

    iget v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    if-lez v5, :cond_9

    .line 571
    iput v9, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 573
    :cond_9
    iget v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    iget v6, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    add-int/2addr v5, v6

    iput v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->unread:I

    .line 574
    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    iput-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->displayName:Ljava/lang/String;

    .line 575
    iget-object v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    iput-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->icon:Ljava/lang/String;

    .line 576
    iget-boolean v5, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isStranger:Z

    iput-boolean v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isStranger:Z

    .line 577
    iget-boolean v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInBlack:Z

    iput-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;->isInBlack:Z

    goto :goto_3
.end method

.method public updateSession(Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;)V
    .locals 7

    .prologue
    .line 754
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    .line 754
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 757
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "recent_session"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 761
    :goto_0
    return-void

    .line 754
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 758
    :catch_0
    move-exception v0

    .line 759
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSessionList(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/RecentSession;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/data/n;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/n;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 750
    :goto_0
    return-void

    .line 747
    :catch_0
    move-exception v0

    .line 748
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->h:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
