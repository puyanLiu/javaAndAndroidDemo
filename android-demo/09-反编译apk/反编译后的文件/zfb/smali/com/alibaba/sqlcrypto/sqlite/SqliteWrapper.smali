.class public final Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;
.super Ljava/lang/Object;
.source "SqliteWrapper.java"


# static fields
.field private static final SQLITE_EXCEPTION_DETAIL_MESSAGE:Ljava/lang/String; = "unable to open database file"

.field private static final TAG:Ljava/lang/String; = "SqliteWrapper"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p1}, Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;->isLowMemory(Landroid/database/sqlite/SQLiteException;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    throw p1

    .line 55
    :cond_0
    return-void
.end method

.method public static delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 95
    :goto_0
    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string/jumbo v1, "SqliteWrapper"

    const-string/jumbo v2, "Catch a SQLiteException when delete: "

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    invoke-static {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 95
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 106
    :goto_0
    return-object v0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    const-string/jumbo v1, "SqliteWrapper"

    const-string/jumbo v2, "Catch a SQLiteException when insert: "

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    invoke-static {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 106
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isLowMemory(Landroid/database/sqlite/SQLiteException;)Z
    .locals 2

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unable to open database file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-virtual/range {p1 .. p6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "SqliteWrapper"

    const-string/jumbo v2, "Catch a SQLiteException when query: "

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    invoke-static {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requery(Landroid/content/Context;Landroid/database/Cursor;)Z
    .locals 3

    .prologue
    .line 70
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->requery()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v1, "SqliteWrapper"

    const-string/jumbo v2, "Catch a SQLiteException when requery: "

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    invoke-static {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 74
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 80
    :try_start_0
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    const-string/jumbo v1, "SqliteWrapper"

    const-string/jumbo v2, "Catch a SQLiteException when update: "

    invoke-static {v1, v2, v0}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-static {p0, v0}, Lcom/alibaba/sqlcrypto/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    .line 84
    const/4 v0, -0x1

    goto :goto_0
.end method
