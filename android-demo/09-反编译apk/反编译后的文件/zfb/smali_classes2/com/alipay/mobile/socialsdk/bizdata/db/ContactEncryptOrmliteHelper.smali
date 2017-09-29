.class public Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;
.super Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;
.source "ContactEncryptOrmliteHelper.java"


# static fields
.field public static final ALI_ACCOUNT_TABLE:Ljava/lang/String; = "ali_account"

.field public static final CHAT_RELATION_TABLE:Ljava/lang/String; = "chat_relation"

.field public static final CONTACT_BUNDLE_NAME:Ljava/lang/String; = "contact"

.field public static final CONTACT_RELATION_TABLE:Ljava/lang/String; = "contact_relation"

.field public static final DB_NAME:Ljava/lang/String; = "contactsdb"

.field public static final GROUP_BUNDLE_NAME:Ljava/lang/String; = "group"

.field public static final GROUP_INFO_TABLE:Ljava/lang/String; = "chatgroup_info"

.field public static final NEW_FRIEND_RECENT_TABLE:Ljava/lang/String; = "new_friend"

.field public static final PERSONAL_WALL_RELATION_TABLE:Ljava/lang/String; = "personal_wall_relation"

.field public static final RECENT_SESSION_TABLE:Ljava/lang/String; = "recent_session"

.field public static final RECOMMENDATION_FRIEND_TABLE:Ljava/lang/String; = "recommendation_friend"

.field public static final RESULT_BUNDLE_CONTACT:Ljava/lang/String; = "contact"

.field public static final RESULT_BUNDLE_GROUP:Ljava/lang/String; = "group"

.field public static final UID_MAPPING_TABLE:Ljava/lang/String; = "uid_mapping"

.field public static final UPLOAD_RECORD_TABLE:Ljava/lang/String; = "upload_record"

.field private static a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;


# instance fields
.field public INDEX_NAME_GROUP:Ljava/lang/String;

.field public INDEX_NAME_GROUPNICK:Ljava/lang/String;

.field public INDEX_NAME_PERSON:Ljava/lang/String;

.field public INDEX_NAME_PERSONFRIEND:Ljava/lang/String;

.field private final b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

.field private c:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

.field private d:Z

.field public mDbName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 60
    const-string/jumbo v0, "contactsdb%s.db"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x5

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    .line 57
    iput-boolean v6, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->d:Z

    .line 61
    const-string/jumbo v0, "contactsdb%s.db"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "contact_v2_%s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSON:Ljava/lang/String;

    .line 63
    const-string/jumbo v0, "contact_friend_%s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSONFRIEND:Ljava/lang/String;

    .line 64
    const-string/jumbo v0, "group%s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUP:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "group_nick%s"

    new-array v1, v7, [Ljava/lang/Object;

    aput-object p2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUPNICK:Ljava/lang/String;

    .line 67
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
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    .line 69
    return-void
.end method

.method private a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece4\u53475"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string/jumbo v0, "ALTER TABLE chatgroup_info ADD COLUMN openInvSwitch SMALLINT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece4\u53475, \u7fa4\u8868\u5b57\u6bb5\u53d8\u66f4"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string/jumbo v0, "ALTER TABLE ali_account RENAME TO temp_account"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 157
    const-string/jumbo v0, "CREATE TABLE `ali_account` (`account` VARCHAR , `area` VARCHAR , `blacked` SMALLINT , `displayName` VARCHAR , `extVersion` BIGINT , `firstAlphaChar` VARCHAR , `friendStatus` INTEGER , `gender` VARCHAR , `headImageUrl` VARCHAR , `hideRealName` SMALLINT , `isTop` SMALLINT , `matchedPinyinStr` VARCHAR , `name` VARCHAR , `nickName` VARCHAR , `notDisturb` SMALLINT , `province` VARCHAR , `realNameStatus` VARCHAR , `remarkName` VARCHAR , `signature` VARCHAR , `source` VARCHAR , `sourceDec` VARCHAR , `starFriend` SMALLINT , `userGrade` VARCHAR , `_id` VARCHAR , `version` BIGINT ,PRIMARY KEY (`_id`) )"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "INSERT INTO ali_account SELECT `account`, `area`, `blacked`, `displayName`, `extVersion`, `firstAlphaChar`, `friendStatus`, `gender`, `headImageUrl`, `hideRealName`, `isTop`, `matchedPinyinStr`, `name`, `nickName`, `notDisturb`, `province`, `realNameStatus`, `remarkName`, `signature`, `source`, `sourceDec`, `starFriend`, `userGrade`, `_id`, `version` FROM temp_account where friendStatus<>?"

    .line 169
    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string/jumbo v0, "ALTER TABLE ali_account ADD COLUMN realNameVisable SMALLINT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string/jumbo v0, "ALTER TABLE ali_account ADD COLUMN zmCreditText TEXT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "ALTER TABLE ali_account ADD COLUMN zmCreditUrl TEXT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string/jumbo v0, "ALTER TABLE ali_account ADD COLUMN lifeCircleType TEXT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v0, "DROP TABLE temp_account"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    const-string/jumbo v0, "CREATE INDEX `ali_account_matchedPinyinStr_idx` ON `ali_account` (`matchedPinyinStr`)"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    iput-boolean v4, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->d:Z

    .line 177
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece4\u53475, \u597d\u53cb\u8868\u5b57\u6bb5\u53d8\u66f4"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string/jumbo v0, "ALTER TABLE recommendation_friend RENAME TO temp_recommendation"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    const-string/jumbo v0, "CREATE TABLE `recommendation_friend` (`action` VARCHAR , `creator` SMALLINT , `from` VARCHAR , `mark` VARCHAR , `read` SMALLINT , `requestType` INTEGER , `time` BIGINT , `touch` SMALLINT , `account` VARCHAR , `area` VARCHAR , `blacked` SMALLINT , `displayName` VARCHAR , `extVersion` BIGINT , `firstAlphaChar` VARCHAR , `friendStatus` INTEGER , `gender` VARCHAR , `headImageUrl` VARCHAR , `hideRealName` SMALLINT , `isTop` SMALLINT , `matchedPinyinStr` VARCHAR , `name` VARCHAR , `nickName` VARCHAR , `notDisturb` SMALLINT , `province` VARCHAR , `realNameStatus` VARCHAR , `remarkName` VARCHAR , `signature` VARCHAR , `source` VARCHAR , `sourceDec` VARCHAR , `starFriend` SMALLINT , `userGrade` VARCHAR , `_id` VARCHAR , `version` BIGINT , PRIMARY KEY (`_id`) )"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v0, "INSERT INTO recommendation_friend SELECT `action`, `creator`, `from`, `mark`, `read`, `requestType`, `time`, `touch`, `account`, `area`, `blacked`, `displayName`, `extVersion`, `firstAlphaChar`, `friendStatus`, `gender`, `headImageUrl`, `hideRealName`, `isTop`, `matchedPinyinStr`, `name`, `nickName`, `notDisturb`, `province`, `realNameStatus`, `remarkName`, `signature`, `source`, `sourceDec`, `starFriend`, `userGrade`, `_id`, `version` FROM temp_recommendation"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "ALTER TABLE recommendation_friend ADD COLUMN realNameVisable SMALLINT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "ALTER TABLE recommendation_friend ADD COLUMN zmCreditText TEXT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 196
    const-string/jumbo v0, "ALTER TABLE recommendation_friend ADD COLUMN zmCreditUrl TEXT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 197
    const-string/jumbo v0, "ALTER TABLE recommendation_friend ADD COLUMN lifeCircleType TEXT"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 198
    const-string/jumbo v0, "DROP TABLE temp_recommendation"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 199
    const-string/jumbo v0, "CREATE INDEX `recommendation_friend_time_idx` ON `recommendation_friend` ( `time` )"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 200
    const-string/jumbo v0, "CREATE INDEX `recommendation_friend_matchedPinyinStr_idx` ON `recommendation_friend` ( `matchedPinyinStr` )"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece4\u53475, \u63a8\u8350\u8868\u5b57\u6bb5\u53d8\u66f4"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :try_start_0
    const-string/jumbo v0, "ALTER TABLE upload_record ADD COLUMN orderNum INTEGER"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece4\u53475, \u4e0a\u4f20\u901a\u8baf\u5f55\u8868\u5b57\u6bb5\u53d8\u66f4"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 77
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 81
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->closeSearchHook()V

    .line 83
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    monitor-exit v1

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public closeSearchHook()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->closeDbHook(Ljava/lang/String;)V

    .line 253
    return-void
.end method

.method public getSearchListener()Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    return-object v0
.end method

.method public onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 6

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    .line 95
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 98
    if-nez v4, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method public onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 6

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onOpen(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 108
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 111
    if-nez v4, :cond_0

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 116
    :goto_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    invoke-direct {v0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    .line 117
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->c:Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    invoke-virtual {v0, v1, p0}, Lcom/alipay/mobile/socialsdk/bizdata/data/SocialQueryListener;->registerContactListener(Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUP:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUPNICK:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSON:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    const-string/jumbo v2, "group"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addSearchIndex(Ljava/util/List;Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateFriendSearchIndex()V

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateGroupSearchIndex()V

    .line 125
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateGroupNickSearchIndex()V

    .line 126
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getSqliteHandler()I

    move-result v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->init(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_0
.end method

.method protected onTableCreated(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 212
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

    .line 213
    const-string/jumbo v0, "ali_account"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateFriendSearchIndex()V

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    const-string/jumbo v0, "chatgroup_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateGroupSearchIndex()V

    goto :goto_0

    .line 217
    :cond_2
    const-string/jumbo v0, "contact_relation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->updateGroupNickSearchIndex()V

    goto :goto_0
.end method

.method public onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;->onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V

    .line 132
    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 133
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece3\u53474"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "ALTER TABLE chatgroup_info ADD COLUMN threshold INTEGER"

    invoke-virtual {p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u7248\u672c\u53f7\u4ece3\u53474, \u7fa4\u8868\u5b57\u6bb5\u53d8\u66f4"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->a(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "SocialSdk_PersonalBase"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateFriendSearchIndex()V
    .locals 7

    .prologue
    .line 223
    iget-boolean v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->d:Z

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    const-string/jumbo v2, "\u8868ali_account\u8865\u507f\u626b\u63cfrowid"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSON:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "ali_account"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->resetTableStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSONFRIEND:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "ali_account"

    invoke-virtual {v0, v1, v2, v3}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->resetTableStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 229
    const-string/jumbo v0, "remarkName"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    const-string/jumbo v0, "nickName"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    const-string/jumbo v0, "name"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSON:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "ali_account"

    const-string/jumbo v4, "_id"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_PERSONFRIEND:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "ali_account"

    const-string/jumbo v4, "_id"

    .line 235
    const-string/jumbo v6, "friendStatus<>0"

    .line 234
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public updateGroupNickSearchIndex()V
    .locals 7

    .prologue
    .line 246
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 247
    const-string/jumbo v0, "data3"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUPNICK:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "contact_relation"

    const-string/jumbo v4, "drId"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public updateGroupSearchIndex()V
    .locals 7

    .prologue
    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    const-string/jumbo v0, "groupName"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const-string/jumbo v0, "aliasGroupName"

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->b:Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->INDEX_NAME_GROUP:Ljava/lang/String;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/bizdata/db/ContactEncryptOrmliteHelper;->mDbName:Ljava/lang/String;

    const-string/jumbo v3, "chatgroup_info"

    const-string/jumbo v4, "_id"

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/android/phone/globalsearch/api/GlobalSearchService;->addTableIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 243
    return-void
.end method
