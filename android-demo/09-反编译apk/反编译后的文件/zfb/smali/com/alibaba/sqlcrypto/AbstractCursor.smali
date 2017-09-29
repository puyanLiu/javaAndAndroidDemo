.class public abstract Lcom/alibaba/sqlcrypto/AbstractCursor;
.super Ljava/lang/Object;
.source "AbstractCursor.java"

# interfaces
.implements Lcom/alibaba/sqlcrypto/CrossProcessCursor;


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field protected mClosed:Z

.field mContentObservable:Landroid/database/ContentObservable;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCurrentRowID:Ljava/lang/Long;

.field mDataSetObservable:Landroid/database/DataSetObservable;

.field private mNotifyUri:Landroid/net/Uri;

.field protected mPos:I

.field protected mRowIdColumnIndex:I

.field private mSelfObserver:Landroid/database/ContentObserver;

.field private final mSelfObserverLock:Ljava/lang/Object;

.field private mSelfObserverRegistered:Z

.field protected mUpdatedRows:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 47
    new-instance v0, Landroid/database/ContentObservable;

    invoke-direct {v0}, Landroid/database/ContentObservable;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    .line 637
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    .line 640
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    .line 163
    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 164
    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    .line 167
    return-void
.end method


# virtual methods
.method public abortUpdates()V
    .locals 2

    .prologue
    .line 437
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected checkPosition()V
    .locals 3

    .prologue
    .line 583
    const/4 v0, -0x1

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-ne v0, v1, :cond_1

    .line 584
    :cond_0
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    .line 586
    :cond_1
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    .line 111
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0}, Landroid/database/ContentObservable;->unregisterAll()V

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->deactivateInternal()V

    .line 113
    return-void
.end method

.method public commitUpdates()Z
    .locals 1

    .prologue
    .line 447
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->commitUpdates(Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .locals 1
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
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_1

    .line 150
    iget-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 151
    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 156
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 158
    :cond_1
    return-void

    .line 154
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    goto :goto_0
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->deactivateInternal()V

    .line 83
    return-void
.end method

.method public deactivateInternal()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 94
    return-void
.end method

.method public deleteRow()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

.method public fillWindow(ILcom/alibaba/sqlcrypto/CursorWindow;)V
    .locals 5

    .prologue
    .line 211
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 216
    :try_start_0
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 217
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 218
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->clear()V

    .line 219
    invoke-virtual {p2, p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->setStartPosition(I)V

    .line 220
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnCount()I

    move-result v2

    .line 221
    invoke-virtual {p2, v2}, Lcom/alibaba/sqlcrypto/CursorWindow;->setNumColumns(I)Z

    .line 222
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    :cond_3
    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 223
    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 224
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 225
    if-eqz v3, :cond_5

    .line 226
    iget v4, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v4, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 227
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->freeLastRow()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 243
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    goto :goto_0

    .line 231
    :cond_5
    :try_start_2
    iget v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p2, v3, v0}, Lcom/alibaba/sqlcrypto/CursorWindow;->putNull(II)Z

    move-result v3

    if-nez v3, :cond_6

    .line 232
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->freeLastRow()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 242
    :catchall_0
    move-exception v0

    .line 243
    invoke-virtual {p2}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 244
    throw v0

    .line 223
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 590
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 593
    :cond_0
    return-void
.end method

.method public getBlob(I)[B
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "getBlob is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 292
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 293
    if-eq v0, v1, :cond_0

    .line 294
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 295
    const-string/jumbo v3, "Cursor"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "requesting column name with table name -- "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 299
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 300
    array-length v3, v2

    .line 301
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_2

    move v0, v1

    .line 312
    :cond_1
    return v0

    .line 302
    :cond_2
    aget-object v4, v2, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 317
    if-gez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "column \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public abstract getColumnNames()[Ljava/lang/String;
.end method

.method public abstract getCount()I
.end method

.method protected getDataSetObservable()Landroid/database/DataSetObservable;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    return-object v0
.end method

.method public abstract getDouble(I)D
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 534
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public abstract getFloat(I)F
.end method

.method public abstract getInt(I)I
.end method

.method public abstract getLong(I)J
.end method

.method public final getPosition()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    return v0
.end method

.method public abstract getShort(I)S
.end method

.method public abstract getString(I)Ljava/lang/String;
.end method

.method protected getUpdatedField(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 571
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    return v0
.end method

.method public getWindow()Lcom/alibaba/sqlcrypto/CursorWindow;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasUpdates()Z
    .locals 2

    .prologue
    .line 427
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v1

    .line 428
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 427
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isAfterLast()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 284
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 287
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isBeforeFirst()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 280
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    return v0
.end method

.method protected isFieldUpdated(I)Z
    .locals 2

    .prologue
    .line 552
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 554
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const/4 v0, 0x1

    .line 558
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFirst()Z
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLast()Z
    .locals 3

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    .line 273
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v2, v0, -0x1

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isNull(I)Z
.end method

.method public final move(I)Z
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToFirst()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToLast()Z
    .locals 1

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToNext()Z
    .locals 1

    .prologue
    .line 260
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public final moveToPosition(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 175
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getCount()I

    move-result v1

    .line 176
    if-lt p1, v1, :cond_1

    .line 177
    iput v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 202
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    if-gez p1, :cond_2

    .line 183
    iput v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    goto :goto_0

    .line 188
    :cond_2
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    if-ne p1, v0, :cond_3

    .line 189
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_3
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->onMove(II)Z

    move-result v0

    .line 193
    if-nez v0, :cond_4

    .line 194
    iput v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    goto :goto_0

    .line 196
    :cond_4
    iput p1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    .line 197
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    if-eq v1, v2, :cond_0

    .line 198
    iget v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v1}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mCurrentRowID:Ljava/lang/Long;

    goto :goto_0
.end method

.method public final moveToPrevious()Z
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method protected notifyDataSetChange()V
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 475
    return-void
.end method

.method protected onChange(Z)V
    .locals 4

    .prologue
    .line 501
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 502
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->dispatchChange(Z)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 504
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 501
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onMove(II)Z
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x1

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    .line 460
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method public requery()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 97
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    iput-boolean v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 102
    return v3
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 538
    sget-object v0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 517
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_0
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    .line 519
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    .line 520
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 523
    :cond_0
    new-instance v0, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;

    invoke-direct {v0, p0}, Lcom/alibaba/sqlcrypto/AbstractCursor$SelfContentObserver;-><init>(Lcom/alibaba/sqlcrypto/AbstractCursor;)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    .line 524
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mNotifyUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 525
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mSelfObserverRegistered:Z

    .line 517
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public supportsUpdates()Z
    .locals 2

    .prologue
    .line 455
    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mClosed:Z

    if-nez v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mContentObservable:Landroid/database/ContentObservable;

    invoke-virtual {v0, p1}, Landroid/database/ContentObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 467
    :cond_0
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 492
    return-void
.end method

.method public update(ILjava/lang/Object;)Z
    .locals 4

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->supportsUpdates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    const/4 v0, 0x0

    .line 416
    :goto_0
    return v0

    .line 402
    :cond_0
    new-instance v1, Ljava/lang/Long;

    iget v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mRowIdColumnIndex:I

    invoke-virtual {p0, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 403
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    monitor-enter v2

    .line 408
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 409
    if-nez v0, :cond_1

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/AbstractCursor;->mUpdatedRows:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    const/4 v0, 0x1

    goto :goto_0

    .line 407
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public updateBlob(I[B)Z
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateDouble(ID)Z
    .locals 1

    .prologue
    .line 380
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateFloat(IF)Z
    .locals 1

    .prologue
    .line 372
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateInt(II)Z
    .locals 1

    .prologue
    .line 356
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateLong(IJ)Z
    .locals 1

    .prologue
    .line 364
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateShort(IS)Z
    .locals 1

    .prologue
    .line 348
    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateString(ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public updateToNull(I)Z
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/sqlcrypto/AbstractCursor;->update(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method
