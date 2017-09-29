.class Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static final DATABASE_PREFIX:Ljava/lang/String; = "kcart-"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final SQL_CREATE_ENTRIES:Ljava/lang/String; = "create table variable (_id integer primary key autoincrement, n text not null, v real, t integer);"

.field private static final SQL_DELETE_ENTRIES:Ljava/lang/String; = "drop table if exists variable"


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;


# direct methods
.method public constructor <init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;->this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "kcart-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7

    const/4 v1, 0x0

    const-string/jumbo v0, "create table variable (_id integer primary key autoincrement, n text not null, v real, t integer);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->values()[Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    move-result-object v2

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v6, "n"

    invoke-virtual {v4}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "v"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "t"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v4, "variable"

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    const-string/jumbo v0, "drop table if exists variable"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartStorage$KcartDBOpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
