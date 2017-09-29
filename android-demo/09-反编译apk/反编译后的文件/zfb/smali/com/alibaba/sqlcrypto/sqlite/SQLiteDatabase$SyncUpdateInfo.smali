.class Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;
.super Ljava/lang/Object;
.source "SQLiteDatabase.java"


# instance fields
.field deletedTable:Ljava/lang/String;

.field foreignKey:Ljava/lang/String;

.field masterTable:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    iput-object p1, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->masterTable:Ljava/lang/String;

    .line 774
    iput-object p2, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->deletedTable:Ljava/lang/String;

    .line 775
    iput-object p3, p0, Lcom/alibaba/sqlcrypto/sqlite/SQLiteDatabase$SyncUpdateInfo;->foreignKey:Ljava/lang/String;

    .line 776
    return-void
.end method
