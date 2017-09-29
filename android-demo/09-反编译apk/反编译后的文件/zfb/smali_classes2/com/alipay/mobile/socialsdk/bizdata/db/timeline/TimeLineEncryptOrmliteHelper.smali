.class public Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;
.super Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;
.source "TimeLineEncryptOrmliteHelper.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "timelinedb"

.field public static final FEEDS:Ljava/lang/String; = "feeds"

.field public static final FEED_DATA_INFO_LIST:Ljava/lang/String; = "feeddata_list"

.field public static final HOME_FEEDS:Ljava/lang/String; = "home_feeds"

.field public static final OPTIONS:Ljava/lang/String; = "option"

.field public static final PERSONAL_FEEDS:Ljava/lang/String; = "personal_feeds"

.field public static final REMIND:Ljava/lang/String; = "remind"

.field public static final SCENE:Ljava/lang/String; = "scene"

.field private static a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 26
    const-string/jumbo v0, "timelinedb%s.db"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/personalbase/db/EncryptOrmliteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ILjava/lang/String;)V

    .line 27
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized initInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized releaseInstance()V
    .locals 2

    .prologue
    .line 39
    const-class v1, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;

    if-eqz v0, :cond_0

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;->a:Lcom/alipay/mobile/socialsdk/bizdata/db/timeline/TimeLineEncryptOrmliteHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected onTableCreated(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 46
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_PersonalBase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u8868"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u521b\u5efa\u597d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method
