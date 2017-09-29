.class public Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;
.super Ljava/lang/Object;
.source "MtopSysAnonymousGetUploadTokenRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private bizCode:Ljava/lang/String;

.field private clientNetType:Ljava/lang/String;

.field private crc:J

.field private fileName:Ljava/lang/String;

.field private privateData:Ljava/lang/String;

.field private size:J

.field private type:Ljava/lang/String;

.field private userNick:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string/jumbo v0, "mtop.sys.anonymousGetUploadToken"

    iput-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->API_NAME:Ljava/lang/String;

    .line 26
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->VERSION:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->NEED_ECODE:Z

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->NEED_SESSION:Z

    .line 43
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->privateData:Ljava/lang/String;

    .line 49
    iput-wide v2, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->crc:J

    .line 54
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->userNick:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->clientNetType:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->fileName:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->bizCode:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->type:Ljava/lang/String;

    .line 83
    iput-wide v2, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->size:J

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getBizCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->clientNetType:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc()J
    .locals 2

    .prologue
    .line 179
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->crc:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->privateData:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->API_NAME:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setBizCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 258
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->bizCode:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public setClientNetType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->clientNetType:Ljava/lang/String;

    .line 223
    return-void
.end method

.method public setCrc(J)V
    .locals 0

    .prologue
    .line 188
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->crc:J

    .line 189
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->fileName:Ljava/lang/String;

    .line 241
    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .prologue
    .line 136
    iput-boolean p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->NEED_ECODE:Z

    .line 137
    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .prologue
    .line 154
    iput-boolean p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->NEED_SESSION:Z

    .line 155
    return-void
.end method

.method public setPrivateData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->privateData:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .prologue
    .line 292
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->size:J

    .line 293
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->type:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->userNick:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->VERSION:Ljava/lang/String;

    .line 119
    return-void
.end method
