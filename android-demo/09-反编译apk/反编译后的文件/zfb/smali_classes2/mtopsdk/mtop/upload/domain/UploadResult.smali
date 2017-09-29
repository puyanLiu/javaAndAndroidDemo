.class public Lmtopsdk/mtop/upload/domain/UploadResult;
.super Ljava/lang/Object;
.source "UploadResult.java"


# instance fields
.field private finish:Z

.field private tfsLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->finish:Z

    .line 17
    iput-boolean p1, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->finish:Z

    .line 18
    iput-object p2, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->tfsLocation:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getTfsLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->tfsLocation:Ljava/lang/String;

    return-object v0
.end method

.method public isFinish()Z
    .locals 1

    .prologue
    .line 21
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->finish:Z

    return v0
.end method

.method public setFinish(Z)V
    .locals 0

    .prologue
    .line 24
    iput-boolean p1, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->finish:Z

    .line 25
    return-void
.end method

.method public setTfsLocation(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->tfsLocation:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UploadResult [ finish="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->finish:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", tfsLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadResult;->tfsLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
