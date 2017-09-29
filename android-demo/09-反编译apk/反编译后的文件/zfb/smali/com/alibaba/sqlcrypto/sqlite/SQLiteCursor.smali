.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;
.super Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

.field private mStackTrace:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const v2, 0x7fffffff

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;-><init>()V

    .line 64
    const/4 v1, -0x1

    iput v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 76
    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    .line 77
    iput v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    .line 78
    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    .line 79
    iput-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z

    .line 222
    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v1}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mStackTrace:Ljava/lang/Throwable;

    .line 223
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 224
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    .line 225
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 226
    iput-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 227
    iput-object p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    .line 230
    :try_start_0
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 233
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v1

    .line 234
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    :goto_0
    if-lt v0, v1, :cond_0

    .line 251
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 253
    return-void

    .line 238
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v2

    .line 239
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 246
    const-string/jumbo v3, "_id"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 247
    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :catchall_0
    move-exception v0

    .line 251
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 252
    throw v0
.end method

.method static synthetic access$0(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;Z)V
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z

    return-void
.end method

.method static synthetic access$1(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$4(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$5(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$6(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$7(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V
    .locals 0

    .prologue
    .line 64
    iput p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return-void
.end method

.method static synthetic access$8(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .locals 1

    .prologue
    .line 503
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    .line 504
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 509
    :cond_0
    return-void
.end method

.method private fillWindow(I)V
    .locals 4

    .prologue
    .line 282
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-nez v0, :cond_1

    .line 284
    new-instance v0, Lcom/alibaba/sqlcrypto/CursorWindow;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/alibaba/sqlcrypto/CursorWindow;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 294
    :goto_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->setStartPosition(I)V

    .line 295
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;II)I

    move-result v0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 297
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 298
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 299
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$QueryThread;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;I)V

    const-string/jumbo v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 300
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 302
    :cond_0
    return-void

    .line 286
    :cond_1
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    .line 287
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_0

    .line 290
    :catchall_0
    move-exception v0

    .line 291
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 292
    throw v0
.end method

.method private queryThreadLock()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 102
    :cond_0
    return-void
.end method

.method private queryThreadUnlock()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 520
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->close()V

    .line 521
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 522
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->close()V

    .line 523
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 524
    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->supportsUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const-string/jumbo v0, "Cursor"

    const-string/jumbo v1, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 498
    :goto_0
    return v0

    .line 426
    :cond_0
    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v5

    .line 427
    if-eqz p1, :cond_1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 432
    monitor-exit v5

    move v0, v3

    goto :goto_0

    .line 440
    :cond_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 442
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 446
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 445
    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 487
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 489
    :try_start_2
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 492
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 426
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 496
    invoke-virtual {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->onChange(Z)V

    move v0, v3

    .line 498
    goto :goto_0

    .line 446
    :cond_4
    :try_start_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 447
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 448
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 450
    if-eqz v0, :cond_5

    if-nez v1, :cond_6

    .line 451
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "null rowId or values found! rowId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ", values = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    :catchall_0
    move-exception v0

    .line 489
    :try_start_4
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->endTransaction()V

    .line 490
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 426
    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 455
    :cond_6
    :try_start_5
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_3

    .line 456
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 462
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 464
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "UPDATE "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " SET "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    new-array v11, v0, [Ljava/lang/Object;

    move v4, v2

    .line 470
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, " WHERE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 482
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 481
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    const/16 v0, 0x3b

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 484
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v11}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 485
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v0, v1, v8, v9}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_1

    .line 471
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    const-string/jumbo v1, "=?"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v11, v4

    .line 475
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    const-string/jumbo v0, ", "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 478
    :cond_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_2
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 513
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->deactivate()V

    .line 514
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 515
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 516
    return-void
.end method

.method public deleteRow()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 339
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->checkPosition()V

    .line 342
    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 343
    :cond_0
    const-string/jumbo v0, "Cursor"

    .line 344
    const-string/jumbo v2, "Could not delete row because either the row ID column is not available or ithas not been read."

    .line 343
    invoke-static {v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 383
    :goto_0
    return v0

    .line 357
    :cond_1
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 360
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v6, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 361
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 360
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v0

    .line 367
    :goto_1
    :try_start_1
    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPos:I

    .line 368
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->requery()Z

    .line 374
    invoke-virtual {p0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->moveToPosition(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 379
    if-eqz v2, :cond_2

    .line 380
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->onChange(Z)V

    goto :goto_0

    .line 364
    :catch_0
    move-exception v2

    move v2, v1

    goto :goto_1

    .line 375
    :catchall_0
    move-exception v0

    .line 376
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 377
    throw v0

    :cond_2
    move v0, v1

    .line 383
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->close()V

    .line 612
    invoke-static {}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    :cond_0
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->finalize()V

    .line 622
    return-void

    .line 619
    :catchall_0
    move-exception v0

    .line 620
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->finalize()V

    .line 621
    throw v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 307
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 308
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 309
    array-length v3, v2

    .line 310
    new-instance v4, Ljava/util/HashMap;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v0}, Ljava/util/HashMap;-><init>(IF)V

    .line 311
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    .line 314
    iput-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 318
    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 319
    if-eq v0, v1, :cond_1

    .line 320
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 321
    const-string/jumbo v3, "Cursor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requesting column name with table name -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 322
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 326
    if-eqz v0, :cond_3

    .line 327
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 329
    :goto_1
    return v0

    .line 312
    :cond_2
    aget-object v5, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 329
    goto :goto_1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 275
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 278
    :cond_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getNotificationUri()Landroid/net/Uri;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType(I)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method

.method public onMove(II)Z
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    .line 267
    :cond_0
    invoke-direct {p0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 270
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    .line 179
    invoke-super {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 180
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_2

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_2

    .line 182
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 184
    :try_start_0
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mNotificationHandler:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    .line 185
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->notifyDataSetChange()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPendingData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 194
    :cond_2
    return-void

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 191
    throw v0
.end method

.method public requery()Z
    .locals 2

    .prologue
    .line 528
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    const/4 v0, 0x0

    .line 569
    :goto_0
    return v0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    .line 544
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mPos:I

    .line 546
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 547
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 548
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    .line 549
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 551
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mQuery:Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->requery()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 553
    :try_start_2
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 556
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 564
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->requery()Z

    move-result v0

    goto :goto_0

    .line 552
    :catchall_0
    move-exception v0

    .line 553
    :try_start_3
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 554
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 555
    :catchall_1
    move-exception v0

    .line 556
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 557
    throw v0
.end method

.method public setLoadStyle(II)V
    .locals 2

    .prologue
    .line 93
    iput p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mMaxRead:I

    .line 94
    iput p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mInitialRead:I

    .line 95
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 96
    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 591
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mDriver:Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 592
    return-void
.end method

.method public setWindow(Lcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    if-eqz v0, :cond_0

    .line 575
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCursorState:I

    .line 576
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 582
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mCount:I

    .line 584
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mWindow:Lcom/alibaba/sqlcrypto/CursorWindow;

    .line 585
    return-void

    .line 579
    :catchall_0
    move-exception v0

    .line 580
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 581
    throw v0
.end method

.method public supportsUpdates()Z
    .locals 1

    .prologue
    .line 406
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/AbstractWindowedCursor;->supportsUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
