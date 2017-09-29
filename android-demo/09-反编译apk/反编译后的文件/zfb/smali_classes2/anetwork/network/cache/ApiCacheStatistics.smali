.class public Lanetwork/network/cache/ApiCacheStatistics;
.super Ljava/lang/Object;
.source "ApiCacheStatistics.java"


# static fields
.field private static a:I

.field private static b:Lanetwork/network/cache/b;

.field private static c:I

.field private static d:Landroid/content/SharedPreferences;

.field private static e:Landroid/content/SharedPreferences$Editor;

.field private static f:Lanetwork/network/cache/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x14

    sput v0, Lanetwork/network/cache/ApiCacheStatistics;->a:I

    return-void
.end method

.method private static declared-synchronized a()V
    .locals 4

    .prologue
    .line 214
    const-class v1, Lanetwork/network/cache/ApiCacheStatistics;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->b:Lanetwork/network/cache/b;

    if-eqz v0, :cond_0

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    if-eqz v0, :cond_0

    .line 215
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->b:Lanetwork/network/cache/b;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    invoke-interface {v0, v2}, Lanetwork/network/cache/b;->a(Lanetwork/network/cache/a;)V

    .line 217
    :cond_0
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    if-nez v0, :cond_1

    new-instance v0, Lanetwork/network/cache/a;

    invoke-direct {v0}, Lanetwork/network/cache/a;-><init>()V

    sput-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    :cond_1
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lanetwork/network/cache/a;->a:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lanetwork/network/cache/a;->b:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lanetwork/network/cache/a;->c:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lanetwork/network/cache/a;->e:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lanetwork/network/cache/a;->f:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lanetwork/network/cache/a;->g:J

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sput v0, Lanetwork/network/cache/ApiCacheStatistics;->c:I

    .line 218
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lanetwork/network/cache/ApiCacheStatistics;->a(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    monitor-exit v1

    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lanetwork/network/cache/b;)V
    .locals 6

    .prologue
    .line 48
    const-class v1, Lanetwork/network/cache/ApiCacheStatistics;

    monitor-enter v1

    if-nez p0, :cond_1

    .line 49
    :try_start_0
    const-string/jumbo v0, "ApiCacheStatistics"

    const-string/jumbo v2, "[init] parameters in init(Context context,IUploadStatistics uploadStatistics) are invalid "

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 53
    :cond_1
    :try_start_1
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->b:Lanetwork/network/cache/b;

    if-nez v0, :cond_0

    .line 57
    sput-object p1, Lanetwork/network/cache/ApiCacheStatistics;->b:Lanetwork/network/cache/b;

    .line 59
    const-string/jumbo v0, "apicache_statistics"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 60
    sput-object v0, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    if-nez v0, :cond_2

    .line 61
    const-string/jumbo v0, "ApiCacheStatistics"

    const-string/jumbo v2, "[init]mSharedPreferences is null"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 64
    :cond_2
    :try_start_2
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    .line 66
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "STATISTICS_STORE_DATE"

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lanetwork/network/cache/ApiCacheStatistics;->c:I

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    if-nez v0, :cond_3

    new-instance v0, Lanetwork/network/cache/a;

    invoke-direct {v0}, Lanetwork/network/cache/a;-><init>()V

    sput-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    :cond_3
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "REQUEST_COUNT"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->a:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "HIT_COUNT"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->b:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "NETWORK_COUNT"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->c:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "READCACHE_TOTAL_TIMECOST"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->d:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "WRITECACHE_COUNT"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->e:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "WRIETCACHE_TOTAL_TIMECOST"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->f:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->d:Landroid/content/SharedPreferences;

    const-string/jumbo v3, "WRITECACHE_TOTAL_SIZE"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Lanetwork/network/cache/a;->g:J

    .line 68
    :cond_4
    invoke-static {}, Lanetwork/network/cache/ApiCacheStatistics;->b()V

    .line 69
    const-string/jumbo v0, "ApiCacheStatistics"

    const-string/jumbo v2, "ApiCacheStatistics init succeed"

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private static declared-synchronized a(Landroid/content/SharedPreferences$Editor;)V
    .locals 5

    .prologue
    .line 145
    const-class v1, Lanetwork/network/cache/ApiCacheStatistics;

    monitor-enter v1

    if-nez p0, :cond_0

    .line 169
    :goto_0
    monitor-exit v1

    return-void

    .line 149
    :cond_0
    :try_start_0
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    if-nez v0, :cond_1

    .line 150
    const-string/jumbo v0, "ApiCacheStatistics"

    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 153
    :cond_1
    :try_start_1
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "STATISTICS_STORE_DATE"

    sget v3, Lanetwork/network/cache/ApiCacheStatistics;->c:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 154
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "REQUEST_COUNT"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->a:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 155
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "HIT_COUNT"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->b:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 156
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "NETWORK_COUNT"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->c:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 157
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "READCACHE_TOTAL_TIMECOST"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->d:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 158
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "WRITECACHE_COUNT"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->e:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 159
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "WRIETCACHE_TOTAL_TIMECOST"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->f:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 160
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v2, "WRITECACHE_TOTAL_SIZE"

    sget-object v3, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v3, v3, Lanetwork/network/cache/a;->g:J

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 167
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized a(Lanetwork/network/cache/CacheStat;)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 76
    const-class v1, Lanetwork/network/cache/ApiCacheStatistics;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    iget-boolean v0, p0, Lanetwork/network/cache/CacheStat;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 80
    :cond_1
    :try_start_1
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget v2, Lanetwork/network/cache/ApiCacheStatistics;->c:I

    if-eq v0, v2, :cond_2

    .line 86
    invoke-static {}, Lanetwork/network/cache/ApiCacheStatistics;->a()V

    .line 89
    :cond_2
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->a:J

    .line 91
    iget-boolean v0, p0, Lanetwork/network/cache/CacheStat;->b:Z

    if-eqz v0, :cond_3

    .line 92
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->b:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->b:J

    .line 95
    :cond_3
    iget-boolean v0, p0, Lanetwork/network/cache/CacheStat;->c:Z

    if-eqz v0, :cond_4

    .line 96
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->c:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->c:J

    .line 99
    :cond_4
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->d:J

    iget-wide v4, p0, Lanetwork/network/cache/CacheStat;->d:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->d:J

    .line 101
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->b:Lanetwork/network/cache/b;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->a:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v4, v0, Lanetwork/network/cache/a;->e:J

    add-long/2addr v2, v4

    sget v0, Lanetwork/network/cache/ApiCacheStatistics;->a:I

    int-to-long v4, v0

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 108
    const-string/jumbo v0, "ApiCacheStatistics"

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    invoke-virtual {v2}, Lanetwork/network/cache/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lanetwork/network/cache/ApiCacheStatistics;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 110
    invoke-static {}, Lanetwork/network/cache/ApiCacheStatistics;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b()V
    .locals 5

    .prologue
    .line 224
    const-string/jumbo v0, "mtopsdk_android_switch"

    const-string/jumbo v1, "persistCacheThreshold"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lmtopsdk/common/util/SwitchConfigUtil;->getSwitchConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lanetwork/network/cache/ApiCacheStatistics;->a:I

    .line 230
    const-string/jumbo v0, "ApiCacheStatistics"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "init persistCacheThreshold switch succeed,presistCacheThreshold="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lanetwork/network/cache/ApiCacheStatistics;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    const-string/jumbo v2, "ApiCacheStatistics"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "parse persistCacheThreshold switch value error,persistCacheThreshold="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(Lanetwork/network/cache/CacheStat;)V
    .locals 6

    .prologue
    .line 116
    const-class v1, Lanetwork/network/cache/ApiCacheStatistics;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lanetwork/network/cache/CacheStat;->e:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 120
    :cond_1
    :try_start_1
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sget v2, Lanetwork/network/cache/ApiCacheStatistics;->c:I

    if-eq v0, v2, :cond_2

    .line 126
    invoke-static {}, Lanetwork/network/cache/ApiCacheStatistics;->a()V

    .line 128
    :cond_2
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->e:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->e:J

    .line 129
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->g:J

    iget-wide v4, p0, Lanetwork/network/cache/CacheStat;->g:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->g:J

    .line 130
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->f:J

    iget-wide v4, p0, Lanetwork/network/cache/CacheStat;->f:J

    add-long/2addr v2, v4

    iput-wide v2, v0, Lanetwork/network/cache/a;->f:J

    .line 134
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v2, v0, Lanetwork/network/cache/a;->a:J

    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    iget-wide v4, v0, Lanetwork/network/cache/a;->e:J

    add-long/2addr v2, v4

    sget v0, Lanetwork/network/cache/ApiCacheStatistics;->a:I

    int-to-long v4, v0

    rem-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 135
    const-string/jumbo v0, "ApiCacheStatistics"

    sget-object v2, Lanetwork/network/cache/ApiCacheStatistics;->f:Lanetwork/network/cache/a;

    invoke-virtual {v2}, Lanetwork/network/cache/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lanetwork/network/cache/ApiCacheStatistics;->e:Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lanetwork/network/cache/ApiCacheStatistics;->a(Landroid/content/SharedPreferences$Editor;)V

    .line 137
    invoke-static {}, Lanetwork/network/cache/ApiCacheStatistics;->b()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
