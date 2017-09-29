.class public Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;
.super Ljava/lang/Object;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private helper:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "KcartStorage"

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;-><init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->helper:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->helper:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;->close()V

    return-void
.end method

.method public loadDB()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;",
            "Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->helper:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;

    invoke-virtual {v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "select * from variable"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "n"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-static {v2}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    move-result-object v2

    const-string/jumbo v3, "v"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v3

    const-string/jumbo v5, "t"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    new-instance v7, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    invoke-direct {v7, v3, v4, v5, v6}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;-><init>(DJ)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "KcartStorage"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Getting a readable database from helper failed"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object v0

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public updateRow(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;DJ)V
    .locals 5

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v1, "v"

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    const-string/jumbo v1, "t"

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v1, "n = ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;->helper:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;

    invoke-virtual {v3}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v4, "variable"

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "KcartStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Getting a writable database from helper failed"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
