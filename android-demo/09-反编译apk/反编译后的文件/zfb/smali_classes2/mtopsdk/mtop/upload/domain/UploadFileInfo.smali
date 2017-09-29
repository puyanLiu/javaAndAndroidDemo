.class public Lmtopsdk/mtop/upload/domain/UploadFileInfo;
.super Ljava/lang/Object;
.source "UploadFileInfo.java"


# instance fields
.field private bizCode:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private listener:Lmtopsdk/mtop/upload/FileUploadListener;

.field private ownerNick:Ljava/lang/String;

.field private privateData:Ljava/lang/String;

.field private type:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    sget-object v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->RESUMABLE:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    iput-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->type:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    if-ne p0, p1, :cond_1

    .line 140
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 118
    goto :goto_0

    .line 119
    :cond_3
    check-cast p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    .line 120
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 121
    iget-object v2, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    if-eqz v2, :cond_5

    move v0, v1

    .line 122
    goto :goto_0

    .line 123
    :cond_4
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    iget-object v3, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    move v0, v1

    .line 124
    goto :goto_0

    .line 125
    :cond_5
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 126
    iget-object v2, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_7

    move v0, v1

    .line 127
    goto :goto_0

    .line 128
    :cond_6
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    iget-object v3, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_7
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    if-nez v2, :cond_8

    .line 131
    iget-object v2, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    if-eqz v2, :cond_9

    move v0, v1

    .line 132
    goto :goto_0

    .line 133
    :cond_8
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    iget-object v3, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move v0, v1

    .line 134
    goto :goto_0

    .line 135
    :cond_9
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 136
    iget-object v2, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 137
    goto :goto_0

    .line 138
    :cond_a
    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    iget-object v3, p1, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 139
    goto :goto_0
.end method

.method public getBizCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getListener()Lmtopsdk/mtop/upload/FileUploadListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    return-object v0
.end method

.method public getOwnerNick()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivateData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->type:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 102
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    .line 104
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v2

    .line 106
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_3
    add-int/2addr v0, v1

    .line 108
    return v0

    .line 99
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    .line 104
    :cond_2
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 106
    :cond_3
    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_3
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .line 91
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setBizCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setListener(Lmtopsdk/mtop/upload/FileUploadListener;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->listener:Lmtopsdk/mtop/upload/FileUploadListener;

    .line 85
    return-void
.end method

.method public setOwnerNick(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPrivateData(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setType(Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;)V
    .locals 0

    .prologue
    .line 73
    if-eqz p1, :cond_0

    .line 74
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->type:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    .line 77
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UploadFileInfo [filePath="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->filePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", bizCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->bizCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", ownerNick="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->ownerNick:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", privateData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->privateData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->type:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
