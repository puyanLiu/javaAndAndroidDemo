.class public Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;
.super Ljava/lang/Object;
.source "SQLiteQueryBuilder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteQueryBuilder"

.field private static final sLimitPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mDistinct:Z

.field private mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

.field private mProjectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStrictProjectionMap:Z

.field private mTables:Ljava/lang/String;

.field private mWhereClause:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "\\s*\\d+\\s*(,\\s*\\d+\\s*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 43
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 51
    iput-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 52
    return-void
.end method

.method private static appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 215
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    return-void
.end method

.method private static appendClauseEscapeClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 222
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-static {p0, p2}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 226
    :cond_0
    return-void
.end method

.method public static appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 233
    array-length v1, p1

    .line 235
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_0

    .line 245
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 246
    return-void

    .line 236
    :cond_0
    aget-object v2, p1, v0

    .line 238
    if-eqz v2, :cond_2

    .line 239
    if-lez v0, :cond_1

    .line 240
    const-string/jumbo v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 186
    const-string/jumbo v1, "HAVING clauses are only permitted when using a groupBy clause"

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->sLimitPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "invalid LIMIT clauses:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x78

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 194
    const-string/jumbo v1, "SELECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    if-eqz p0, :cond_2

    .line 196
    const-string/jumbo v1, "DISTINCT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    :cond_2
    if-eqz p2, :cond_3

    array-length v1, p2

    if-eqz v1, :cond_3

    .line 199
    invoke-static {v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendColumns(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 203
    :goto_0
    const-string/jumbo v1, "FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string/jumbo v1, " WHERE "

    invoke-static {v0, v1, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string/jumbo v1, " GROUP BY "

    invoke-static {v0, v1, p4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v1, " HAVING "

    invoke-static {v0, v1, p5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string/jumbo v1, " ORDER BY "

    invoke-static {v0, v1, p6}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    const-string/jumbo v1, " LIMIT "

    invoke-static {v0, v1, p7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_3
    const-string/jumbo v1, "* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private computeProjection([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 503
    if-eqz p1, :cond_5

    array-length v1, p1

    if-lez v1, :cond_5

    .line 504
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 505
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    .line 506
    array-length v3, p1

    move v2, v0

    .line 508
    :goto_0
    if-lt v2, v3, :cond_1

    move-object p1, v1

    .line 549
    :cond_0
    :goto_1
    return-object p1

    .line 509
    :cond_1
    aget-object v4, p1, v2

    .line 510
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 512
    if-eqz v0, :cond_2

    .line 513
    aput-object v0, v1, v2

    .line 508
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 517
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mStrictProjectionMap:Z

    if-nez v0, :cond_4

    .line 518
    const-string/jumbo v0, " AS "

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, " as "

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 520
    :cond_3
    aput-object v4, v1, v2

    goto :goto_2

    .line 524
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invalid column "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 531
    :cond_5
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 533
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 534
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    new-array p1, v2, [Ljava/lang/String;

    .line 535
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    .line 538
    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 542
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v4, "_count"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 543
    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, p1, v2

    move v2, v1

    goto :goto_3

    .line 549
    :cond_7
    const/4 p1, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public appendWhere(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 101
    return-void
.end method

.method public appendWhereEscapeString(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lcom/alibaba/sqlcrypto/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v4, 0x29

    .line 371
    invoke-direct {p0, p1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->computeProjection([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x1

    .line 376
    :goto_0
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mWhereClause:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 383
    if-eqz v0, :cond_1

    .line 384
    const-string/jumbo v0, " AND "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_1
    const/16 v0, 0x28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    .line 392
    invoke-static/range {v0 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->buildQueryString(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 374
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public buildUnionQuery([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 488
    array-length v3, p1

    .line 489
    iget-boolean v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, " UNION "

    .line 491
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_1

    .line 497
    const-string/jumbo v0, " ORDER BY "

    invoke-static {v2, v0, p2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string/jumbo v0, " LIMIT "

    invoke-static {v2, v0, p3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->appendClause(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 489
    :cond_0
    const-string/jumbo v0, " UNION ALL "

    goto :goto_0

    .line 492
    :cond_1
    if-lez v1, :cond_2

    .line 493
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    :cond_2
    aget-object v4, p1, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public buildUnionSubQuery(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Set;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 450
    array-length v2, p2

    .line 451
    new-array v1, v2, [Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    .line 468
    const/4 v6, 0x0

    .line 469
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p6

    move-object v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    .line 466
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 454
    :cond_0
    aget-object v3, p2, v0

    .line 456
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 457
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\' AS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 457
    aput-object v3, v1, v0

    .line 453
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    if-le v0, p4, :cond_2

    .line 460
    invoke-interface {p3, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 461
    :cond_2
    aput-object v3, v1, v0

    goto :goto_1

    .line 463
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "NULL AS "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    goto :goto_1
.end method

.method public getTables()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    return-object v0
.end method

.method public query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .prologue
    .line 281
    .line 282
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 281
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public query(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 320
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 324
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    const-string/jumbo v1, "SQLiteQueryBuilder"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 329
    const-string/jumbo v1, "SQLiteQueryBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Performing query: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/DBLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object v1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 333
    iget-object v2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->findEditTable(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    invoke-virtual {p1, v1, v0, p4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQueryWithFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public setCursorFactory(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mFactory:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;

    .line 146
    return-void
.end method

.method public setDistinct(Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mDistinct:Z

    .line 61
    return-void
.end method

.method public setProjectionMap(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mProjectionMap:Ljava/util/Map;

    .line 136
    return-void
.end method

.method public setStrictProjectionMap(Z)V
    .locals 0

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mStrictProjectionMap:Z

    .line 153
    return-void
.end method

.method public setTables(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteQueryBuilder;->mTables:Ljava/lang/String;

    .line 82
    return-void
.end method
