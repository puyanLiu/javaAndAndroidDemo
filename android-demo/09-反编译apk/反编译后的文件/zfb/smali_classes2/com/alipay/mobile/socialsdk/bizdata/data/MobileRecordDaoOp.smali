.class public Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;
.super Ljava/lang/Object;
.source "MobileRecordDaoOp.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;


# static fields
.field private static h:J


# instance fields
.field private final a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

.field private b:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

.field private final d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

.field private final e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private final f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

.field private final g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->h:J

    .line 40
    return-void
.end method

.method protected constructor <init>()V
    .locals 3

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    .line 59
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    .line 60
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    const-class v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    const-string/jumbo v2, "mobile_record"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    .line 63
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    .line 64
    const-class v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    .line 65
    const-class v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    .line 66
    const-class v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 67
    const-class v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "MobileRecordDaoOp\u521b\u5efa"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private static a(Ljava/util/List;)Landroid/database/MatrixCursor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;)",
            "Landroid/database/MatrixCursor;"
        }
    .end annotation

    .prologue
    .line 520
    new-instance v0, Landroid/database/MatrixCursor;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "_id"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 521
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    :goto_0
    return-object v0

    .line 524
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 525
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    const-class v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    invoke-static {v0, v1, p0}, Lcom/alipay/mobile/socialsdk/api/util/CursorVoHelper;->createNewCursorFromObj(Ljava/lang/Class;Ljava/util/List;Ljava/util/List;)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 526
    iget-object v0, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Ljava/util/HashSet;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 282
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 283
    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 302
    :goto_0
    return-object v0

    .line 286
    :cond_0
    const/4 v2, 0x0

    .line 288
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "phoneNo"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "phoneName"

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->selectColumns([Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 290
    const-string/jumbo v3, "phoneNo"

    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 291
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v2

    .line 292
    invoke-interface {v2}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    :cond_1
    :goto_2
    move-object v0, v1

    .line 302
    goto :goto_0

    .line 292
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 293
    iget-object v4, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    iget-object v0, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_2

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v1, :cond_3

    .line 299
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 301
    :cond_3
    throw v0
.end method

.method private a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
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
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x190

    const/4 v5, 0x0

    .line 467
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 468
    const/4 v3, 0x0

    .line 470
    if-eqz p4, :cond_1

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "_id"

    invoke-virtual {v1, v4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    .line 473
    const-string/jumbo v4, "matchedAccounts"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "showAsMobile"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "activeAccount"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v4, v7}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v1

    .line 478
    :goto_0
    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v4, v1}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 479
    :try_start_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 480
    invoke-interface {v4}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 484
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 485
    if-le v1, v2, :cond_7

    move v3, v2

    .line 490
    :goto_2
    if-lt v5, v3, :cond_3

    .line 507
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryMobileAccountsByRowIds:\u67e5\u8be2\u7ed3\u679c"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\u53ea\u8d26\u6237"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 508
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v1, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 516
    :cond_0
    :goto_3
    return-object v6

    .line 475
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    const-string/jumbo v4, "phoneNo"

    invoke-virtual {v1, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v4, "_id"

    invoke-virtual {v1, v4, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    invoke-virtual {v1}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    goto :goto_0

    .line 480
    :cond_2
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 481
    iget-object v8, v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 509
    :catch_0
    move-exception v1

    move-object v2, v4

    .line 510
    :goto_4
    :try_start_4
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 512
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_3

    .line 491
    :cond_3
    :try_start_5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 492
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 493
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 494
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 495
    const-string/jumbo v8, "phoneName"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 496
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v8, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    .line 497
    iget-object v9, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, "#00AAFF"

    .line 496
    invoke-virtual {v1, v8, p3, v9, v10}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->searchPhoneName:Ljava/lang/String;

    .line 498
    iget-object v1, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->searchPhoneNo:Ljava/lang/String;

    .line 504
    :goto_5
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_2

    .line 500
    :cond_5
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v8, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    .line 501
    iget-object v9, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const-string/jumbo v10, "#00AAFF"

    .line 500
    invoke-virtual {v1, v8, p3, v9, v10}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->highlightAbstract(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->searchPhoneNo:Ljava/lang/String;

    .line 502
    iget-object v1, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    iput-object v1, v2, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->searchPhoneName:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 511
    :catchall_0
    move-exception v1

    .line 512
    :goto_6
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v2, :cond_6

    .line 513
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v2, v4}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 515
    :cond_6
    throw v1

    .line 511
    :catchall_1
    move-exception v1

    move-object v4, v3

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v2

    goto :goto_6

    .line 509
    :catch_1
    move-exception v1

    move-object v2, v3

    goto :goto_4

    :cond_7
    move v3, v1

    goto/16 :goto_2
.end method

.method private a(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "phoneNo"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->in(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/j256/ormlite/stmt/Where;

    .line 278
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 279
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;)Lcom/j256/ormlite/dao/Dao;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public static getSystemContactCount()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 544
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 545
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    .line 546
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 547
    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    .line 548
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 549
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 550
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 554
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getSystemContactCount:\u5f53\u524d\u7cfb\u7edf\u901a\u8baf\u5f55\u4e2a\u6570"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    return v0

    .line 551
    :catch_0
    move-exception v0

    move-object v1, v0

    move v0, v6

    .line 552
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 551
    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public addAllMobileInfo(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u624b\u673a\u901a\u8baf\u5f55\u6570\u636e\u66f4\u65b0\u5f00\u59cb"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    const-string/jumbo v3, "\u624b\u673a\u901a\u8baf\u5f55\u6570\u636e\u5220\u9664\u6240\u6709\u65e7\u6570\u636e"

    invoke-interface {v0, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/i;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/i;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 79
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u624b\u673a\u901a\u8baf\u5f55\u6570\u636e\u66f4\u65b0\u7ed3\u675f"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "socialmobiledb"

    const-string/jumbo v2, "mobile_record"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 98
    :goto_0
    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addSyncData(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 133
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 134
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 141
    :try_start_0
    const-class v5, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :try_start_1
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a(Ljava/util/Collection;)V

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "socialmobiledb"

    const-string/jumbo v3, "mobile_record"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 162
    return-void

    .line 134
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;

    .line 135
    iget-object v1, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;

    .line 136
    iget-object v1, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    :cond_2
    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;

    move-object v2, v0

    .line 144
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 145
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v7, "SocialSdk_Sdk"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "addSyncData:\u6536\u5230\u6e05\u6d17\u901a\u8baf\u5f55"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\u4e2a\u6570"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 154
    invoke-virtual {p0, v7}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->updateMobileInfo(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 141
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v5

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 158
    :catch_0
    move-exception v1

    .line 159
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 147
    :cond_3
    :try_start_5
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;

    .line 148
    iget-object v3, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->removed:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->removed:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v9, "SocialSdk_Sdk"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "addSyncData:\u6536\u5230\u4e86\u88ab\u6d17\u6389\u7684"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v9, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 152
    :cond_4
    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v3, v4

    :goto_4
    const/4 v9, 0x0

    invoke-virtual {p0, v1, v7, v3, v9}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->convertMobileToAccount(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v3, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v3

    goto :goto_4
.end method

.method public checkIsGood()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearAllData()V
    .locals 7

    .prologue
    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u624b\u673a\u901a\u8baf\u5f55\u6570\u636e\u5168\u90e8\u6e05\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 103
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "socialmobiledb"

    const-string/jumbo v2, "mobile_record"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 111
    :goto_0
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public convertMobileToAccount(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;Ljava/util/List;ILjava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 198
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->filtered:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->filtered:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;-><init>()V

    .line 200
    const/4 v1, -0x2

    iput v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->friendStatus:I

    .line 201
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    .line 202
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    .line 203
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    .line 204
    if-eqz p4, :cond_1

    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    iput-object p4, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    .line 209
    :goto_0
    iput v5, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->activeAccount:I

    .line 210
    iput v5, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->matchedAccounts:I

    .line 211
    iput-boolean v5, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsMobile:Z

    .line 212
    iput p3, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->orderNum:I

    .line 213
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_0
    :goto_1
    return-void

    .line 207
    :cond_1
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_2
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->userList:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 217
    :cond_3
    new-instance v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    invoke-direct {v0}, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;-><init>()V

    .line 218
    const/4 v1, -0x1

    iput v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->friendStatus:I

    .line 219
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    .line 220
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    .line 221
    if-eqz p4, :cond_4

    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 222
    iput-object p4, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    .line 226
    :goto_2
    iput v5, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->activeAccount:I

    .line 227
    iput v5, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->matchedAccounts:I

    .line 228
    iput-boolean v5, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsMobile:Z

    .line 229
    iput p3, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->orderNum:I

    .line 230
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->initMobilePinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V

    .line 231
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_4
    iget-object v1, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    goto :goto_2

    .line 233
    :cond_5
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->userList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 235
    const/4 v1, 0x0

    move v6, v5

    move v2, v5

    .line 236
    :goto_3
    if-ge v6, v8, :cond_0

    .line 237
    iget-object v0, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->userList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;

    .line 238
    new-instance v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    invoke-direct {v7}, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;-><init>()V

    .line 239
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->userId:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->mobileId:Ljava/lang/String;

    .line 240
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alipayNickName:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->nickName:Ljava/lang/String;

    .line 241
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->remarkName:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->remarkName:Ljava/lang/String;

    .line 242
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->headPic:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->headImageUrl:Ljava/lang/String;

    .line 243
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_4
    iput v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->friendStatus:I

    .line 244
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->logonId:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->account:Ljava/lang/String;

    .line 245
    iget-object v3, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->active:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsActive:Z

    .line 246
    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneNo:Ljava/lang/String;

    .line 247
    if-eqz p4, :cond_7

    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 248
    iput-object p4, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    .line 252
    :goto_5
    add-int/lit8 v3, v6, 0x1

    iput v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->activeAccount:I

    .line 253
    iput v8, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->matchedAccounts:I

    .line 254
    iput p3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->orderNum:I

    .line 255
    if-ne v8, v4, :cond_8

    .line 256
    iput-boolean v4, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsMobile:Z

    move-object v0, v1

    move v1, v2

    .line 269
    :goto_6
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v7, v2}, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->initMobilePinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;)V

    .line 270
    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    move v2, v1

    move-object v1, v0

    goto :goto_3

    :cond_6
    move v3, v5

    .line 243
    goto :goto_4

    .line 250
    :cond_7
    iget-object v3, p1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->name:Ljava/lang/String;

    iput-object v3, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->phoneName:Ljava/lang/String;

    goto :goto_5

    .line 258
    :cond_8
    if-nez v6, :cond_9

    move-object v1, v7

    .line 261
    :cond_9
    if-nez v2, :cond_b

    .line 262
    iget-object v0, v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayUserinfo;->alreadyAdd:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsMobile:Z

    .line 263
    iget-boolean v0, v7, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsMobile:Z

    .line 265
    :goto_7
    if-nez v0, :cond_a

    add-int/lit8 v2, v8, -0x1

    if-ne v6, v2, :cond_a

    .line 266
    iput-boolean v4, v1, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;->showAsMobile:Z

    :cond_a
    move-object v9, v1

    move v1, v0

    move-object v0, v9

    goto :goto_6

    :cond_b
    move v0, v2

    goto :goto_7
.end method

.method public doSearchMobileCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 439
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "doSearchMobileCursor:\u641c\u7d22"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->getSystemContactCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "doSearchMobileCursor:\u7cfb\u7edf\u6ca1\u6709\u901a\u8baf\u5f55, \u76f4\u63a5\u8fd4\u56de\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setLocalMobileEmpty(Z)V

    .line 443
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 462
    :goto_0
    return-object v0

    .line 445
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->e:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    iget-object v2, v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->INDEX_NAME_MOBILE:Ljava/lang/String;

    .line 448
    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const/16 v0, 0x3e8

    .line 447
    :goto_1
    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->doSearch(Ljava/lang/String;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 450
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/IndexResult;

    .line 452
    const-string/jumbo v2, "mobile_record"

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 453
    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getRowIdList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alipay/android/phone/globalsearch/api/IndexResult;->getFieldList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0, p1, p2}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 457
    :cond_1
    invoke-static {v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a(Ljava/util/List;)Landroid/database/MatrixCursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 448
    :cond_2
    const/16 v0, 0x1f4

    goto :goto_1

    .line 458
    :catch_0
    move-exception v0

    .line 459
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 460
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadMobileAccountCursor(Ljava/util/HashMap;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 309
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->getSystemContactCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "loadMobileAccountCursor:\u7cfb\u7edf\u6ca1\u6709\u901a\u8baf\u5f55, \u76f4\u63a5\u8fd4\u56de\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setLocalMobileEmpty(Z)V

    .line 312
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 335
    :goto_0
    return-object v0

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setLocalMobileEmpty(Z)V

    .line 316
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "loadMobileAccountCursor:\u5f00\u59cb\u8bfb\u53d6\u901a\u8baf\u5f55\u670b\u53cb\u5217\u8868"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->refreshFriendsInfo(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 324
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "mobilePinyinStr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "matchedAccounts"

    .line 326
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 325
    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->ne(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->and()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v1, "showAsMobile"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 327
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 328
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadMobileAccountCursor:\u8bfb\u53d6\u901a\u8baf\u5f55\u670b\u53cb\u5217\u8868"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 319
    :catch_1
    move-exception v0

    .line 320
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public loadMobileCursor(Ljava/util/HashMap;)Landroid/database/Cursor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 342
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->getSystemContactCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "loadMobileCursor:\u7cfb\u7edf\u6ca1\u6709\u901a\u8baf\u5f55, \u76f4\u63a5\u8fd4\u56de\u7a7a"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setLocalMobileEmpty(Z)V

    .line 345
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 366
    :goto_0
    return-object v0

    .line 347
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->d:Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->setLocalMobileEmpty(Z)V

    .line 350
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->refreshFriendsInfo(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 356
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "mobilePinyinStr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v1, "phoneNo"

    invoke-virtual {v0, v1}, Lcom/j256/ormlite/stmt/QueryBuilder;->groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v1, v0}, Lcom/j256/ormlite/dao/Dao;->iterator(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableIterator;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/dao/CloseableIterator;->getRawResults()Lcom/j256/ormlite/support/DatabaseResults;

    move-result-object v0

    check-cast v0, Lcom/j256/ormlite/android/AndroidDatabaseResults;

    .line 359
    invoke-virtual {v0}, Lcom/j256/ormlite/android/AndroidDatabaseResults;->getRawCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 360
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "loadMobileCursor:\u8bfb\u53d6\u901a\u8baf\u5f55\u9009\u4eba\u5217\u8868"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 364
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "_id"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 351
    :catch_1
    move-exception v0

    .line 352
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public queryAccountByPhoneNumber(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 419
    const/4 v1, 0x0

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    const-string/jumbo v3, "activeAccount"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/QueryBuilder;->orderBy(Ljava/lang/String;Z)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    const-string/jumbo v3, "phoneNo"

    .line 422
    invoke-virtual {v0, v3, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->prepare()Lcom/j256/ormlite/stmt/PreparedQuery;

    move-result-object v0

    .line 424
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v3, v0}, Lcom/j256/ormlite/dao/Dao;->getWrappedIterable(Lcom/j256/ormlite/stmt/PreparedQuery;)Lcom/j256/ormlite/dao/CloseableWrappedIterable;

    move-result-object v1

    .line 425
    invoke-interface {v1}, Lcom/j256/ormlite/dao/CloseableWrappedIterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 435
    :cond_0
    :goto_1
    return-object v2

    .line 425
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;

    .line 426
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 428
    :catch_0
    move-exception v0

    .line 429
    :try_start_2
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    goto :goto_1

    .line 430
    :catchall_0
    move-exception v0

    .line 431
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v2, :cond_2

    .line 432
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeIterable(Lcom/j256/ormlite/dao/CloseableWrappedIterable;)V

    .line 434
    :cond_2
    throw v0
.end method

.method public queryByUserId(Ljava/lang/String;)Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;
    .locals 3

    .prologue
    .line 534
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->queryForId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    return-object v0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryDistinctPhoneNoCount()J
    .locals 6

    .prologue
    .line 370
    const-wide/16 v0, 0x0

    .line 372
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v2}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    const-string/jumbo v3, "phoneNo"

    invoke-virtual {v2, v3}, Lcom/j256/ormlite/stmt/QueryBuilder;->groupBy(Ljava/lang/String;)Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/j256/ormlite/stmt/QueryBuilder;->countOf()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 376
    :goto_0
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "queryDistinctPhoneNoCount:\u4e0b\u8f7d\u5230\u7684\u624b\u673a\u53f7\u7801\u4e2a\u6570"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-wide v0

    .line 373
    :catch_0
    move-exception v2

    .line 374
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public refreshFriendsInfo(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/framework/service/ext/contact/ContactAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "refreshFriendsInfo:\u83b7\u53d6\u597d\u53cb\u5217\u8868\u66f4\u65b0\u624b\u673a\u901a\u8baf\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/UserIndependentCache;->getCacheObj(Ljava/lang/Class;)Lcom/alipay/mobile/socialsdk/bizdata/data/DaoOpBase;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;

    .line 383
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/AliAccountDaoOp;->queryFriendsForMobile(Ljava/util/HashMap;)V

    .line 384
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refreshFriendsInfo:\u83b7\u53d6\u5230\u597d\u53cb\u5217\u8868"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 389
    sget-wide v2, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->h:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x1388

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 390
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "refreshFriendsInfo:\u8ddd\u79bb\u4e0a\u6b21\u5237\u65b0\u901a\u8baf\u5f55\u597d\u53cb\u72b6\u6001\u95f4\u9694\u672a\u5230,\u4e0d\u5237\u65b0"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_1
    sput-wide v0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->h:J

    .line 394
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v1, Lcom/alipay/mobile/socialsdk/bizdata/data/k;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/k;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;Ljava/util/HashMap;)V

    invoke-interface {v0, v1}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "refreshFriendsInfo:\u66f4\u65b0\u5230\u624b\u673a\u901a\u8baf\u5f55"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateMobileInfo(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/personalbase/model/MobileRecordAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    :try_start_0
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->b:Lcom/j256/ormlite/dao/Dao;

    new-instance v2, Lcom/alipay/mobile/socialsdk/bizdata/data/j;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/data/j;-><init>(Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;Ljava/util/List;)V

    invoke-interface {v0, v2}, Lcom/j256/ormlite/dao/Dao;->callBatchTasks(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 115
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v1, "socialmobiledb"

    const-string/jumbo v2, "mobile_record"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 130
    :goto_0
    return-void

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 127
    :catch_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateSyncData(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 165
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 166
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 171
    invoke-direct {p0, v2}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a(Ljava/util/HashSet;)Ljava/util/HashMap;

    move-result-object v6

    .line 172
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 174
    :try_start_0
    const-class v7, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :try_start_1
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->a(Ljava/util/Collection;)V

    .line 176
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 174
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->c:Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;

    const-string/jumbo v2, "socialmobiledb"

    const-string/jumbo v3, "mobile_record"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/personalbase/service/DataSetNotificationService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 193
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->f:Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v1}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 194
    return-void

    .line 166
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;

    .line 167
    iget-object v1, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;

    .line 168
    iget-object v1, v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    :cond_2
    :try_start_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;

    move-object v3, v0

    .line 177
    iget-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 178
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v4, "SocialSdk_Sdk"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "updateSyncData:\u6536\u5230\u901a\u8baf\u5f55\u53d8\u66f4"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v3, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u4e2a\u6570"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v4, v9}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 180
    iget-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->contacts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4

    .line 186
    invoke-virtual {p0, v9}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->updateMobileInfo(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 174
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v7

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 190
    :catch_0
    move-exception v1

    .line 191
    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->g:Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    const-string/jumbo v3, "SocialSdk_Sdk"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 180
    :cond_4
    :try_start_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;

    move-object v2, v0

    .line 181
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 182
    iget-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    if-nez v1, :cond_5

    move v4, v5

    .line 183
    :goto_4
    iget-object v1, v2, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;->mobile:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    invoke-virtual {p0, v2, v9, v4, v1}, Lcom/alipay/mobile/socialsdk/bizdata/data/MobileRecordDaoOp;->convertMobileToAccount(Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;Ljava/util/List;ILjava/lang/String;)V

    goto :goto_3

    :cond_5
    iget-object v1, v3, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactOperationSync;->order:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v1

    move v4, v1

    goto :goto_4
.end method
