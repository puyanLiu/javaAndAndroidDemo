.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;
.source "SQLiteDatabase.java"


# static fields
.field private static final COMMIT_SQL:Ljava/lang/String; = "COMMIT;"

.field public static final CONFLICT_ABORT:I = 0x2

.field public static final CONFLICT_FAIL:I = 0x3

.field public static final CONFLICT_IGNORE:I = 0x4

.field public static final CONFLICT_NONE:I = 0x0

.field public static final CONFLICT_REPLACE:I = 0x5

.field public static final CONFLICT_ROLLBACK:I = 0x1

.field private static final CONFLICT_VALUES:[Ljava/lang/String;

.field public static final CREATE_IF_NECESSARY:I = 0x10000000

.field private static final EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

.field private static final EVENT_DB_CORRUPT:I = 0x124fc

.field private static final EVENT_DB_OPERATION:I = 0xcb20

.field static final GET_LOCK_LOG_PREFIX:Ljava/lang/String; = "GETLOCK:"

.field private static final LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS:I = 0x64

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS:I = 0x12c

.field private static final LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT:I = 0x7d0

.field private static final LOCK_WARNING_WINDOW_IN_MS:I = 0x4e20

.field public static LOG_SLOW_QUERIES_PROPERTY:I = 0x0

.field public static LOG_SLOW_QUERIES_PROPERTY_MS:I = 0x0

.field public static final MAX_SQL_CACHE_SIZE:I = 0xfa

.field private static final MAX_WARNINGS_ON_CACHESIZE_CONDITION:I = 0x1

.field public static final NO_LOCALIZED_COLLATORS:I = 0x10

.field public static final OPEN_READONLY:I = 0x1

.field public static final OPEN_READWRITE:I = 0x0

.field private static final OPEN_READ_MASK:I = 0x1

.field private static final QUERY_LOG_SQL_LENGTH:I = 0x40

.field private static final SLEEP_AFTER_YIELD_QUANTUM:I = 0x3e8

.field public static final SQLITE_MAX_LIKE_PATTERN_LENGTH:I = 0xc350

.field private static final TAG:Ljava/lang/String; = "Database"

.field private static sQueryLogTimeInMillis:I


# instance fields
.field private mCacheFullWarnings:I

.field mCompiledQueries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;",
            ">;"
        }
    .end annotation
.end field

.field private mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

.field private mFlags:I

.field private mInnerTransactionIsSuccessful:Z

.field private mIsNewFile:Z

.field private mLastLockMessageTime:J

.field private mLastSqlStatement:Ljava/lang/String;

.field private final mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mLockAcquiredThreadTime:J

.field private mLockAcquiredWallTime:J

.field private mLockingEnabled:Z

.field private mMaxSqlCacheSize:I

.field mNativeHandle:I

.field private mNumCacheHits:I

.field private mNumCacheMisses:I

.field private mPath:Ljava/lang/String;

.field private mPathForLogs:Ljava/lang/String;

.field private mPrograms:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private final mSlowQueryThreshold:I

.field private mStackTrace:Ljava/lang/Throwable;

.field private final mSyncUpdateInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTempTableSequence:I

.field private mTimeClosed:Ljava/lang/String;

.field private mTimeOpened:Ljava/lang/String;

.field private mTransactionIsSuccessful:Z

.field private mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 127
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string/jumbo v2, " OR ROLLBACK "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, " OR ABORT "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, " OR FAIL "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, " OR IGNORE "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, " OR REPLACE "

    aput-object v2, v0, v1

    .line 126
    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "[\\w\\.\\-]+@[\\w\\.\\-]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    .line 222
    sput v3, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 275
    const/4 v0, -0x1

    sput v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->LOG_SLOW_QUERIES_PROPERTY:I

    .line 276
    const/16 v0, 0x1f4

    sput v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->LOG_SLOW_QUERIES_PROPERTY_MS:I

    .line 2332
    const-string/jumbo v0, "database_sqlcrypto"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 2333
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->init()V

    .line 2334
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1841
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;-><init>()V

    .line 192
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0, v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 194
    iput-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 195
    iput-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 211
    iput-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 225
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    .line 226
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 233
    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNativeHandle:I

    .line 236
    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTempTableSequence:I

    .line 242
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 252
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mIsNewFile:Z

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    .line 278
    const/16 v0, 0xfa

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    .line 287
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 288
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 291
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 351
    iput-boolean v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 742
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    .line 1842
    if-nez p1, :cond_0

    .line 1843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "path should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1845
    :cond_0
    iput p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mFlags:I

    .line 1846
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    .line 1847
    sget v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->LOG_SLOW_QUERIES_PROPERTY:I

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    .line 1848
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1849
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 1851
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1853
    iput-boolean v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mIsNewFile:Z

    .line 1856
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mFlags:I

    invoke-direct {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dbopen(Ljava/lang/String;I)V

    .line 1857
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_2

    .line 1858
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    .line 1860
    :cond_2
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    .line 1862
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    return-void

    :catch_0
    move-exception v0

    .line 1864
    const-string/jumbo v1, "Database"

    const-string/jumbo v2, "Failed to setLocale() when constructing, closing the database"

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1865
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dbclose()V

    .line 1866
    sget-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v1, :cond_3

    .line 1867
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 1869
    :cond_3
    throw v0
.end method

.method public static native buildKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private checkLockHoldTime()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x7d0

    .line 439
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 440
    iget-wide v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    sub-long v2, v0, v2

    .line 441
    cmp-long v4, v2, v8

    if-gez v4, :cond_1

    .line 442
    const-string/jumbo v4, "Database"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 443
    iget-wide v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x4e20

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 461
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    const-wide/16 v4, 0x12c

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 448
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    long-to-int v4, v4

    .line 449
    const/16 v5, 0x64

    if-gt v4, v5, :cond_2

    .line 450
    cmp-long v5, v2, v8

    if-lez v5, :cond_0

    .line 451
    :cond_2
    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastLockMessageTime:J

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "lock held on "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms. Thread time was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 453
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    sget-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING_STACK_TRACE:Z

    if-eqz v1, :cond_3

    .line 455
    const-string/jumbo v1, "Database"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 457
    :cond_3
    const-string/jumbo v1, "Database"

    invoke-static {v1, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private closeClosable()V
    .locals 2

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->deallocCachedSqlStatements()V

    .line 901
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 902
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 909
    return-void

    .line 903
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 904
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;

    .line 905
    if-eqz v0, :cond_0

    .line 906
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    goto :goto_0
.end method

.method static create(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 871
    const-string/jumbo v0, ":memory:"

    const/high16 v1, 0x10000000

    invoke-static {v0, p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private native dbclose()V
.end method

.method private native dbopen(Ljava/lang/String;I)V
.end method

.method private deallocCachedSqlStatements()V
    .locals 3

    .prologue
    .line 2065
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2066
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2065
    monitor-exit v1

    return-void

    .line 2066
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;

    .line 2067
    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2065
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native enableSqlProfiling(Ljava/lang/String;)V
.end method

.method private native enableSqlTracing(Ljava/lang/String;)V
.end method

.method public static findEditTable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1118
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1119
    const/16 v1, 0x2c

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1121
    if-lez v0, :cond_2

    if-lt v0, v1, :cond_0

    if-gez v1, :cond_2

    .line 1122
    :cond_0
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1126
    :cond_1
    :goto_0
    return-object p0

    .line 1123
    :cond_2
    if-lez v1, :cond_1

    if-lt v1, v0, :cond_3

    if-gez v0, :cond_1

    .line 1124
    :cond_3
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1128
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Invalid tables"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getAttachedDbs(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2254
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2263
    :goto_0
    return-object v0

    .line 2257
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2258
    const-string/jumbo v2, "pragma database_list;"

    invoke-virtual {p0, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2259
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2262
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 2263
    goto :goto_0

    .line 2260
    :cond_1
    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static getDbStats()Ljava/util/ArrayList;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, -0x1

    const/4 v8, 0x0

    .line 2181
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2182
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->getInstance()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->access$0(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2225
    return-object v11

    .line 2182
    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 2183
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 2184
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    invoke-direct {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->native_getDbLookaside()I

    move-result v6

    .line 2191
    invoke-virtual {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 2192
    const-string/jumbo v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 2193
    if-eq v0, v14, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 2196
    invoke-static {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getAttachedDbs(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;

    move-result-object v13

    .line 2197
    if-eqz v13, :cond_0

    move v9, v8

    .line 2200
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_0

    .line 2201
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 2202
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".page_count;"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPragmaVal(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v2

    .line 2207
    if-nez v9, :cond_4

    move-object v1, v10

    .line 2219
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 2220
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;

    invoke-virtual {v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v4

    .line 2221
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug$DbStats;-><init>(Ljava/lang/String;JJI)V

    .line 2220
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2200
    :cond_2
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_3
    move v0, v8

    .line 2193
    goto :goto_0

    .line 2212
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "  (attached) "

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2214
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 2215
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 2216
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, " : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-eq v1, v14, :cond_5

    add-int/lit8 v1, v1, 0x1

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v6, v8

    goto :goto_2

    :cond_5
    move v1, v8

    goto :goto_3

    :cond_6
    move-object v1, v4

    move v6, v8

    goto :goto_2
.end method

.method private getPathForLogs()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 1986
    :goto_0
    return-object v0

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1979
    const/4 v0, 0x0

    goto :goto_0

    .line 1981
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1982
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    .line 1986
    :goto_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_0

    .line 1984
    :cond_2
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->EMAIL_IN_DB_PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "XX@YY"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPathForLogs:Ljava/lang/String;

    goto :goto_1
.end method

.method private static getPragmaVal(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 4

    .prologue
    .line 2235
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2236
    const-wide/16 v0, 0x0

    .line 2242
    :goto_0
    return-wide v0

    .line 2238
    :cond_0
    const/4 v1, 0x0

    .line 2240
    :try_start_0
    new-instance v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PRAGMA "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2241
    :try_start_1
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 2242
    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    goto :goto_0

    .line 2243
    :catchall_0
    move-exception v0

    .line 2244
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 2245
    :cond_1
    throw v0

    .line 2243
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1874
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS "

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static native init()V
.end method

.method private lockForced()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 399
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 402
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 403
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 406
    :cond_0
    return-void
.end method

.method private markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1076
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SELECT _sync_dirty FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1077
    const-string/jumbo v1, " LIMIT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1076
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V

    .line 1078
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SELECT "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1079
    const-string/jumbo v1, " LIMIT 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1084
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;

    invoke-direct {v0, p3, p4, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1087
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1086
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    .line 1080
    :catchall_0
    move-exception v0

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1082
    throw v0

    .line 1086
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native native_getDbLookaside()I
.end method

.method private native native_sqliteHandler()I
.end method

.method static openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 4

    .prologue
    .line 818
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 825
    sget-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    if-eqz v1, :cond_0

    .line 826
    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->enableSqlProfiling(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :cond_0
    :goto_0
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->getInstance()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->access$0(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;

    move-result-object v1

    .line 840
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 841
    return-object v0

    .line 828
    :catch_0
    move-exception v0

    .line 831
    const-string/jumbo v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Deleting and re-creating corrupt database "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 832
    const v0, 0x124fc

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 833
    const-string/jumbo v0, ":memory"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 835
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 837
    :cond_1
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;-><init>(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    goto :goto_0
.end method

.method static openOrCreateDatabase(Ljava/io/File;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 848
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method static openOrCreateDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 855
    const/high16 v0, 0x10000000

    invoke-static {p0, p1, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static native releaseMemory()I
.end method

.method private unlockForced()V
    .locals 2

    .prologue
    .line 429
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 435
    return-void
.end method

.method private yieldIfContendedHelper(ZJ)Z
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const-wide/16 v4, 0x3e8

    .line 701
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 704
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 705
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    .line 706
    const/4 v0, 0x0

    .line 736
    :goto_0
    return v0

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 709
    iget-object v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 710
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 711
    if-eqz p1, :cond_1

    .line 712
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 713
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 714
    const-string/jumbo v1, "Db locked more than once. yielfIfContended cannot yield"

    .line 713
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_1
    cmp-long v0, p2, v7

    if-lez v0, :cond_2

    move-wide v2, p2

    .line 731
    :goto_1
    cmp-long v0, v2, v7

    if-gtz v0, :cond_3

    .line 735
    :cond_2
    invoke-virtual {p0, v6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransactionWithListener(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V

    .line 736
    const/4 v0, 0x1

    goto :goto_0

    .line 724
    :cond_3
    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    move-wide v0, v2

    :goto_2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 729
    :goto_3
    sub-long/2addr v2, v4

    .line 730
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getQueueLength()I

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_4
    move-wide v0, v4

    .line 725
    goto :goto_2

    .line 727
    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    goto :goto_3
.end method


# virtual methods
.method addSQLiteClosable(Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;)V
    .locals 2

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 307
    return-void

    .line 304
    :catchall_0
    move-exception v0

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 306
    throw v0
.end method

.method addToCompiledQueries(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;)V
    .locals 4

    .prologue
    .line 2020
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v0, :cond_1

    .line 2022
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 2023
    const-string/jumbo v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "|NOT adding_sql_to_cache|"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2031
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;

    .line 2032
    if-eqz v0, :cond_2

    .line 2033
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2029
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2036
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ne v0, v2, :cond_4

    .line 2044
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCacheFullWarnings:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCacheFullWarnings:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 2045
    const-string/jumbo v0, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Reached MAX size for compiled-sql statement cache for database "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; i.e., NO space for this sql statement in cache: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2047
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Please change your sql statements to use \'?\' for bindargs, instead of using actual values"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2048
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2045
    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 2053
    :cond_4
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2054
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_3

    .line 2055
    const-string/jumbo v0, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|adding_sql_to_cache|"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2056
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2055
    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public beginTransaction()V
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransactionWithListener(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V

    .line 483
    return-void
.end method

.method public beginTransactionWithListener(Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 507
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lockForced()V

    .line 508
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 514
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 515
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 516
    const-string/jumbo v0, "Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction"

    .line 518
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 519
    const-string/jumbo v0, "Database"

    const-string/jumbo v2, "beginTransaction() failed"

    invoke-static {v0, v2, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    :catchall_0
    move-exception v0

    .line 545
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlockForced()V

    .line 547
    throw v0

    .line 528
    :cond_1
    :try_start_1
    const-string/jumbo v0, "BEGIN EXCLUSIVE;"

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 529
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    if-eqz p1, :cond_2

    .line 534
    :try_start_2
    invoke-interface {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onBegin()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 541
    :cond_2
    return-void

    .line 535
    :catch_0
    move-exception v0

    .line 536
    :try_start_3
    const-string/jumbo v1, "ROLLBACK;"

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 537
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    :goto_0
    return-void

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 883
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->closeClosable()V

    .line 885
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onAllReferencesReleased()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 887
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_0

    .line 886
    :catchall_0
    move-exception v0

    .line 887
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 888
    throw v0
.end method

.method public compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
    .locals 2

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1146
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_0
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1150
    return-object v0

    .line 1151
    :catchall_0
    move-exception v0

    .line 1152
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1153
    throw v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1619
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1620
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1622
    :cond_0
    const/4 v1, 0x0

    .line 1624
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "DELETE FROM "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1625
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " WHERE "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1625
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1627
    if-eqz p3, :cond_1

    .line 1628
    array-length v2, p3

    .line 1629
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_4

    .line 1633
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->execute()V

    .line 1634
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lastChangeCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1639
    if-eqz v1, :cond_2

    .line 1640
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1642
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1634
    return v0

    .line 1626
    :cond_3
    :try_start_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 1630
    :cond_4
    add-int/lit8 v3, v0, 0x1

    aget-object v4, p3, v0

    invoke-static {v1, v3, v4}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->bindObjectToProgram(Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1629
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1635
    :catch_0
    move-exception v0

    .line 1636
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1637
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1638
    :catchall_0
    move-exception v0

    .line 1639
    if-eqz v1, :cond_5

    .line 1640
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1642
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1643
    throw v0
.end method

.method public endTransaction()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 555
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 562
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 563
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 567
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 599
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 600
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlockForced()V

    .line 606
    :goto_1
    return-void

    .line 565
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    .line 599
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 600
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlockForced()V

    .line 605
    throw v0

    .line 571
    :cond_3
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_7

    .line 573
    :try_start_3
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v0, :cond_5

    .line 574
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onCommit()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 583
    :goto_2
    :try_start_4
    iget-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z

    if-eqz v2, :cond_6

    .line 584
    const-string/jumbo v0, "COMMIT;"

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 599
    :cond_4
    :goto_3
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    .line 600
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlockForced()V

    goto :goto_1

    .line 576
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionListener:Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteTransactionListener;->onRollback()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v1

    .line 578
    goto :goto_2

    .line 579
    :catch_0
    move-exception v0

    .line 580
    const/4 v2, 0x0

    :try_start_6
    iput-boolean v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTransactionIsSuccessful:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 587
    :cond_6
    :try_start_7
    const-string/jumbo v2, "ROLLBACK;"

    invoke-virtual {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 588
    if-eqz v0, :cond_4

    .line 589
    throw v0
    :try_end_7
    .catch Landroid/database/SQLException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 593
    :catch_1
    move-exception v0

    :try_start_8
    const-string/jumbo v0, "Database"

    const-string/jumbo v2, "exception during rollback, maybe the DB previously performed an auto-rollback"

    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method public execSQL(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1757
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1758
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1759
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1762
    :cond_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string/jumbo v3, "GETLOCK:"

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1764
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->native_execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1769
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1775
    const-string/jumbo v2, "COMMIT;"

    if-ne p1, v2, :cond_1

    .line 1776
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    const-string/jumbo v3, "COMMIT;"

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1780
    :goto_0
    return-void

    .line 1765
    :catch_0
    move-exception v0

    .line 1766
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1767
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1768
    :catchall_0
    move-exception v0

    .line 1769
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1770
    throw v0

    .line 1778
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method

.method public execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 7

    .prologue
    .line 1793
    if-nez p2, :cond_0

    .line 1794
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty bindArgs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1796
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1797
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1798
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1799
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1801
    :cond_1
    const/4 v1, 0x0

    .line 1803
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1804
    if-eqz p2, :cond_2

    .line 1805
    array-length v4, p2

    .line 1806
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v4, :cond_4

    .line 1810
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1815
    if-eqz v1, :cond_3

    .line 1816
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1818
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1820
    invoke-virtual {p0, p1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 1821
    return-void

    .line 1807
    :cond_4
    add-int/lit8 v5, v0, 0x1

    :try_start_1
    aget-object v6, p2, v0

    invoke-static {v1, v5, v6}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->bindObjectToProgram(Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;ILjava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1811
    :catch_0
    move-exception v0

    .line 1812
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1813
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1814
    :catchall_0
    move-exception v0

    .line 1815
    if-eqz v1, :cond_5

    .line 1816
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1818
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1819
    throw v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 1825
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1826
    const-string/jumbo v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "close() was never explicitly called on database \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1827
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mStackTrace:Ljava/lang/Throwable;

    .line 1826
    invoke-static {v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1828
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->closeClosable()V

    .line 1829
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onAllReferencesReleased()V

    .line 1831
    :cond_0
    return-void
.end method

.method getCompiledStatementForSql(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;
    .locals 5

    .prologue
    .line 2078
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v2

    .line 2081
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-nez v0, :cond_2

    .line 2083
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 2084
    const-string/jumbo v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|cache NOT found|"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :cond_0
    monitor-exit v2

    const/4 v0, 0x0

    .line 2102
    :cond_1
    :goto_0
    return-object v0

    .line 2088
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2080
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2090
    if-eqz v1, :cond_4

    .line 2091
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNumCacheHits:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNumCacheHits:I

    .line 2096
    :goto_2
    sget-boolean v2, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v2, :cond_1

    .line 2097
    const-string/jumbo v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "|cache_stats|"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2098
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2099
    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNumCacheHits:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2100
    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeOpened:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "|"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2097
    invoke-static {v2, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2088
    :cond_3
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 2080
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 2093
    :cond_4
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNumCacheMisses:I

    goto/16 :goto_2
.end method

.method public declared-synchronized getMaxSqlCacheSize()I
    .locals 1

    .prologue
    .line 2140
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMaximumSize()J
    .locals 6

    .prologue
    .line 952
    const/4 v2, 0x0

    .line 953
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 954
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 955
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 958
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    .line 959
    const-string/jumbo v0, "PRAGMA max_page_count;"

    .line 958
    invoke-direct {v1, p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 960
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v2

    .line 961
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPageSize()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    mul-long/2addr v2, v4

    .line 963
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 964
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 961
    return-wide v2

    .line 962
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 963
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 965
    throw v0

    .line 962
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public getPageSize()J
    .locals 4

    .prologue
    .line 1004
    const/4 v2, 0x0

    .line 1005
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1006
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1007
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1010
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    .line 1011
    const-string/jumbo v0, "PRAGMA page_size;"

    .line 1010
    invoke-direct {v1, p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 1013
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1016
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1013
    return-wide v2

    .line 1014
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 1015
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1016
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1017
    throw v0

    .line 1014
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSqliteHandler()I
    .locals 1

    .prologue
    .line 2338
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->native_sqliteHandler()I

    move-result v0

    return v0
.end method

.method public getSyncedTables()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 745
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v2

    .line 746
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 747
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 753
    monitor-exit v2

    return-object v3

    .line 747
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 748
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;

    .line 749
    iget-object v5, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 750
    iget-object v1, v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 745
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public getVersion()I
    .locals 4

    .prologue
    .line 922
    const/4 v2, 0x0

    .line 923
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 924
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 925
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 928
    :cond_0
    :try_start_0
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    const-string/jumbo v0, "PRAGMA user_version;"

    invoke-direct {v1, p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 930
    long-to-int v0, v2

    .line 932
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 933
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 930
    return v0

    .line 931
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 932
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 933
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 934
    throw v0

    .line 931
    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public inTransaction()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 1427
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1430
    :goto_0
    return-wide v0

    .line 1428
    :catch_0
    move-exception v0

    .line 1429
    const-string/jumbo v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error inserting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1430
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 1453
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/16 v2, 0x28

    const/4 v1, 0x0

    .line 1526
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1527
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1531
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x98

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1532
    const-string/jumbo v0, "INSERT"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1533
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v0, v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1534
    const-string/jumbo v0, " INTO "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1535
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1537
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1540
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1541
    invoke-virtual {p3}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 1542
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1543
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v1

    .line 1546
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1557
    const/16 v0, 0x29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object v0, v3

    .line 1563
    :goto_1
    const-string/jumbo v2, " VALUES("

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1564
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1565
    const-string/jumbo v2, ");"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1570
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v4

    .line 1573
    if-eqz v0, :cond_1

    .line 1574
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    .line 1575
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1576
    :goto_2
    if-lt v1, v2, :cond_7

    .line 1583
    :cond_1
    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->execute()V

    .line 1585
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lastInsertRow()J

    move-result-wide v0

    .line 1586
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_8

    .line 1587
    const-string/jumbo v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Error inserting "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " using "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1599
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1600
    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1602
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1594
    return-wide v0

    .line 1547
    :cond_4
    if-eqz v0, :cond_5

    .line 1548
    const-string/jumbo v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1549
    const-string/jumbo v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    :cond_5
    const/4 v2, 0x1

    .line 1552
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1553
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1554
    const/16 v0, 0x3f

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v0, v2

    goto/16 :goto_0

    .line 1559
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1560
    const-string/jumbo v0, "NULL"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v4

    goto/16 :goto_1

    .line 1577
    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1578
    add-int/lit8 v6, v1, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4, v6, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->bindObjectToProgram(Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1576
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 1589
    :cond_8
    const-string/jumbo v2, "Database"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1590
    const-string/jumbo v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Inserting row "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " from "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1591
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " using "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1590
    invoke-static {v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 1595
    :catch_0
    move-exception v0

    .line 1596
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1597
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1598
    :catchall_0
    move-exception v0

    .line 1599
    if-eqz v4, :cond_9

    .line 1600
    invoke-virtual {v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1602
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1603
    throw v0
.end method

.method public isDbLockedByCurrentThread()Z
    .locals 1

    .prologue
    .line 644
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    return v0
.end method

.method public isDbLockedByOtherThreads()Z
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInCompiledSqlCache(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 2110
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2111
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 2110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public isNewFile()Z
    .locals 1

    .prologue
    .line 2342
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mIsNewFile:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 1889
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNativeHandle:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOnly()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1882
    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method native lastChangeCount()I
.end method

.method native lastInsertRow()J
.end method

.method lock()V
    .locals 2

    .prologue
    .line 378
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_1

    .line 387
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 380
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredWallTime:J

    .line 384
    invoke-static {}, Landroid/os/Debug;->threadCpuTimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockAcquiredThreadTime:J

    goto :goto_0
.end method

.method logTimeStat(Ljava/lang/String;J)V
    .locals 1

    .prologue
    .line 1906
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 1907
    return-void
.end method

.method logTimeStat(Ljava/lang/String;JLjava/lang/String;)V
    .locals 10

    .prologue
    const/16 v0, 0x64

    const/16 v9, 0x40

    const/4 v8, 0x0

    .line 1914
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLastSqlStatement:Ljava/lang/String;

    .line 1916
    if-eqz p1, :cond_1

    const-string/jumbo v1, "PRAGMA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1967
    :cond_0
    :goto_0
    return-void

    .line 1925
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v2, v1, p2

    .line 1926
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    const-string/jumbo v1, "GETLOCK:"

    if-eq p4, v1, :cond_0

    .line 1931
    :cond_2
    sget v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    if-nez v1, :cond_3

    .line 1932
    sget v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->LOG_SLOW_QUERIES_PROPERTY_MS:I

    sput v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    .line 1934
    :cond_3
    sget v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-ltz v1, :cond_6

    .line 1943
    :goto_1
    if-eqz p4, :cond_4

    .line 1944
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1947
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v9, :cond_5

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1957
    :cond_5
    const-string/jumbo v1, ""

    .line 1961
    const v4, 0xcb20

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 1962
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPathForLogs()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x1

    .line 1963
    aput-object p1, v5, v6

    const/4 v6, 0x2

    .line 1964
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v5, v6

    const/4 v2, 0x3

    .line 1965
    aput-object v1, v5, v2

    const/4 v1, 0x4

    .line 1966
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    .line 1960
    invoke-static {v4, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 1937
    :cond_6
    const-wide/16 v4, 0x64

    mul-long/2addr v4, v2

    sget v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->sQueryLogTimeInMillis:I

    int-to-long v6, v1

    div-long/2addr v4, v6

    long-to-int v1, v4

    add-int/lit8 v1, v1, 0x1

    .line 1938
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mRandom:Ljava/util/Random;

    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-ge v0, v1, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1040
    const-string/jumbo v0, "_id"

    invoke-direct {p0, p1, v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    return-void
.end method

.method public markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->markTableSyncable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    return-void
.end method

.method native native_execSQL(Ljava/lang/String;)V
.end method

.method native native_setLocale(Ljava/lang/String;I)V
.end method

.method public needUpgrade(I)Z
    .locals 1

    .prologue
    .line 1893
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getVersion()I

    move-result v0

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAllReferencesReleased()V
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_SQL_CACHE:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mTimeClosed:Ljava/lang/String;

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->dbclose()V

    .line 326
    :cond_1
    return-void
.end method

.method onCorruption()V
    .locals 3

    .prologue
    .line 354
    const-string/jumbo v0, "Database"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Removing corrupt database: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const v0, 0x124fc

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 358
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string/jumbo v1, ":memory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 367
    :cond_0
    return-void

    .line 359
    :catchall_0
    move-exception v0

    .line 362
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    const-string/jumbo v2, ":memory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 366
    :cond_1
    throw v0
.end method

.method public purgeFromCompiledSqlCache(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2120
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2121
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2120
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 1272
    const/4 v1, 0x0

    .line 1273
    const/4 v9, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    .line 1272
    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 1310
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    .prologue
    .line 1190
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-virtual/range {v0 .. v10}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public queryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1230
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1231
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p7

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    .line 1233
    invoke-static/range {v0 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    invoke-static {p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1236
    invoke-virtual {p0, p1, v0, p6, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1325
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;II)Landroid/database/Cursor;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1403
    invoke-virtual {p0, v0, p1, p2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;

    .line 1405
    invoke-virtual {v0, p3, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->setLoadStyle(II)V

    .line 1406
    return-object v0
.end method

.method public rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v2, -0x1

    .line 1343
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1344
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1347
    :cond_0
    const-wide/16 v0, 0x0

    .line 1349
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v3, v2, :cond_1

    .line 1350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1353
    :cond_1
    new-instance v4, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;

    invoke-direct {v4, p0, p2, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDirectCursorDriver;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    const/4 v5, 0x0

    .line 1358
    if-eqz p1, :cond_4

    .line 1357
    :goto_0
    :try_start_0
    invoke-interface {v4, p1, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1361
    iget v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v5, v2, :cond_3

    .line 1365
    if-eqz v3, :cond_2

    .line 1366
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1369
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    .line 1371
    iget v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_3

    .line 1372
    const-string/jumbo v5, "Cursor"

    .line 1373
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "query ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", args are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    if-eqz p3, :cond_8

    .line 1375
    const-string/jumbo v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1376
    const-string/jumbo v1, ", count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-static {v5, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    :cond_3
    return-object v3

    .line 1358
    :cond_4
    :try_start_1
    iget-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1360
    :catchall_0
    move-exception v3

    .line 1361
    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    if-eq v6, v2, :cond_6

    .line 1365
    if-eqz v5, :cond_5

    .line 1366
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 1369
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    .line 1371
    iget v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSlowQueryThreshold:I

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-ltz v5, :cond_6

    .line 1372
    const-string/jumbo v5, "Cursor"

    .line 1373
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "query ("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ms): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", args are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1374
    if-eqz p3, :cond_7

    .line 1375
    const-string/jumbo v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1374
    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1376
    const-string/jumbo v1, ", count is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1372
    invoke-static {v5, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1379
    :cond_6
    throw v3

    .line 1376
    :cond_7
    const-string/jumbo v0, "<null>"

    goto :goto_2

    :cond_8
    const-string/jumbo v0, "<null>"

    goto :goto_1
.end method

.method removeSQLiteClosable(Lcom/alibaba/sqlcrypto/sqlite/SQLiteClosable;)V
    .locals 1

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 312
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mPrograms:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 316
    return-void

    .line 313
    :catchall_0
    move-exception v0

    .line 314
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 315
    throw v0
.end method

.method public replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 4

    .prologue
    .line 1473
    .line 1474
    const/4 v0, 0x5

    .line 1473
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 1477
    :goto_0
    return-wide v0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    const-string/jumbo v1, "Database"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error inserting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1477
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    .locals 2

    .prologue
    .line 1499
    .line 1500
    const/4 v0, 0x5

    .line 1499
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resetCompiledSqlCache()V
    .locals 2

    .prologue
    .line 2130
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    monitor-enter v1

    .line 2131
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mCompiledQueries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method rowUpdated(Ljava/lang/String;J)V
    .locals 3

    .prologue
    .line 1099
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    monitor-enter v1

    .line 1100
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mSyncUpdateInfo:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;

    .line 1099
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    if-eqz v0, :cond_0

    .line 1103
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "UPDATE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1104
    const-string/jumbo v2, " SET _sync_dirty=1 WHERE _id=(SELECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1105
    const-string/jumbo v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " WHERE _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1107
    :cond_0
    return-void

    .line 1099
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 2

    .prologue
    .line 1997
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1999
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mFlags:I

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->native_setLocale(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2001
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 2003
    return-void

    .line 2000
    :catchall_0
    move-exception v0

    .line 2001
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 2002
    throw v0
.end method

.method public setLockingEnabled(Z)V
    .locals 0

    .prologue
    .line 344
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    .line 345
    return-void
.end method

.method public declared-synchronized setMaxSqlCacheSize(I)V
    .locals 2

    .prologue
    .line 2159
    monitor-enter p0

    const/16 v0, 0xfa

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 2160
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "expected value between 0 and 250"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2161
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I

    if-ge p1, v0, :cond_2

    .line 2162
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2165
    :cond_2
    iput p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mMaxSqlCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2166
    monitor-exit p0

    return-void
.end method

.method public setMaximumSize(J)J
    .locals 9

    .prologue
    .line 976
    const/4 v2, 0x0

    .line 977
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 978
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 979
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPageSize()J

    move-result-wide v5

    .line 983
    div-long v0, p1, v5

    .line 985
    rem-long v3, p1, v5

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-eqz v3, :cond_2

    .line 986
    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    move-wide v3, v0

    .line 988
    :goto_0
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "PRAGMA max_page_count = "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 988
    invoke-direct {v1, p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->simpleQueryForLong()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v2

    .line 991
    mul-long/2addr v2, v5

    .line 993
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 994
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 991
    return-wide v2

    .line 992
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 993
    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 994
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 995
    throw v0

    .line 992
    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_2
    move-wide v3, v0

    goto :goto_0
.end method

.method public setPageSize(J)V
    .locals 2

    .prologue
    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRAGMA page_size = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 1029
    return-void
.end method

.method public setTransactionSuccessful()V
    .locals 2

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 622
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "no transaction pending"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    if-eqz v0, :cond_2

    .line 625
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 626
    const-string/jumbo v1, "setTransactionSuccessful may only be called once per call to beginTransaction"

    .line 625
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 628
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mInnerTransactionIsSuccessful:Z

    .line 629
    return-void
.end method

.method public setVersion(I)V
    .locals 2

    .prologue
    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PRAGMA user_version = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 944
    return-void
.end method

.method unlock()V
    .locals 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLockingEnabled:Z

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 415
    :cond_0
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_LOCK_TIME_TRACKING:Z

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->getHoldCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 417
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->checkLockHoldTime()V

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0
.end method

.method public update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 1657
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1674
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ContentValues;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1675
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Empty values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v0, 0x78

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1679
    const-string/jumbo v0, "UPDATE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1680
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->CONFLICT_VALUES:[Ljava/lang/String;

    aget-object v0, v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1681
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1682
    const-string/jumbo v0, " SET "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1684
    invoke-virtual {p2}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    .line 1685
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1687
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1696
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1697
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1701
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 1702
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1703
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "database not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1688
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1689
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1690
    const-string/jumbo v0, "=?"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1692
    const-string/jumbo v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1705
    :cond_5
    const/4 v1, 0x0

    .line 1707
    :try_start_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;

    move-result-object v1

    .line 1710
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    .line 1711
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1712
    const/4 v3, 0x1

    move v4, v2

    .line 1713
    :goto_1
    if-lt v4, v6, :cond_9

    .line 1719
    if-eqz p4, :cond_6

    .line 1720
    array-length v4, p4

    move v0, v2

    move v2, v3

    .line 1721
    :goto_2
    if-lt v0, v4, :cond_a

    .line 1728
    :cond_6
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->execute()V

    .line 1729
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lastChangeCount()I

    move-result v0

    .line 1730
    const-string/jumbo v2, "Database"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1731
    const-string/jumbo v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Updated "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1741
    :cond_7
    if-eqz v1, :cond_8

    .line 1742
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1744
    :cond_8
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1733
    return v0

    .line 1714
    :cond_9
    :try_start_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1715
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->bindObjectToProgram(Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;ILjava/lang/Object;)V

    .line 1716
    add-int/lit8 v3, v3, 0x1

    .line 1713
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1722
    :cond_a
    aget-object v3, p4, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1723
    add-int/lit8 v2, v2, 0x1

    .line 1721
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1734
    :catch_0
    move-exception v0

    .line 1735
    :try_start_2
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 1736
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1740
    :catchall_0
    move-exception v0

    .line 1741
    if-eqz v1, :cond_b

    .line 1742
    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->close()V

    .line 1744
    :cond_b
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 1745
    throw v0

    .line 1737
    :catch_1
    move-exception v0

    .line 1738
    :try_start_3
    const-string/jumbo v2, "Database"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error updating "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public yieldIfContended()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 670
    const-wide/16 v1, -0x1

    .line 669
    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely()Z
    .locals 3

    .prologue
    .line 682
    const/4 v0, 0x1

    const-wide/16 v1, -0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method

.method public yieldIfContendedSafely(J)Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->yieldIfContendedHelper(ZJ)Z

    move-result v0

    return v0
.end method
