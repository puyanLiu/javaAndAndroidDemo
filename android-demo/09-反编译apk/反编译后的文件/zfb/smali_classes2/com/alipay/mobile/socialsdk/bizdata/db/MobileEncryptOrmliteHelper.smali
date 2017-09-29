.class public Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;
.super Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;
.source "MobileEncryptOrmliteHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "socialmobiledb"

.field public static final MOBILE_TABLE:Ljava/lang/String; = "mobile_record"

.field public static final UPLOAD_RECORD_TABLE:Ljava/lang/String; = "upload_record"

.field private static b:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;


# instance fields
.field public INDEX_NAME_MOBILE:Ljava/lang/String;

.field private final a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field public mDbName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 33
    const-string/jumbo v0, "socialmobiledb%s.db"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    .line 34
    const-string/jumbo v0, "socialmobiledb%s.db"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    .line 35
    const-string/jumbo v0, "mobile%s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->INDEX_NAME_MOBILE:Ljava/lang/String;

    .line 37
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 38
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 37
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 56
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->closeSearchHook()V

    .line 57
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->b:Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :cond_0
    monitor-exit v1

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeSearchHook()V
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 6

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 64
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 67
    if-nez v4, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 77
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 80
    if-nez v4, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 85
    :goto_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->updateMobileSearchIndex()V

    .line 86
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onTableCreated(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 108
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8868"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u521b\u5efa\u597d,\u521b\u5efa\u641c\u7d22\u7d22\u5f15"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string/jumbo v0, "mobile_record"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->updateMobileSearchIndex()V

    .line 112
    :cond_0
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V

    .line 92
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 93
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece1\u53472"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE mobile_record ADD COLUMN orderNum INTEGER"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece1\u53472, \u624b\u673a\u901a\u8baf\u5f55\u8868\u5b57\u6bb5\u53d8\u66f4"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :cond_0
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 96
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_Sdk"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateMobileSearchIndex()V
    .locals 8

    .prologue
    .line 115
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 116
    const-string/jumbo v0, "phoneNo"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    const-string/jumbo v0, "phoneName"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 119
    const-string/jumbo v0, "phoneName"

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->a:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->INDEX_NAME_MOBILE:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/MobileEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "mobile_record"

    const-string/jumbo v4, "_id"

    .line 121
    const/4 v7, 0x0

    .line 120
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 122
    return-void
.end method
