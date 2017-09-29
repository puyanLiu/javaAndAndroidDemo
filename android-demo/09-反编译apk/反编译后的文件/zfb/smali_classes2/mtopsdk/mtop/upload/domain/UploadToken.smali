.class public Lmtopsdk/mtop/upload/domain/UploadToken;
.super Ljava/lang/Object;
.source "UploadToken.java"


# static fields
.field public static final DEFAULT_MAX_BODY_LENGTH:J = 0x20000L

.field public static final DEFAULT_RETRY_COUNT:J = 0xaL


# instance fields
.field private baseFileInfo:Lmtopsdk/mtop/upload/domain/BaseFileInfo;

.field private maxBodyLength:J

.field private retryCount:J

.field private retryTime:I

.field private serverAddress:Ljava/lang/String;

.field private timeout:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->baseFileInfo:Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    return-object v0
.end method

.method public getMaxBodyLength()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->maxBodyLength:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryCount:J

    return-wide v0
.end method

.method public getRetryTime()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryTime:I

    return v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->timeout:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 115
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->baseFileInfo:Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->baseFileInfo:Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    iget-wide v0, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileSize:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    iget v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryTime:I

    int-to-long v0, v0

    iget-wide v2, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryCount:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->maxBodyLength:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 116
    :cond_0
    const/4 v0, 0x0

    .line 119
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBaseFileInfo(Lmtopsdk/mtop/upload/domain/BaseFileInfo;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->baseFileInfo:Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    .line 109
    return-void
.end method

.method public setMaxBodyLength(J)V
    .locals 0

    .prologue
    .line 86
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->maxBodyLength:J

    .line 87
    return-void
.end method

.method public setRetryCount(J)V
    .locals 0

    .prologue
    .line 78
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryCount:J

    .line 79
    return-void
.end method

.method public setRetryTime(I)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryTime:I

    .line 99
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->serverAddress:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->timeout:J

    .line 71
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->token:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UploadToken [token="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", serverAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->serverAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->timeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", maxBodyLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->maxBodyLength:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", retryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->retryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", baseFileInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadToken;->baseFileInfo:Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
