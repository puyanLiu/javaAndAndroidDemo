.class public Lcom/alipay/mobile/rome/syncservice/sync/b/a;
.super Ljava/lang/Object;
.source "SyncTableCrud.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

.field private static volatile c:Landroid/content/Context;

.field private static volatile d:Ljava/util/Map;
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

.field private static volatile e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->e:Z

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static declared-synchronized a()Lcom/alipay/mobile/rome/syncservice/sync/b/a;
    .locals 3

    .prologue
    .line 41
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    if-nez v0, :cond_1

    .line 42
    const-class v2, Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a()Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    .line 46
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    invoke-direct {v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;-><init>()V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;

    .line 42
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    :try_start_2
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a:Lcom/alipay/mobile/rome/syncservice/sync/b/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 41
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Landroid/database/Cursor;)Lcom/alipay/mobile/rome/syncservice/sync/model/a;
    .locals 4

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;

    invoke-direct {v1}, Lcom/alipay/mobile/rome/syncservice/sync/model/a;-><init>()V

    .line 159
    sget-boolean v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->e:Z

    if-nez v0, :cond_0

    .line 160
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "userId"

    const-string/jumbo v3, "userId"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "biz"

    const-string/jumbo v3, "biz"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sKey"

    const-string/jumbo v3, "sKey"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "pf"

    const-string/jumbo v3, "pf"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "hm"

    const-string/jumbo v3, "hm"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "md"

    const-string/jumbo v3, "md"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sendNum"

    const-string/jumbo v3, "sendNum"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "localTime"

    const-string/jumbo v3, "localTime"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv1"

    const-string/jumbo v3, "reserv1"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv2"

    const-string/jumbo v3, "reserv2"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->e:Z

    .line 176
    :cond_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "userId"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->a:Ljava/lang/String;

    .line 177
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "biz"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sKey"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    .line 179
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "pf"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    .line 180
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "hm"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->e:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "md"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    .line 182
    iget-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncservice/e/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    .line 183
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "sendNum"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->g:I

    .line 184
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "localTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->h:J

    .line 185
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->i:I

    .line 186
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv1"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->j:Ljava/lang/String;

    .line 187
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->d:Ljava/util/Map;

    const-string/jumbo v2, "reserv2"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->k:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit p0

    return-object v1

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/alipay/mobile/rome/syncservice/sync/model/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 138
    const-string/jumbo v1, "userId"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const-string/jumbo v1, "biz"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v1, "sKey"

    iget-wide v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 141
    const-string/jumbo v1, "pf"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string/jumbo v1, "hm"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string/jumbo v1, "md"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/alipay/mobile/rome/syncservice/e/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string/jumbo v1, "sendNum"

    iget v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string/jumbo v1, "localTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 146
    const-string/jumbo v1, "reserv1"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v1, "reserv2"

    iget-object v2, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-object v0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    const-string/jumbo v1, "userId = ? AND biz = ? AND id = ? "

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    .line 61
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 60
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->a(Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/rome/syncservice/sync/model/a;)J
    .locals 6

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b(Lcom/alipay/mobile/rome/syncservice/sync/model/a;)Landroid/content/ContentValues;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->a(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 71
    const-string/jumbo v2, "SyncTableCrud"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "insertMsg[dbid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "] [sKey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/alipay/mobile/rome/syncservice/sync/model/a;->c:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-wide v0

    .line 68
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mobile/rome/syncservice/sync/model/a;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 80
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string/jumbo v2, "SELECT  userId,biz,sKey,pf,hm,md,sendNum,localTime,reserv1,reserv2,id  FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string/jumbo v2, " WHERE id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string/jumbo v2, "( SELECT MIN(id) FROM "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v2, " WHERE userId = ? AND biz = ? )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 93
    :try_start_1
    sget-object v3, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->b(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v1

    .line 95
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->a(Landroid/database/Cursor;)Lcom/alipay/mobile/rome/syncservice/sync/model/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 103
    if-eqz v1, :cond_0

    .line 104
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 105
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 99
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 100
    :goto_1
    :try_start_4
    const-string/jumbo v2, "SyncTableCrud"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "queryMsgByBiz: [ Exception="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    :goto_2
    if-eqz v1, :cond_1

    .line 104
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_1
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 103
    :cond_2
    if-eqz v1, :cond_0

    .line 104
    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    .line 102
    :catchall_2
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 99
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public final declared-synchronized a(I)V
    .locals 4

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string/jumbo v1, "UPDATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string/jumbo v1, " SET sendNum = sendNum + 1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string/jumbo v1, " WHERE id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    :try_start_2
    const-string/jumbo v1, "SyncTableCrud"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "addMsgSendNum: [ Exception="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
