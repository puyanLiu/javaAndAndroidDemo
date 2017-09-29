.class public Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;
.super Ljava/lang/Object;
.source "MtopSysGetUploadTokenRequest.java"

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
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, "mtop.sys.getUploadToken"

    iput-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->API_NAME:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->VERSION:Ljava/lang/String;

    .line 34
    iput-boolean v2, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->NEED_ECODE:Z

    .line 40
    iput-boolean v2, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->NEED_SESSION:Z

    .line 45
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->privateData:Ljava/lang/String;

    .line 51
    iput-wide v3, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->crc:J

    .line 56
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->userNick:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->clientNetType:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->fileName:Ljava/lang/String;

    .line 74
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->bizCode:Ljava/lang/String;

    .line 79
    iput-object v1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->type:Ljava/lang/String;

    .line 85
    iput-wide v3, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->size:J

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getBizCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getClientNetType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->clientNetType:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc()J
    .locals 2

    .prologue
    .line 181
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->crc:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->privateData:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 285
    iget-wide v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->size:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->userNick:Ljava/lang/String;

    return-object v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public isNEED_ECODE()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->NEED_ECODE:Z

    return v0
.end method

.method public isNEED_SESSION()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->NEED_SESSION:Z

    return v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->API_NAME:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setBizCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->bizCode:Ljava/lang/String;

    .line 261
    return-void
.end method

.method public setClientNetType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->clientNetType:Ljava/lang/String;

    .line 225
    return-void
.end method

.method public setCrc(J)V
    .locals 0

    .prologue
    .line 190
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->crc:J

    .line 191
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 242
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->fileName:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .prologue
    .line 138
    iput-boolean p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->NEED_ECODE:Z

    .line 139
    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .prologue
    .line 156
    iput-boolean p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->NEED_SESSION:Z

    .line 157
    return-void
.end method

.method public setPrivateData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->privateData:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setSize(J)V
    .locals 0

    .prologue
    .line 294
    iput-wide p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->size:J

    .line 295
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 276
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->type:Ljava/lang/String;

    .line 277
    return-void
.end method

.method public setUserNick(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 206
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->userNick:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->VERSION:Ljava/lang/String;

    .line 121
    return-void
.end method
