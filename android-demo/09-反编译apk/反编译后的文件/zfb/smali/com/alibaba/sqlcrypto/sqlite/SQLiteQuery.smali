.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mBindArgs:[Ljava/lang/String;

.field private mClosed:Z

.field private mOffsetIndex:I


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mClosed:Z

    .line 54
    iput p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 55
    iput-object p4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    .line 56
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(Lcom/alibaba/sqlcrypto/CursorWindow;IIII)I
.end method


# virtual methods
.method public bindDouble(ID)V
    .locals 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 182
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 183
    :cond_0
    return-void
.end method

.method public bindLong(IJ)V
    .locals 3

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 176
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 177
    :cond_0
    return-void
.end method

.method public bindNull(I)V
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 170
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindNull(I)V

    .line 171
    :cond_0
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    add-int/lit8 v1, p1, -0x1

    aput-object p2, v0, v1

    .line 188
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 189
    :cond_0
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->close()V

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mClosed:Z

    .line 141
    return-void
.end method

.method columnCountLocked()I
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->acquireReference()V

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->native_column_count()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 110
    return v0

    .line 111
    :catchall_0
    move-exception v0

    .line 112
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 113
    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->acquireReference()V

    .line 126
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->native_column_name(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 126
    return-object v0

    .line 127
    :catchall_0
    move-exception v0

    .line 128
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 129
    throw v0
.end method

.method fillWindow(Lcom/alibaba/sqlcrypto/CursorWindow;II)I
    .locals 8

    .prologue
    .line 66
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 67
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 68
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    const-string/jumbo v2, "GETLOCK:"

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;JLjava/lang/String;)V

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->acquireReference()V

    .line 76
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->getStartPosition()I

    move-result v2

    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mOffsetIndex:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->native_fill_window(Lcom/alibaba/sqlcrypto/CursorWindow;IIII)I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v1, v2, v6, v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :try_start_2
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 96
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 87
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 96
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 88
    :catch_1
    move-exception v0

    .line 89
    :try_start_4
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->onCorruption()V

    .line 90
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :catchall_0
    move-exception v0

    .line 92
    :try_start_5
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/CursorWindow;->releaseReference()V

    .line 93
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->releaseReference()V

    .line 96
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 97
    throw v0
.end method

.method requery()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 147
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    array-length v2, v0

    move v0, v1

    .line 150
    :goto_0
    if-lt v0, v2, :cond_1

    .line 165
    :cond_0
    return-void

    .line 151
    :cond_1
    add-int/lit8 v3, v0, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-super {p0, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteMisuseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "mSql "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    :goto_1
    if-lt v1, v2, :cond_2

    .line 159
    const-string/jumbo v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 161
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    throw v1

    .line 156
    :cond_2
    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "SQLiteQuery: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQuery;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
