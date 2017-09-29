.class Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# static fields
.field private static final activeDatabases:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;


# instance fields
.field private mActiveDatabases:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2169
    new-instance v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;

    invoke-direct {v0}, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;-><init>()V

    sput-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->activeDatabases:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 2172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;

    .line 2172
    return-void
.end method

.method static synthetic access$0(Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;)Ljava/util/HashSet;
    .locals 1

    .prologue
    .line 2170
    iget-object v0, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->mActiveDatabases:Ljava/util/HashSet;

    return-object v0
.end method

.method static getInstance()Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;
    .locals 1

    .prologue
    .line 2173
    sget-object v0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;->activeDatabases:Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$ActiveDatabases;

    return-object v0
.end method
