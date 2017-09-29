.class public Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "MsgSkinOrmliteHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "skinconfigdb%s.db"

.field public static final DB_NAME:Ljava/lang/String; = "skinconfigdb"

.field public static final TABLE_NAME:Ljava/lang/String; = "skin"

.field private static a:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;


# instance fields
.field public mDbName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 98
    .line 99
    if-nez p1, :cond_1

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 102
    :cond_1
    const/4 v2, 0x0

    .line 104
    :try_start_0
    const-string/jumbo v3, "select count(*) as c from Sqlite_master  where type =? and name =? "

    .line 105
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getReadableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v7, "table"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 106
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 107
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 108
    if-lez v3, :cond_2

    move v0, v1

    .line 115
    :cond_2
    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 112
    :catch_0
    move-exception v1

    .line 113
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_PersonalBase"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    if-eqz v2, :cond_0

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    if-eqz v2, :cond_3

    .line 116
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 118
    :cond_3
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;
    .locals 6

    .prologue
    .line 44
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    const-string/jumbo v3, "skinconfigdb"

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;

    .line 46
    :cond_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized createTableIfNotExist(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;",
            "Ljava/lang/String;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 76
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u5efa\u8868"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->getCreateTableStatements(Lcom/j256/ormlite/dao/Dao;Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Ljava/util/List;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 88
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 93
    :try_start_3
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86
    :cond_1
    :try_start_4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/database/SQLException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 85
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 93
    :try_start_6
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 92
    :catchall_1
    move-exception v0

    .line 93
    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 94
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public getDbDao(Ljava/lang/Class;Ljava/lang/String;)Lcom/j256/ormlite/dao/Dao;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D::",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;*>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TD;"
        }
    .end annotation

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/j256/ormlite/android/DatabaseTableConfigUtil;->fromClass(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)Lcom/j256/ormlite/table/DatabaseTableConfig;

    move-result-object v2

    .line 65
    invoke-virtual {v2, p2}, Lcom/j256/ormlite/table/DatabaseTableConfig;->setTableName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/alipay/mobile/personalbase/db/MultiInstancesDaoManager;->createDao(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)Lcom/j256/ormlite/dao/Dao;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    :try_start_1
    invoke-virtual {p0, v0, p2, v2}, Lcom/alipay/mobile/socialsdk/bizdata/db/MsgSkinOrmliteHelper;->createTableIfNotExist(Lcom/j256/ormlite/dao/Dao;Ljava/lang/String;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    :try_end_1
    .catch Ljava/sql/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    .line 71
    :goto_0
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    .line 69
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 68
    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .prologue
    .line 58
    return-void
.end method
