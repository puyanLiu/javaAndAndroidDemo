.class Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;
.super Ljava/lang/Object;
.source "DaoManager.java"


# instance fields
.field connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

.field tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/j256/ormlite/support/ConnectionSource;Lcom/j256/ormlite/table/DatabaseTableConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/support/ConnectionSource;",
            "Lcom/j256/ormlite/table/DatabaseTableConfig",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    iput-object p1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    .line 431
    iput-object p2, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    .line 432
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 442
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 451
    :cond_0
    :goto_0
    return v0

    .line 445
    :cond_1
    check-cast p1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;

    .line 446
    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    iget-object v2, p1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 448
    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    iget-object v2, p1, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->tableConfig:Lcom/j256/ormlite/table/DatabaseTableConfig;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    .line 437
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/j256/ormlite/dao/DaoManager$TableConfigConnectionSource;->connectionSource:Lcom/j256/ormlite/support/ConnectionSource;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 438
    return v0
.end method
