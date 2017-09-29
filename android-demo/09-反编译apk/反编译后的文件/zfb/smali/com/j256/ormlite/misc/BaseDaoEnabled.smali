.class public abstract Lcom/j256/ormlite/misc/BaseDaoEnabled;
.super Ljava/lang/Object;
.source "BaseDaoEnabled.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ID:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected transient dao:Lcom/j256/ormlite/dao/Dao;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkForDao()V
    .locals 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    if-nez v0, :cond_0

    .line 133
    new-instance v0, Ljava/sql/SQLException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Dao has not been set on "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/sql/SQLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public create()I
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 37
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->create(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public delete()I
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 77
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->delete(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public extractId()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TID;"
        }
    .end annotation

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 101
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->extractId(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getDao()Lcom/j256/ormlite/dao/Dao;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    return-object v0
.end method

.method public objectToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->objectToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public objectsEqual(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 111
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/dao/Dao;->objectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public refresh()I
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 47
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->refresh(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDao(Lcom/j256/ormlite/dao/Dao;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/j256/ormlite/dao/Dao",
            "<TT;TID;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    iput-object p1, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    .line 121
    return-void
.end method

.method public update()I
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 57
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0}, Lcom/j256/ormlite/dao/Dao;->update(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public updateId(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TID;)I"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/j256/ormlite/misc/BaseDaoEnabled;->checkForDao()V

    .line 67
    iget-object v0, p0, Lcom/j256/ormlite/misc/BaseDaoEnabled;->dao:Lcom/j256/ormlite/dao/Dao;

    invoke-interface {v0, p0, p1}, Lcom/j256/ormlite/dao/Dao;->updateId(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
