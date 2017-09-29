.class public Lmtopsdk/mtop/upload/service/AnonymousUploadFileSeviceImpl;
.super Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;
.source "AnonymousUploadFileSeviceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.AnonymousUploadFileSeviceImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getUploadToken(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/util/Result;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadFileInfo;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const-wide/16 v4, 0x0

    .line 25
    const-wide/16 v6, 0x0

    .line 26
    const-string/jumbo v8, ""

    .line 27
    const-string/jumbo v0, ""

    .line 28
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 29
    const/4 v2, 0x0

    .line 31
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 33
    invoke-static {v1}, Lmtopsdk/mtop/upload/util/FileUtil;->getFileCRC32(Ljava/io/File;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 34
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 35
    :try_start_3
    invoke-static {v6}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 36
    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 37
    if-ltz v7, :cond_0

    .line 38
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :cond_0
    move-wide v12, v2

    move-object v3, v0

    move-object v2, v6

    move-wide v6, v12

    .line 44
    :goto_0
    new-instance v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/upload/domain/BaseFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V

    .line 45
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_2

    .line 46
    :cond_1
    new-instance v1, Lmtopsdk/mtop/upload/domain/UploadToken;

    invoke-direct {v1}, Lmtopsdk/mtop/upload/domain/UploadToken;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Lmtopsdk/mtop/upload/domain/UploadToken;->setBaseFileInfo(Lmtopsdk/mtop/upload/domain/BaseFileInfo;)V

    .line 48
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const/4 v2, 0x0

    const-string/jumbo v3, "ILLEGAL_FILE_ERROR"

    const-string/jumbo v4, "ANDROID_SYS_FILE_INVALID"

    const-string/jumbo v5, "\u65e0\u6548\u7684\u4e0a\u4f20\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4, v5}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/util/Result;->setModel(Ljava/lang/Object;)V

    .line 71
    :goto_1
    return-object v0

    .line 41
    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-wide v2, v6

    move-object v7, v12

    move-object v6, v8

    .line 42
    :goto_2
    const-string/jumbo v8, "mtopsdk.AnonymousUploadFileSeviceImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "get BaseFileInfo error.check filePath="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "; ---"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v12, v2

    move-object v3, v0

    move-object v2, v6

    move-wide v6, v12

    goto :goto_0

    .line 54
    :cond_2
    new-instance v3, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;-><init>()V

    .line 55
    invoke-virtual {v3, v4, v5}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setSize(J)V

    .line 56
    invoke-virtual {v3, v6, v7}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setCrc(J)V

    .line 57
    invoke-virtual {v3, v2}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setFileName(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getType()Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getType()Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->getUploadType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setType(Ljava/lang/String;)V

    .line 61
    :cond_3
    invoke-static {}, Lmtopsdk/xstate/XState;->g()Ljava/lang/String;

    move-result-object v1

    .line 62
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 63
    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v1

    .line 65
    :cond_4
    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setClientNetType(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setBizCode(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getPrivateData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setPrivateData(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getOwnerNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysAnonymousGetUploadTokenRequest;->setUserNick(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v0, v3}, Lmtopsdk/mtop/upload/service/AnonymousUploadFileSeviceImpl;->getUploadToken(Lmtopsdk/mtop/upload/domain/BaseFileInfo;Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/util/Result;

    move-result-object v0

    goto :goto_1

    .line 41
    :catch_1
    move-exception v2

    move-object v12, v2

    move-wide v2, v6

    move-object v7, v12

    move-object v6, v8

    goto :goto_2

    :catch_2
    move-exception v6

    move-object v7, v6

    move-object v6, v8

    goto :goto_2

    :catch_3
    move-exception v7

    goto/16 :goto_2
.end method
