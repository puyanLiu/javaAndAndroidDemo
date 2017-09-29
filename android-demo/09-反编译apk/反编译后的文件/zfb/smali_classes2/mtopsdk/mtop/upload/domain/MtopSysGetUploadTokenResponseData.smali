.class public Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;
.super Ljava/lang/Object;
.source "MtopSysGetUploadTokenResponseData.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private maxBodyLength:J

.field private retryCount:J

.field private serverAddress:Ljava/lang/String;

.field private timeout:J

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->maxBodyLength:J

    .line 24
    iput-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->retryCount:J

    .line 29
    iput-object v2, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->serverAddress:Ljava/lang/String;

    .line 34
    iput-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->timeout:J

    .line 39
    iput-object v2, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMaxBodyLength()J
    .locals 2

    .prologue
    .line 46
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->maxBodyLength:J

    return-wide v0
.end method

.method public getRetryCount()J
    .locals 2

    .prologue
    .line 62
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->retryCount:J

    return-wide v0
.end method

.method public getServerAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->serverAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->timeout:J

    return-wide v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->token:Ljava/lang/String;

    return-object v0
.end method

.method public setMaxBodyLength(J)V
    .locals 0

    .prologue
    .line 54
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->maxBodyLength:J

    .line 55
    return-void
.end method

.method public setRetryCount(J)V
    .locals 0

    .prologue
    .line 70
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->retryCount:J

    .line 71
    return-void
.end method

.method public setServerAddress(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->serverAddress:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    .prologue
    .line 102
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->timeout:J

    .line 103
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->token:Ljava/lang/String;

    .line 119
    return-void
.end method
