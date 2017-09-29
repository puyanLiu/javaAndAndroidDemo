.class public final Lcom/alipay/android/phone/businesscommon/advertisement/g/d;
.super Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;
.source "AdDataBaseHelper.java"


# instance fields
.field private a:Lcom/j256/ormlite/dao/Dao;
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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 42
    const-string/jumbo v0, "alipayclient_ad.db"

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 32
    iput-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a:Lcom/j256/ormlite/dao/Dao;

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    return-void
.end method


# virtual methods
.method public final a()Lcom/j256/ormlite/dao/Dao;
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
    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 118
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-virtual {p0, v0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->getDao(Ljava/lang/Class;)Lcom/j256/ormlite/dao/Dao;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a:Lcom/j256/ormlite/dao/Dao;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public final close()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->close()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->a:Lcom/j256/ormlite/dao/Dao;

    .line 102
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->getConnectionSource()Lcom/j256/ormlite/support/ConnectionSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/j256/ormlite/support/ConnectionSource;->close()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    sget-object v1, Lcom/j256/ormlite/android/apptools/OrmLiteSqliteOpenHelper;->logger:Lcom/j256/ormlite/logger/Logger;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/j256/ormlite/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected final onConfigure(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    .locals 2

    .prologue
    .line 56
    :try_start_0
    const-string/jumbo v0, "ad db onCreate"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->connectionSource:Lcom/j256/ormlite/android/AndroidConnectionSource;

    const-class v1, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    invoke-static {v0, v1}, Lcom/j256/ormlite/table/TableUtils;->createTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;)I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onUpgrade(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;II)V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 71
    const-string/jumbo v0, "ad db onUpgrade start"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    .line 77
    :try_start_0
    const-class v0, Lcom/alipay/android/phone/businesscommon/advertisement/db/bean/SpaceInfoTable;

    .line 78
    const/4 v1, 0x1

    .line 77
    invoke-static {p2, v0, v1}, Lcom/j256/ormlite/table/TableUtils;->dropTable(Lcom/j256/ormlite/support/ConnectionSource;Ljava/lang/Class;Z)I

    .line 80
    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/phone/businesscommon/advertisement/g/d;->onCreate(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;Lcom/j256/ormlite/support/ConnectionSource;)V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    const-string/jumbo v0, "ad db onUpgrade finish"

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/h/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
