.class Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;
.super Ljava/lang/Object;
.source "SQLiteCompiledSql.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteCompiledSql"


# instance fields
.field mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

.field private mInUse:Z

.field private mSqlStmt:Ljava/lang/String;

.field private mStackTrace:Ljava/lang/Throwable;

.field nHandle:I

.field nStatement:I


# direct methods
.method constructor <init>(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 48
    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I

    .line 51
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 55
    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 58
    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

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

    .line 61
    :cond_0
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    .line 62
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mSqlStmt:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;-><init>()V

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/DatabaseObjectNotClosedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mStackTrace:Ljava/lang/Throwable;

    .line 64
    iget v0, p1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->mNativeHandle:I

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nHandle:I

    .line 65
    const/4 v0, 0x1

    invoke-direct {p0, p2, v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->compile(Ljava/lang/String;Z)V

    .line 66
    return-void
.end method

.method private compile(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "database "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

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

    .line 87
    :cond_0
    if-eqz p2, :cond_1

    .line 88
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 92
    :try_start_0
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->native_compile(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 97
    :cond_1
    return-void

    .line 93
    :catchall_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 95
    throw v0
.end method

.method private final native native_compile(Ljava/lang/String;)V
.end method

.method private final native native_finalize()V
.end method


# virtual methods
.method declared-synchronized acquire()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 120
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 128
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 124
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mInUse:Z

    .line 125
    sget-boolean v1, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v1, :cond_0

    .line 126
    const-string/jumbo v1, "SQLiteCompiledSql"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Acquired DbObj (id#"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") from DB cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 144
    :try_start_0
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 160
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 162
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_1

    .line 147
    const-string/jumbo v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "** warning ** Finalized DbObj (id#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->releaseSqlStatement()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 161
    throw v0
.end method

.method declared-synchronized release()V
    .locals 3

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_0

    .line 133
    const-string/jumbo v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Released DbObj (id#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") back to DB cache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mInUse:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    monitor-exit p0

    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method releaseSqlStatement()V
    .locals 3

    .prologue
    .line 102
    iget v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I

    if-eqz v0, :cond_1

    .line 103
    sget-boolean v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDebug;->DEBUG_ACTIVE_CURSOR_FINALIZATION:Z

    if-eqz v0, :cond_0

    .line 104
    const-string/jumbo v0, "SQLiteCompiledSql"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "closed and deallocated DbObj (id#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->lock()V

    .line 108
    invoke-direct {p0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->native_finalize()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->nStatement:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 114
    :cond_1
    return-void

    .line 110
    :catchall_0
    move-exception v0

    .line 111
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteCompiledSql;->mDatabase:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->unlock()V

    .line 112
    throw v0
.end method
