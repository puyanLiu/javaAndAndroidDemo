.class public final Lcom/alipay/mobile/publicsvc/common/proguard/b/c;
.super Lcom/alipay/mobile/publicsvc/common/proguard/b/f;
.source "PubSvcAccountTable.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/f;-><init>()V

    .line 30
    const-string/jumbo v0, "pub_svc_account"

    iput-object v0, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a:Ljava/lang/String;

    .line 32
    return-void
.end method

.method protected static a(Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 39
    const-string/jumbo v0, "select publicId from pub_svc_account where userId=?"

    .line 40
    const/4 v1, 0x0

    .line 42
    const/4 v3, 0x1

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {p1, v0, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 44
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 50
    :cond_0
    if-eqz v1, :cond_1

    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 54
    :cond_1
    :goto_1
    return-object v2

    .line 45
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 50
    if-eqz v1, :cond_1

    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    if-eqz v1, :cond_3

    .line 51
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_3
    throw v0
.end method

.method protected static a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 96
    const-string/jumbo v0, ""

    .line 97
    if-eqz p0, :cond_0

    .line 99
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :cond_0
    :goto_0
    :try_start_1
    const-string/jumbo v1, "update pub_svc_account set pubSvcSetBean=? where publicId=? and userId=?"

    .line 106
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    .line 107
    aput-object p1, v2, v0

    const/4 v0, 0x2

    aput-object p2, v2, v0

    .line 106
    invoke-virtual {p3, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 111
    :goto_1
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :catch_1
    move-exception v0

    .line 109
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "StackTrace"

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Lcom/alipay/publiccore/core/model/account/LayoutModel;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 180
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 183
    const-string/jumbo v4, "select publicId from pub_svc_account where publicId=? and userId=? "

    .line 184
    const/4 v2, 0x0

    .line 186
    const/4 v5, 0x2

    :try_start_0
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {p3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 187
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 188
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 189
    const-string/jumbo v4, "update pub_svc_account set layoutModel =? where publicId=? and userId=?"

    .line 191
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    .line 192
    aput-object p2, v5, v3

    .line 190
    invoke-virtual {p3, v4, v5}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    if-eqz v2, :cond_0

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_0
    :goto_0
    return v0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v1

    .line 203
    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    .line 199
    if-eqz v2, :cond_2

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 202
    :cond_2
    throw v0

    .line 199
    :cond_3
    if-eqz v2, :cond_1

    .line 200
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;JLcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    const-string/jumbo v3, "select publicId from pub_svc_account where publicId= ? and userId=?"

    .line 250
    const/4 v2, 0x0

    .line 252
    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-virtual {p4, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 253
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 254
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_3

    .line 255
    const-string/jumbo v3, "update pub_svc_account set h5preloadTime =? where publicId=? and userId=?"

    .line 258
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 259
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 256
    invoke-virtual {p4, v3, v4}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    if-eqz v2, :cond_0

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 270
    :cond_0
    :goto_0
    return v0

    .line 263
    :catch_0
    move-exception v0

    .line 264
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    if-eqz v2, :cond_1

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    move v0, v1

    .line 270
    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    if-eqz v2, :cond_2

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 269
    :cond_2
    throw v0

    .line 266
    :cond_3
    if-eqz v2, :cond_1

    .line 267
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method protected static c(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 277
    .line 280
    :try_start_0
    const-string/jumbo v1, "select h5preloadTime,pubSvcSetBean from pub_svc_account where publicId=? and userId=?"

    .line 282
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {p2, v1, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 283
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 284
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_4

    .line 285
    new-instance v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;

    invoke-direct {v1}, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 286
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 287
    iput-wide v3, v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;->h5preloadTime:J

    .line 288
    const/4 v0, 0x1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;->needPreLoadSet:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :goto_0
    if-eqz v2, :cond_0

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 303
    :cond_1
    :goto_1
    return-object v0

    .line 292
    :cond_2
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, v1, Lcom/alipay/mobile/pubsvc/db/data/PreLoadFlag;->needPreLoadSet:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 297
    :goto_2
    :try_start_4
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 299
    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 298
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    .line 299
    :goto_3
    if-eqz v2, :cond_3

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_3
    throw v0

    .line 299
    :cond_4
    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 298
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 296
    :catch_1
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method protected final a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 61
    .line 66
    :try_start_0
    const-string/jumbo v0, "select pubSvcSetBean from pub_svc_account where publicId=? and userId=?"

    .line 67
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {p3, v0, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 68
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 69
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 70
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    new-instance v3, Lcom/alipay/mobile/publicsvc/common/proguard/b/d;

    invoke-direct {v3, p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/d;-><init>(Lcom/alipay/mobile/publicsvc/common/proguard/b/c;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    :goto_0
    if-eqz v2, :cond_0

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 82
    :cond_0
    :goto_1
    return-object v0

    .line 75
    :catch_0
    move-exception v0

    move-object v2, v1

    .line 76
    :goto_2
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 78
    if-eqz v2, :cond_2

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    goto :goto_1

    .line 77
    :catchall_0
    move-exception v0

    move-object v2, v1

    .line 78
    :goto_3
    if-eqz v2, :cond_1

    .line 79
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    :cond_1
    throw v0

    .line 77
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 75
    :catch_1
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 123
    invoke-virtual {p0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iget-object v1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->pushSwitch:Ljava/lang/String;

    .line 126
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iput-object p1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->pushSwitch:Ljava/lang/String;

    .line 131
    invoke-static {v0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method protected final a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 157
    .line 159
    :try_start_0
    iget-object v1, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    iget-object v2, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    invoke-static {v1, v2, p2, p3}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Ljava/lang/String;Lcom/alipay/publiccore/core/model/account/LayoutModel;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 161
    if-nez v1, :cond_1

    .line 162
    :try_start_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 163
    const-string/jumbo v3, "publicId"

    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v3, "userId"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v3, "layoutModel"

    .line 166
    iget-object v4, p1, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v3, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p3, v3, v4, v2}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v1

    .line 168
    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 170
    :catch_0
    move-exception v1

    .line 171
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 170
    :catch_1
    move-exception v0

    move-object v5, v0

    move v0, v1

    move-object v1, v5

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 209
    .line 214
    :try_start_0
    const-string/jumbo v0, "select layoutModel from pub_svc_account where publicId=? and userId = ?"

    .line 215
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    invoke-virtual {p3, v0, v1}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 216
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    new-instance v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;

    invoke-direct {v3}, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 219
    :try_start_2
    iput-object p1, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mPublicId:Ljava/lang/String;

    .line 220
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 222
    new-instance v2, Lcom/alipay/mobile/publicsvc/common/proguard/b/e;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/publicsvc/common/proguard/b/e;-><init>(Lcom/alipay/mobile/publicsvc/common/proguard/b/c;)V

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/alibaba/fastjson/parser/Feature;

    .line 221
    invoke-static {v0, v2, v4}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/publiccore/core/model/account/LayoutModel;

    iput-object v0, v3, Lcom/alipay/mobile/pubsvc/db/data/PubSvcAccountBean;->mAccountLayoutInfo:Lcom/alipay/publiccore/core/model/account/LayoutModel;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v0, v3

    .line 228
    :goto_0
    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    :goto_1
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    .line 226
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "StackTrace"

    invoke-interface {v3, v4, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 228
    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 228
    :goto_3
    if-eqz v1, :cond_1

    .line 229
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    :cond_1
    throw v0

    .line 227
    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 225
    :catch_1
    move-exception v0

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method protected final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_0

    .line 146
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    if-eqz v1, :cond_0

    .line 148
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iget-object v1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->uploadGisSwitch:Ljava/lang/String;

    .line 147
    invoke-static {v1, p1}, Lcom/alipay/mobile/common/utils/StringUtils;->equalsIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v1, v0, Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;->officialAccountSetInfo:Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;

    iput-object p1, v1, Lcom/alipay/publiccore/client/model/OfficialAccountSetInfo;->uploadGisSwitch:Ljava/lang/String;

    .line 152
    invoke-static {v0, p2, p3, p4}, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a(Lcom/alipay/mobile/pubsvc/db/data/PubSvcSetBean;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method

.method protected final declared-synchronized d(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 310
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "delete from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/publicsvc/common/proguard/b/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 311
    const-string/jumbo v3, " where publicId=? and userId=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 312
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {p3, v2, v3}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    :goto_0
    monitor-exit p0

    return v0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "StackTrace"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 317
    goto :goto_0

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
