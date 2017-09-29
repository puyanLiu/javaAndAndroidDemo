.class public Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;
.super Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;
.source "ChatEncryptOrmliteHelper.java"


# static fields
.field public static final BUNDLE_NAME:Ljava/lang/String; = "chatmsg"

.field public static final DATABASE_NAME:Ljava/lang/String; = "chatmsgdb%s.db"

.field public static final DB_NAME:Ljava/lang/String; = "chatmsgdb"

.field public static final GROUP_CHAT_TABLE:Ljava/lang/String; = "group_chat_"

.field public static final INDEX_NAME_CHAT_PRE:Ljava/lang/String; = "chatmsg%s"

.field public static final PERSONAL_CHAT_TABLE:Ljava/lang/String; = "personal_chat_"

.field public static final RESULT_BUNDLE_CHAT:Ljava/lang/String; = "chatmsg"

.field private static a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;


# instance fields
.field public INDEX_NAME_CHAT:Ljava/lang/String;

.field private final b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private c:I

.field private d:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

.field public mDbName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 38
    const-string/jumbo v0, "chatmsgdb%s.db"

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

    .line 39
    const-string/jumbo v0, "chatmsgdb%s.db"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "chatmsg%s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->INDEX_NAME_CHAT:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 43
    const-class v1, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 42
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 56
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 51
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 60
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->closeSearchHook()V

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit v1

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeSearchHook()V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public deleteAllTable()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 101
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getWritableDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 104
    const-string/jumbo v2, "SELECT name FROM sqlite_master WHERE type=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "table"

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 106
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    .line 120
    :cond_0
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 124
    :cond_1
    :goto_1
    return-void

    .line 108
    :cond_2
    :try_start_1
    const-string/jumbo v2, "name"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 109
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->deleteIndex(Ljava/lang/String;Ljava/util/List;)V

    .line 110
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "SocialSdk_PersonalBase"

    invoke-interface {v3, v4, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "SocialSdk_PersonalBase"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    if-eqz v1, :cond_1

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    if-eqz v1, :cond_3

    .line 121
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_3
    throw v0
.end method

.method public deleteIndex(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->INDEX_NAME_CHAT:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->deleteIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 147
    return-void
.end method

.method public getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    return-object v0
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 6

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->c:I

    .line 74
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 77
    if-nez v4, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->c:I

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    iget v3, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->c:I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 87
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 90
    if-nez v4, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 95
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatMsgDbScanner;->startScanMsgDbAsync()V

    .line 96
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    .line 97
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->d:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->registerChatListener(Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;)V

    .line 98
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onTableCreated(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 128
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

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

    .line 129
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 130
    const-string/jumbo v0, "personal_chat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string/jumbo v0, "bizMemo"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->INDEX_NAME_CHAT:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    .line 133
    const-string/jumbo v7, "templateCode=\'11\'"

    move-object v3, p1

    .line 132
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string/jumbo v0, "group_chat_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const-string/jumbo v0, "bizMemo"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->INDEX_NAME_CHAT:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ChatEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v4, "clientMsgId"

    .line 137
    const-string/jumbo v7, "templateCode=\'11\'"

    move-object v3, p1

    .line 136
    invoke-virtual/range {v0 .. v7}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method
