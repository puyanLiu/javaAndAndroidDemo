.class public Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SyncDbManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;


# instance fields
.field private c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 61
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    invoke-virtual {p0}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    .line 62
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    const-string/jumbo v2, "sync_dispatch.db"

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a()Lcom/alipay/mobile/rome/syncservice/sync/b/a/b;
    .locals 2

    .prologue
    .line 110
    new-instance v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;

    sget-object v1, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->b:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)J
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->a(Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;IJLcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;Z)J
    .locals 7

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->a(Ljava/lang/String;IJLcom/alipay/mobile/rome/longlinkservice/syncmodel/SyncUpMessage;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;JJI)J
    .locals 7

    .prologue
    .line 147
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->a(Ljava/lang/String;JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/rome/syncservice/sync/model/SyncUplinkMsgItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;JJI)J
    .locals 7

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->c:Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->b(Ljava/lang/String;JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    .prologue
    .line 72
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/a;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 77
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    const-string/jumbo v1, "onDowngrade"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    .prologue
    .line 86
    sget-object v0, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onUpgrade: oldVersion = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", newVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    .line 90
    invoke-static {p1}, Lcom/alipay/mobile/rome/syncservice/sync/b/a/a/b;->a(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    :cond_0
    return-void
.end method
