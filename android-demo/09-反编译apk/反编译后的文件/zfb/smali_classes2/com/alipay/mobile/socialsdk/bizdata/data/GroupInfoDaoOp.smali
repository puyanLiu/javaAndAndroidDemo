.class public Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;
.super Ljava/lang/Object;
.source "GroupInfoDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private final f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 45
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    const-string/jumbo v2, "chatgroup_info"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    .line 49
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/api/util/BaseHelperUtil;->obtainUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->a:Ljava/lang/String;

    .line 50
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 51
    const-class v1, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 50
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 52
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 53
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 52
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "GroupInfoDaoOp\u521b\u5efa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public checkExistingGroups(Ljava/util/List;)Ljava/util/List;
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 204
    const/4 v1, 0x0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 208
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 209
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 217
    :goto_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "checkExistingGroups:\u672c\u5730\u67e5\u7fa4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6709"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    return-object v2

    .line 209
    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 210
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 214
    :catchall_0
    move-exception v0

    .line 215
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 216
    throw v0
.end method

.method public checkInterval(Ljava/lang/String;Z)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 436
    if-nez p2, :cond_0

    move v0, v1

    .line 454
    :goto_0
    return v0

    .line 439
    :cond_0
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 440
    const-string/jumbo v2, "2"

    invoke-virtual {v0, p1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->getProfileQueryTime(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    .line 442
    goto :goto_0

    .line 445
    :cond_2
    :try_start_0
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    sub-long v2, v4, v2

    .line 447
    const-wide/32 v4, 0x6ddd00

    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move v0, v1

    .line 448
    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    .line 451
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public composeGroupCursor(Ljava/util/List;)Landroid/database/MatrixCursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    .line 568
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 569
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 578
    :goto_0
    return-object v0

    .line 572
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 573
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    invoke-static {v0, v1, p1}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->createNewCursorFromObj(Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 574
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public composeGroupNameFromMember(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 146
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 149
    :cond_0
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 150
    const-string/jumbo v0, "\u7fa4\u804a"

    iput-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    goto :goto_0

    .line 153
    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    :cond_2
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 155
    iget-object v1, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v2

    .line 156
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v5, :cond_3

    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_5

    .line 164
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 170
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 171
    const-string/jumbo v0, "\u3001"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    goto :goto_0

    .line 158
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 160
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 165
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 166
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v5, :cond_4

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->a:Ljava/lang/String;

    iget-object v4, v0, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->userId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 167
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 173
    :cond_8
    const-string/jumbo v0, "\u7fa4\u804a"

    iput-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->aliasGroupName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public composeMemberMappingGroup(ZZLjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 525
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u6784\u9020\u7fa4\u6210\u5458\u548c\u7fa4\u7684\u6620\u5c04\u5173\u7cfb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v1, 0x0

    .line 528
    if-eqz p1, :cond_2

    .line 530
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "groupName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "aliasGroupName"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 531
    const-string/jumbo v4, "groupImg"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "groupMembersString"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "isCurrentUserQuit"

    aput-object v4, v2, v3

    .line 530
    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 531
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isContact"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 536
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 537
    :try_start_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 538
    if-eqz p2, :cond_0

    .line 539
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;

    .line 540
    invoke-virtual {v0, v4}, Lcom/alipay/mobile/socialsdk/bizdata/data/RecentSessionDaoOp;->loadRecentGroupIds(Ljava/util/Set;)V

    .line 542
    :cond_0
    invoke-interface {v3}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 559
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u6784\u9020\u7fa4\u6210\u5458\u548c\u7fa4\u7684\u6620\u5c04\u5173\u7cfb\u5b8c\u6210"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 565
    :goto_2
    return-void

    .line 533
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "groupName"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 534
    const-string/jumbo v4, "aliasGroupName"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string/jumbo v4, "groupImg"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "groupMembersString"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string/jumbo v4, "isCurrentUserQuit"

    aput-object v4, v2, v3

    .line 533
    invoke-virtual {v0, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 534
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 542
    :cond_3
    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 543
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 553
    if-eqz p2, :cond_4

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->isCurrentUserQuit:Z

    if-nez v1, :cond_1

    .line 554
    :cond_4
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {p4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 560
    :catch_0
    move-exception v0

    move-object v1, v3

    .line 561
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 563
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 543
    :cond_5
    :try_start_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 544
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 546
    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 550
    :goto_5
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 562
    :catchall_0
    move-exception v0

    move-object v1, v3

    .line 563
    :goto_6
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 564
    throw v0

    .line 548
    :cond_6
    :try_start_6
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 562
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 560
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method public deleteGroupById(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 416
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "deleteGroupById:id\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    :goto_0
    return-void

    .line 421
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->deleteById(Ljava/lang/Object;)I

    .line 421
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

    .line 424
    :catch_0
    move-exception v0

    .line 425
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public doSearchGroupMembers(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 500
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 501
    const/4 v1, 0x0

    .line 503
    if-eqz p2, :cond_0

    .line 505
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "groupMembersString"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "isContact"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 511
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 512
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 520
    :goto_2
    return-object v2

    .line 508
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "groupMembersString"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->like(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    goto :goto_0

    .line 512
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 513
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 515
    :catch_0
    move-exception v0

    .line 516
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 517
    :catchall_0
    move-exception v0

    .line 518
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 519
    throw v0
.end method

.method public doSearchGroupMembersCursor(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 472
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v8

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 474
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 475
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "doSearchGroupMembersCursor:\u7fa4\u6210\u5458\u4fe1\u606f\u6216\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 496
    :goto_0
    return-object v0

    .line 479
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 480
    if-eqz p1, :cond_2

    .line 481
    invoke-virtual {v7, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 483
    :cond_2
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 485
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p2

    move-object v2, p4

    move-object v5, p1

    .line 486
    invoke-virtual/range {v0 .. v5}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->doSearchGroupNick(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 487
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 488
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p4

    move-object v2, v7

    move-object v5, p3

    .line 489
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->doSearchMemberAccounts(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;Ljava/util/List;)V

    .line 491
    invoke-virtual {v0, v6}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->composeAccountCursor(Ljava/util/List;)Landroid/database/MatrixCursor;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 492
    :catch_0
    move-exception v0

    .line 493
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 494
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v8

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getGroupInfoWithAccount(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->getGroupInfoWithAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getGroupInfoWithAccount(Ljava/lang/String;Ljava/lang/String;Z)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    .locals 8

    .prologue
    .line 232
    const/4 v1, 0x0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 235
    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "getGroupInfoWithAccount:\u7fa4\u6210\u5458\u4fe1\u606f\u6216\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    :goto_0
    return-object v0

    .line 239
    :cond_1
    if-eqz p1, :cond_2

    .line 240
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 243
    if-eqz p3, :cond_4

    .line 245
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    move-object v3, v1

    .line 249
    :goto_1
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 250
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-virtual {v1, p2, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNicks(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v4

    .line 252
    new-instance v5, Ljava/util/ArrayList;

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 253
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 263
    iput-object v5, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    .line 264
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getGroupInfoWithAccount:\u67e5\u7fa4\u4fe1\u606f"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u6210\u5458"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 265
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 264
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    :goto_3
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    :cond_4
    :try_start_2
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryGroupMembers(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v1

    move-object v3, v1

    goto :goto_1

    .line 253
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 254
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 255
    if-eqz v2, :cond_3

    .line 256
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    .line 257
    if-eqz v1, :cond_6

    .line 258
    iget-object v1, v1, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 260
    :cond_6
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 266
    :catch_1
    move-exception v0

    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    goto :goto_3
.end method

.method public getGroupInfoWithoutAccount(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    .locals 4

    .prologue
    .line 273
    const/4 v1, 0x0

    .line 275
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getGroupMembersCursor(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Landroid/database/Cursor;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p2}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 313
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "getGroupMembersCursor:\u7fa4\u6210\u5458\u4fe1\u606f\u6216\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 341
    :goto_0
    return-object v0

    .line 317
    :cond_1
    if-eqz p1, :cond_2

    .line 318
    iget-object v1, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 320
    :cond_2
    if-eqz p3, :cond_4

    .line 321
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 324
    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    .line 323
    invoke-virtual {v1, p2, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNicks(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    .line 335
    :cond_4
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 336
    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupMemberIds:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccountsCursor(Ljava/util/List;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 325
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    .line 327
    if-eqz v2, :cond_3

    .line 328
    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    iget-object v5, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v6, "SocialSdk_Sdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getGroupMembersCursor:\u7fa4"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\u5305\u542b\u6635\u79f0:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 332
    const-string/jumbo v7, "-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->drId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-interface {v5, v6, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 341
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v9

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    move-result-object v0

    .line 585
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryAccountsInGroup(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 284
    if-nez p1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v4, "queryAccountsInGroup:\u8981\u67e5\u7684\u6210\u5458\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v1, v2, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    .line 307
    :goto_0
    return-object v1

    .line 289
    :cond_0
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 290
    invoke-virtual {v1, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryExistingAccounts(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v4

    .line 292
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 291
    invoke-virtual {v1, p2, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->queryGroupNicks(Ljava/lang/String;Ljava/util/List;)Ljava/util/HashMap;

    move-result-object v5

    .line 294
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    move-object v1, v3

    .line 307
    goto :goto_0

    .line 294
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 295
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;

    .line 296
    if-eqz v1, :cond_1

    .line 297
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;

    .line 298
    if-eqz v2, :cond_3

    .line 299
    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/bizdata/model/DataRelation;->data3:Ljava/lang/String;

    iput-object v2, v1, Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;->groupNickName:Ljava/lang/String;

    .line 301
    :cond_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 304
    :catch_0
    move-exception v1

    .line 305
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v2, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public queryExistingGroups(Ljava/util/List;Z)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    const/4 v1, 0x0

    .line 180
    if-nez p2, :cond_0

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 198
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryExistingGroups:\u672c\u5730\u7fa4"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u83b7\u5f97"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-object v2

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "_id"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "groupName"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 185
    const-string/jumbo v5, "aliasGroupName"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "groupImg"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string/jumbo v5, "notDisturb"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "isCurrentUserQuit"

    aput-object v5, v3, v4

    const/4 v4, 0x6

    const-string/jumbo v5, "top"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    const-string/jumbo v5, "groupMembersString"

    aput-object v5, v3, v4

    const/16 v4, 0x8

    .line 186
    const-string/jumbo v5, "isContact"

    aput-object v5, v3, v4

    .line 184
    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "_id"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    goto/16 :goto_0

    .line 190
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 191
    iget-object v4, v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 193
    :catch_0
    move-exception v0

    .line 194
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto/16 :goto_2

    .line 195
    :catchall_0
    move-exception v0

    .line 196
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 197
    throw v0
.end method

.method public queryGroupById(Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    .locals 3

    .prologue
    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    return-object v0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 412
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryGroupsInContact()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 345
    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "createTime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "isContact"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "isCurrentUserQuit"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 350
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 351
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 352
    :try_start_2
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    move-object v0, v1

    .line 360
    :goto_1
    return-object v0

    .line 352
    :cond_0
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;

    .line 353
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 356
    :goto_2
    :try_start_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 357
    :catchall_0
    move-exception v0

    .line 358
    :goto_3
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v1, v3}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 359
    throw v0

    .line 357
    :catchall_1
    move-exception v0

    move-object v3, v2

    goto :goto_3

    .line 355
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v2, v3

    move-object v0, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_2
.end method

.method public queryGroupsInContactCursor()Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 364
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v3

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 366
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v2, "createTime"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isContact"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v2, "isCurrentUserQuit"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 368
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 369
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 370
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryGroupsInContactCursor:\u901a\u8baf\u5f55\u7684\u7fa4"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 375
    goto :goto_0
.end method

.method public refreshDataSource(Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 82
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "refreshDataSource:\u7fa4\u5217\u8868\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 105
    :goto_0
    return v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshDataSource:\u66f4\u65b0\u7fa4\u4fe1\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/h;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/h;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 88
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "chatgroup_info"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    move v0, v7

    .line 101
    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v8

    .line 105
    goto :goto_0
.end method

.method public refreshGroupInfo(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Z)Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 109
    if-nez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "refreshGroupInfo:\u7fa4\u4e3a\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 128
    :goto_0
    return v0

    .line 114
    :cond_0
    if-eqz p2, :cond_1

    .line 115
    :try_start_0
    iget-boolean v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsIncremental:Z

    if-eqz v0, :cond_2

    move-object v0, v6

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->composeGroupNameFromMember(Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;Ljava/util/List;)V

    .line 117
    :cond_1
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->createOrUpdate(Ljava/lang/Object;)Lcom/j256/ormlite/dao/Dao$CreateOrUpdateStatus;

    .line 117
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "chatgroup_info"

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 121
    iget-boolean v8, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->mIsIncremental:Z

    if-eqz v8, :cond_3

    .line 120
    :goto_2
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshGroupInfo:\u66f4\u65b0\u7fa4\u4fe1\u606f"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->groupId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "\u662f\u5426\u66f4\u65b0\u7fa4\u540d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    .line 124
    goto :goto_0

    .line 115
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobile/socialsdk/bizdata/model/GroupInfo;->memberAccounts:Ljava/util/List;

    goto :goto_1

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move-object v6, p1

    .line 121
    goto :goto_2
.end method

.method public refreshGroupMembers(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 133
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 136
    const-string/jumbo v2, "groupMembersString"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 137
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 133
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "chatgroup_info"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 143
    :goto_0
    return-void

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public removeGroupFromContact(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 380
    :try_start_0
    const-class v2, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :try_start_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v1

    .line 382
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v3

    const-string/jumbo v4, "_id"

    invoke-virtual {v3, v4, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 383
    const-string/jumbo v3, "isContact"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 384
    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 380
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    .line 380
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 387
    :catch_0
    move-exception v1

    .line 388
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public saveQueryTime(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 464
    if-eqz p2, :cond_0

    .line 465
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;

    .line 466
    const-string/jumbo v1, "2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/ContactDataRelationDaoOp;->saveProfileQueryTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    return-void
.end method

.method public updateCertainGroupStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 67
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 71
    invoke-virtual {v0, p2, p3}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 72
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    move-result v0

    .line 68
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateCertainGroupStatus:\u66f4\u65b0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u7ed3\u679c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->d:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "contactsdb"

    const-string/jumbo v2, "chatgroup_info"

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string/jumbo v6, "updateSwitch"

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 79
    :goto_0
    return-void

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateNickInGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 395
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->c:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->updateBuilder()Lcom/j256/ormlite/stmt/UpdateBuilder;

    move-result-object v0

    .line 397
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v2

    const-string/jumbo v3, "_id"

    invoke-virtual {v2, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 398
    const-string/jumbo v2, "nickInGroup"

    invoke-virtual {v0, v2, p2}, Lcom/j256/ormlite/stmt/UpdateBuilder;->updateColumnValue(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/StatementBuilder;

    .line 399
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/UpdateBuilder;->update()I

    .line 395
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :goto_0
    return-void

    .line 395
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/GroupInfoDaoOp;->f:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
