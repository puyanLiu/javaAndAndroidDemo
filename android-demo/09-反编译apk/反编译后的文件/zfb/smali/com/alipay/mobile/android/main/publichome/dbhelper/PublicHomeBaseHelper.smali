.class public Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "PublicHomeBaseHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "publicHome.db"

.field private static a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:[Ljava/lang/String;

.field private d:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 74
    const-string/jumbo v0, "publicHome.db"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 70
    iput-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    .line 71
    iput-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->e:Lcom/j256/ormlite/dao/Dao;

    .line 75
    iput-object p1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b:Landroid/content/Context;

    .line 76
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 78
    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,msgNoteType,topOperateTime,localDelete,operateProperties"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 81
    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,topOperateTime,localDelete,operateProperties"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 85
    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,top,localDelete,operateProperties"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 89
    const-string/jumbo v2, "avatar,followObjectId,followType,gmtFollowTime,latestMsg,latestMsgThridAccount,name,publicType,unReadMsgCount,userId,localDelete,operateProperties"

    aput-object v2, v0, v1

    .line 76
    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->c:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method private a()V
    .locals 4

    .prologue
    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicHomeBaseHelper"

    const-string/jumbo v3, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 423
    const-string/jumbo v0, "ALTER TABLE followaccountinfomodel  ADD COLUMN disturb SAMLLINT  DEFAULT 1; "

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "ALTER TABLE followaccountinfomodel  ADD COLUMN lastOperateTime BITINT; "

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 425
    const-string/jumbo v0, "ALTER TABLE followaccountinfomodel  ADD COLUMN tabCalculate SAMLLINT DEFAULT 0; "

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 426
    const-string/jumbo v0, "UPDATE followaccountinfomodel SET unReadMsgCount=? where followType=?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "PUBLIC"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method private a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 298
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicHomeBaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateDatabase() fromVersion:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " toVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 301
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicHomeBaseHelper"

    const-string/jumbo v2, "updateDatabase()\u88ab\u4f20\u5165\u4e86\u4e0d\u5408\u6cd5\u53c2\u6570"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const/4 v0, 0x0

    .line 327
    :goto_0
    return v0

    .line 307
    :cond_1
    if-ne p3, v0, :cond_4

    .line 308
    invoke-static {p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->c()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicHomeBaseHelper"

    const-string/jumbo v3, "ppchatDB\u4e0d\u5b58\u5728\uff0c\u4e0d\u66f4\u65b0"

    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->createRecmmendTable()V

    .line 310
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a()V

    .line 311
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b()V

    .line 312
    invoke-static {p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 323
    :cond_2
    :goto_2
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    :catch_0
    move-exception v1

    .line 325
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PublicHomeBaseHelper"

    const-string/jumbo v4, "initFollowAccountShowModel exception "

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 308
    :cond_3
    :try_start_1
    const-string/jumbo v1, "drop table if exists pub_svc_third_account;"

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_3
    :try_start_2
    const-string/jumbo v1, "drop table if exists pub_svc_account;"

    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_4
    :try_start_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 313
    :cond_4
    const/4 v1, 0x2

    if-ne p3, v1, :cond_5

    .line 314
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->createRecmmendTable()V

    .line 315
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a()V

    .line 316
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b()V

    .line 317
    invoke-static {p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    goto :goto_2

    .line 318
    :cond_5
    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    .line 319
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a()V

    .line 320
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b()V

    goto :goto_2
.end method

.method static synthetic access$0(Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 7

    .prologue
    .line 542
    const-string/jumbo v0, "search"

    const-string/jumbo v1, "publicplatform start index"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "publicHome.db"

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "name"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "publicplatform"

    const-string/jumbo v2, "publicHome.db"

    const-string/jumbo v3, "FollowAccountBaseInfo"

    const-string/jumbo v4, "id"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicHomeBaseHelper"

    const-string/jumbo v3, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 479
    const-string/jumbo v0, "create table if not exists pub_svc_account(publicId TEXT,layoutModel TEXT,pubSvcSetBean TEXT,userId TEXT,h5preloadTime interger,primary key(publicId,userId));"

    .line 482
    const-string/jumbo v1, "create table if not exists pub_svc_third_account(thirdAccountId TEXT,publicId TEXT,agreementId TEXT,displayName TEXT,realName TEXT,remarkName TEXT,menuContent TEXT,userId TEXT,primary key(agreementId,thirdAccountId,publicId));"

    .line 486
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 488
    return-void
.end method

.method private c()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 257
    .line 258
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 266
    :goto_0
    return-object v0

    .line 262
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b:Landroid/content/Context;

    const-string/jumbo v2, "public_service.db"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "PublicHomeBaseHelper"

    const-string/jumbo v4, "\u83b7\u53d6\u65e7\u7684ppchat\u6570\u636e\u5e93\u53d1\u751f\u5f02\u5e38"

    invoke-interface {v2, v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private c(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 527
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper$1;-><init>(Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    invoke-static {v0}, Lcom/googlecode/androidannotations/api/BackgroundExecutor;->execute(Ljava/lang/Runnable;)V

    .line 539
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "publicHome.db"

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->hookDB(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 540
    return-void
.end method

.method private d()V
    .locals 8

    .prologue
    .line 334
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicHomeBaseHelper"

    const-string/jumbo v2, "\u5f00\u59cb\u521d\u59cb\u5316initFollowAccountShowModel"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-class v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 336
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 343
    const-class v2, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;

    .line 345
    if-eqz v0, :cond_2

    .line 346
    :try_start_0
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->loadPinyinLib()V

    .line 348
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    .line 411
    if-eqz v0, :cond_0

    .line 412
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    goto :goto_0

    .line 348
    :cond_4
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;

    .line 349
    if-eqz v1, :cond_3

    .line 350
    const-string/jumbo v2, "ALIPAY_MSG"

    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 353
    const-string/jumbo v2, "2014120100018252"

    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 355
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    .line 360
    iget-object v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    .line 359
    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountBaseInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    move-result-object v2

    .line 361
    if-nez v2, :cond_6

    .line 362
    new-instance v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    invoke-direct {v4, v2, v5}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->avatar:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->avatar:Ljava/lang/String;

    .line 364
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cltDefIconType:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->cltDefIconType:Ljava/lang/String;

    .line 365
    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getDeleteType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->deleteType:Ljava/lang/String;

    .line 366
    iget-boolean v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->disturb:Z

    iput-boolean v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->disturb:Z

    .line 367
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followType:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->followType:Ljava/lang/String;

    .line 368
    iget-wide v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gmtFollowTime:J

    iput-wide v5, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gmtFollowTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    :try_start_2
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 371
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->gotoAppUri:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/publicsvc/common/proguard/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->gotoAppUri:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    :cond_5
    :goto_2
    :try_start_3
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->msgNoteType:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->msgNoteType:Ljava/lang/String;

    .line 378
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->name:Ljava/lang/String;

    .line 379
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->publicType:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->publicType:Ljava/lang/String;

    .line 380
    invoke-virtual {v1}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->getTopType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->topType:Ljava/lang/String;

    .line 381
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->wgtMsgId:Ljava/lang/String;

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->wgtMsgId:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 383
    :try_start_4
    iget-object v2, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->name:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/publicplatform/common/api/impl/PinyinUtils;->name2Pinyin(Lcom/alipay/mobile/personalbase/service/PinyinSearchService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->pinyin:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 387
    :goto_3
    :try_start_5
    const-string/jumbo v2, "1"

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->isFollow:Ljava/lang/String;

    .line 388
    const-string/jumbo v2, "0"

    iput-object v2, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->vip:Ljava/lang/String;

    .line 389
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    iget-object v5, v4, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;->userId:Ljava/lang/String;

    invoke-interface {v2, v5, v4}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->saveFollowBaseAccountInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;)V

    .line 393
    :cond_6
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v2

    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    .line 394
    iget-object v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    .line 393
    invoke-interface {v2, v4, v5}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->getFollowAccountShowInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    move-result-object v2

    .line 395
    if-nez v2, :cond_7

    .line 396
    new-instance v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    iget-object v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->userId:Ljava/lang/String;

    iget-object v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->followObjectId:Ljava/lang/String;

    invoke-direct {v2, v4, v5}, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_7
    iget-wide v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->lastOperateTime:J

    iput-wide v4, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->lastOperateTime:J

    .line 399
    iget-wide v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topOperateTime:J

    iput-wide v4, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->topOperateTime:J

    .line 400
    const-string/jumbo v4, "default"

    iget-object v5, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->topType:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-boolean v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->cancelDefaultTop:Z

    if-eqz v4, :cond_9

    .line 401
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z

    .line 406
    :goto_4
    iget v1, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->unReadMsgCount:I

    iput v1, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->markUnReadMsgCount:I

    .line 408
    invoke-static {}, Lcom/alipay/android/phone/publicplatform/common/api/DaoHelper;->getFollowAccountInfoDaoInstance()Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;

    move-result-object v1

    iget-object v4, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v2}, Lcom/alipay/mobile/android/main/publichome/dao/FollowAccountInfoDao;->updateFollowAccountShowInfo(Ljava/lang/String;Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 410
    :catchall_0
    move-exception v1

    .line 411
    if-eqz v0, :cond_8

    .line 412
    invoke-virtual {v0}, Lcom/alipay/mobile/personalbase/service/PinyinSearchService;->releasePinyinLib()V

    .line 414
    :cond_8
    throw v1

    .line 373
    :catch_0
    move-exception v2

    .line 374
    :try_start_6
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PublicHomeBaseHelper"

    const-string/jumbo v7, "decrpty gotoAppUri  exception "

    invoke-interface {v5, v6, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 384
    :catch_1
    move-exception v2

    .line 385
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PublicHomeBaseHelper"

    const-string/jumbo v7, "convert pinyin exception "

    invoke-interface {v5, v6, v7, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 404
    :cond_9
    iget-boolean v4, v1, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountInfoModel;->top:Z

    iput-boolean v4, v2, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;->top:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4
.end method

.method public static final declared-synchronized getInstance()Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
    .locals 3

    .prologue
    .line 50
    const-class v1, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;

    .line 54
    :cond_1
    sget-object v0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a:Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 157
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v1, "publicHome.db"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    .line 159
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 160
    return-void
.end method

.method public createNewTable(Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    invoke-static {v0, p1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicHomeBaseHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u4e3aClass:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\u521b\u5efa\u65b0\u8868\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public createRecmmendTable()V
    .locals 4

    .prologue
    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/mobile/publicrecom/dao/dataobject/PublicRecommendDo;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTableIfNotExists(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "PublicHomeBaseHelper"

    const-string/jumbo v3, "\u521b\u5efa\u6570\u636e\u5e93\u5931\u8d25"

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 434
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFollowAccountInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 176
    const-class v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountBaseInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->d:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public getFollowAccountShowInfoDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->e:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 183
    const-class v0, Lcom/alipay/mobile/android/main/publichome/dao/impl/FollowAccountShowInfo;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->e:Lcom/j256/ormlite/dao/Dao;

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->e:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method protected onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 198
    return-void
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 3

    .prologue
    .line 95
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "PublicHomeBaseHelper"

    const-string/jumbo v2, "onCreate"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a()V

    .line 101
    invoke-direct {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b()V

    .line 108
    invoke-virtual {p0}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->createRecmmendTable()V

    .line 109
    invoke-static {p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->b(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->c(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 112
    return-void
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 165
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->c(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 166
    return-void
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 0

    .prologue
    .line 190
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)Z

    .line 192
    invoke-direct {p0, p1}, Lcom/alipay/mobile/android/main/publichome/dbhelper/PublicHomeBaseHelper;->c(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 193
    return-void
.end method
