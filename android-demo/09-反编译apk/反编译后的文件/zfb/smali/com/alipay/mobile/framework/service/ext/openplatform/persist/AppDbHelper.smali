.class public Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "AppDbHelper.java"


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "open_platform_apps.db"

.field private static final DATABASE_VERSION:I = 0x13

.field private static final TAG:Ljava/lang/String; = "AppDbHelper"

.field private static instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

.field private static objLock:Ljava/lang/Object;


# instance fields
.field private appEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDbConnection:I

.field private mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private stageEntityDao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->objLock:Ljava/lang/Object;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 65
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "open_platform_apps.db"

    const/4 v2, 0x0

    const/16 v3, 0x13

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 67
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 68
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 67
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getDbHelper()Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;
    .locals 3

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    if-nez v0, :cond_1

    .line 53
    sget-object v1, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->objLock:Ljava/lang/Object;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    if-nez v0, :cond_0

    .line 55
    sget-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->objLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;-><init>()V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    .line 55
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :cond_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :cond_1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 53
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 8

    .prologue
    .line 256
    :try_start_0
    sget-object v7, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->objLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    if-eqz v0, :cond_0

    .line 258
    monitor-exit v7

    .line 280
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    .line 262
    const-string/jumbo v0, "search"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "openPlatfrom start index connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 264
    const-string/jumbo v1, "open_platform_apps.db"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v2, "open_platform_apps.db"

    iget v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    invoke-virtual {v1, v0, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;I)V

    .line 266
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 267
    const-string/jumbo v0, "name"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string/jumbo v0, "desc"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "app"

    const-string/jumbo v2, "open_platform_apps.db"

    const-string/jumbo v3, "AppEntity"

    const-string/jumbo v4, "appId"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 256
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7

    throw v0
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 280
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 336
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 337
    const-string/jumbo v0, "AppDbHelper"

    const-string/jumbo v1, "open_platform_apps.db onClose !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    sput-object v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->instance:Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    .line 339
    iput-object v2, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "open_platform_apps.db"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 343
    :cond_0
    return-void
.end method

.method public getAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 293
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->appEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFastLoginAppEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 304
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->fastLoginAppEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getStageEntityDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->stageEntityDao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 311
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->stageEntityDao:Lcom/j256/ormlite/dao/Dao;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->stageEntityDao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 285
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 5

    .prologue
    .line 85
    :try_start_0
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 86
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 87
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "openPlatfrom start index, on onUpgrade !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 97
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t create database"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 321
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 322
    const-string/jumbo v0, "AppDbHelper"

    const-string/jumbo v1, "open_platform_apps.db onOpen !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 324
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "open_platform_apps.db"

    iget v3, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mDbConnection:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->hookDB(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 326
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;

    invoke-direct {v0}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->mSearchService:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0, p1, v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/OpenplatformQueryListener;->registerQueryListeners(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;)V

    .line 329
    :cond_0
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 5

    .prologue
    .line 106
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onUpgrade, oldVersion:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",newVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    packed-switch p3, :pswitch_data_0

    .line 243
    :goto_0
    :pswitch_0
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "openPlatfrom start index, on onUpgrade !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;->initGlobalSearch(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 245
    return-void

    .line 116
    :pswitch_1
    :try_start_0
    const-string/jumbo v0, "DROP TABLE AppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    :try_start_1
    const-string/jumbo v0, "DROP TABLE MyAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    :goto_2
    :try_start_2
    const-string/jumbo v0, "DROP TABLE FastLoginAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 131
    :goto_3
    :try_start_3
    const-string/jumbo v0, "DROP TABLE HomeAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 136
    :goto_4
    :try_start_4
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/AppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 137
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 138
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/FastLoginAppEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_4
    .catch Ljava/sql/SQLException; {:try_start_4 .. :try_end_4} :catch_4

    .line 143
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "upgrade db from version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " success"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table AppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table MyAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :catch_2
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table FastLoginAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 133
    :catch_3
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table HomeAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 139
    :catch_4
    move-exception v0

    .line 140
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-class v2, Lcom/alipay/mobile/framework/service/ext/openplatform/persist/AppDbHelper;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Can\'t create database"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 147
    :pswitch_2
    :try_start_5
    const-class v0, Lcom/alipay/mobile/framework/service/ext/openplatform/domain/StageEntity;

    invoke-static {p2, v0}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I

    .line 148
    const-string/jumbo v0, "alter table AppEntity add column autoUpdate integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v0, "alter table AppEntity add column pkgPath TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    const-string/jumbo v0, "alter table AppEntity add column pkgVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "alter table AppEntity add column preinstall integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string/jumbo v0, "alter table AppEntity add column localIcon TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "update AppEntity set autoUpdate=1 where autoStatus=?;"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "auto"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    const-string/jumbo v0, "update AppEntity set autoUpdate=0 where autoStatus=?;"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "manual"

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/sql/SQLException; {:try_start_5 .. :try_end_5} :catch_6

    .line 163
    :goto_5
    :try_start_6
    const-string/jumbo v0, "ALTER table AppEntity add column movable integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "ALTER table AppEntity add column canSearch integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "ALTER table AppEntity add column searchKey TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    .line 170
    :goto_6
    :try_start_7
    const-string/jumbo v0, "DROP TABLE MyAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_0

    .line 172
    :catch_5
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table MyAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :catch_6
    move-exception v0

    .line 159
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    const-string/jumbo v3, "upgrade exception"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-virtual {v0}, Ljava/sql/SQLException;->printStackTrace()V

    goto :goto_5

    .line 166
    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 177
    :pswitch_3
    :try_start_8
    const-string/jumbo v0, "alter table AppEntity add column preinstall integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_9

    .line 183
    :goto_7
    :pswitch_4
    :try_start_9
    const-string/jumbo v0, "alter table StageEntity add column maxShowAppNum integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_a

    .line 189
    :goto_8
    :pswitch_5
    :try_start_a
    const-string/jumbo v0, "alter table AppEntity add column localIcon TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 190
    const-string/jumbo v0, "alter table StageEntity add column templateId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v0, "alter table StageEntity add column appId TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    .line 197
    :goto_9
    :pswitch_6
    :try_start_b
    const-string/jumbo v0, "alter table AppEntity add column preinstallVersion TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "alter table StageEntity add column parentStageCode TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 204
    :goto_a
    :pswitch_7
    :try_start_c
    const-string/jumbo v0, "alter table StageEntity add column rank integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_d

    .line 210
    :goto_b
    :pswitch_8
    :try_start_d
    const-string/jumbo v0, "alter table AppEntity add column incrementPkgUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_e

    .line 216
    :goto_c
    :pswitch_9
    :try_start_e
    const-string/jumbo v0, "alter table AppEntity add column h5AppCdnBaseUrl TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    .line 222
    :goto_d
    :pswitch_a
    :try_start_f
    const-string/jumbo v0, "DROP TABLE MyAppEntity;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_10

    .line 227
    :goto_e
    :try_start_10
    const-string/jumbo v0, "ALTER table AppEntity add column movable integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 228
    const-string/jumbo v0, "ALTER table AppEntity add column canSearch integer;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 229
    const-string/jumbo v0, "ALTER table AppEntity add column searchKey TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    const-string/jumbo v0, "ALTER table AppEntity add column appSource TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_11

    .line 236
    :goto_f
    :pswitch_b
    :try_start_11
    const-string/jumbo v0, "ALTER table AppEntity add column language TEXT;"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_0

    .line 237
    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    :catch_9
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 184
    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 192
    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 199
    :catch_c
    move-exception v0

    .line 200
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 205
    :catch_d
    move-exception v0

    .line 206
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 211
    :catch_e
    move-exception v0

    .line 212
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 217
    :catch_f
    move-exception v0

    .line 218
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "AppDbHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d

    .line 224
    :catch_10
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "AppDbHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "drop db table MyAppEntity ErrorOldVersion ="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 231
    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method
