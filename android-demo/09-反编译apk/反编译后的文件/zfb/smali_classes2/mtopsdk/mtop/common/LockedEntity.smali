.class Lmtopsdk/mtop/common/LockedEntity;
.super Ljava/lang/Object;
.source "ApiLockHelper.java"


# instance fields
.field key:Ljava/lang/String;

.field lockStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-object p1, p0, Lmtopsdk/mtop/common/LockedEntity;->key:Ljava/lang/String;

    .line 188
    iput-wide p2, p0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    .line 189
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lmtopsdk/mtop/common/LockedEntity;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getLockStartTime()J
    .locals 2

    .prologue
    .line 171
    iget-wide v0, p0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    return-wide v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lmtopsdk/mtop/common/LockedEntity;->key:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setLockStartTime(J)V
    .locals 0

    .prologue
    .line 178
    iput-wide p1, p0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "LockedEntity [key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/common/LockedEntity;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", lockStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmtopsdk/mtop/common/LockedEntity;->lockStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
