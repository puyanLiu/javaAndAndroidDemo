.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;
.super Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteProgram;-><init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 56
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 58
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 60
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->native_execute()V

    .line 61
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 64
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 66
    return-void

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 64
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 65
    throw v0
.end method

.method public executeInsert()J
    .locals 4

    .prologue
    .line 79
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 83
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 85
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->native_execute()V

    .line 88
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v2, v3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lastChangeCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lastInsertRow()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 91
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 92
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 89
    return-wide v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    .line 91
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 92
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 93
    throw v0
.end method

.method public executeUpdateOrDelete()J
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    return-wide v0
.end method

.method public simpleQueryForLong()J
    .locals 6

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 118
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v2

    .line 119
    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v4, v5, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 123
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 120
    return-wide v2

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 123
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 124
    throw v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 143
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->acquireReference()V

    .line 145
    :try_start_0
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v2

    .line 146
    iget-object v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    invoke-virtual {v3, v4, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->logTimeStat(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 150
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 147
    return-object v2

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->releaseReference()V

    .line 150
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteStatement;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 151
    throw v0
.end method
