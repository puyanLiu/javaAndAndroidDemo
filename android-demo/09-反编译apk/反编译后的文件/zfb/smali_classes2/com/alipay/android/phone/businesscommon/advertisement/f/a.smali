.class public final Lcom/alipay/android/phone/businesscommon/advertisement/f/a;
.super Ljava/lang/Object;
.source "AdDaoImpl.java"


# static fields
.field private static b:Lcom/alipay/android/phone/businesscommon/advertisement/g/d;


# instance fields
.field private final a:Landroid/content/Context;

.field private c:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static a()Lcom/alipay/android/phone/businesscommon/advertisement/f/a;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;

    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getApplicationContext()Landroid/app/Application;

    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private d()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->c:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b()Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->c:Lcom/j256/ormlite/dao/Dao;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->c:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->deleteBuilder()Lcom/j256/ormlite/stmt/DeleteBuilder;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v1

    const-string/jumbo v2, "spaceCode"

    invoke-virtual {v1, v2, p1}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    .line 121
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/DeleteBuilder;->delete()I

    .line 122
    return-void
.end method

.method public final a(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 63
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 65
    const-string/jumbo v2, "spaceCode"

    iget-object v3, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget v0, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->id:I

    iput v0, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->id:I

    .line 68
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 68
    goto :goto_0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public final declared-synchronized b()Lcom/alipay/android/phone/businesscommon/advertisement/g/d;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b:Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b:Lcom/alipay/android/phone/businesscommon/advertisement/g/d;

    .line 39
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->b:Lcom/alipay/android/phone/businesscommon/advertisement/g/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->where()Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    .line 95
    const-string/jumbo v3, "spaceCode"

    iget-object v4, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->spaceCode:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/j256/ormlite/stmt/Where;->eq(Ljava/lang/String;Ljava/lang/Object;)Lcom/j256/ormlite/stmt/Where;

    move-result-object v0

    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/Where;->query()Ljava/util/List;

    move-result-object v0

    .line 96
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 97
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    iget v0, v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->id:I

    iput v0, p1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;->id:I

    .line 98
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    .line 102
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 98
    goto :goto_0

    .line 102
    :cond_1
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/f/a;->d()Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Lcom/j256/ormlite/dao/Dao;->queryBuilder()Lcom/j256/ormlite/stmt/QueryBuilder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Lcom/j256/ormlite/stmt/QueryBuilder;->query()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
