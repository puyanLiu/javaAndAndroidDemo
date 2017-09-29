.class public Lmtopsdk/mtop/domain/AsyncMtopResult;
.super Ljava/lang/Object;
.source "AsyncMtopResult.java"


# instance fields
.field private async:Z

.field private taskId:Ljava/lang/String;

.field private timeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->taskId:Ljava/lang/String;

    .line 18
    iput p2, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->timeout:I

    .line 19
    iput-boolean p3, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->async:Z

    .line 20
    return-void
.end method


# virtual methods
.method public getAsync()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->async:Z

    return v0
.end method

.method public getTaskId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->taskId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->timeout:I

    return v0
.end method

.method public setAsync(Z)V
    .locals 0

    .prologue
    .line 42
    iput-boolean p1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->async:Z

    .line 43
    return-void
.end method

.method public setTaskId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->taskId:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->timeout:I

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AsyncMtopParam [taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->taskId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->timeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", async="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lmtopsdk/mtop/domain/AsyncMtopResult;->async:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
