.class public Lmtopsdk/mtop/upload/FileUploadConnection;
.super Ljava/lang/Object;
.source "FileUploadConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final SEPERATOR:Ljava/lang/String; = "|"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.FileUploadConnection"


# instance fields
.field private fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

.field private listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

.field private needLogin:Z


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->needLogin:Z

    .line 35
    iput-object p1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    .line 36
    iput-object p2, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    .line 37
    return-void
.end method

.method public constructor <init>(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;Z)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->needLogin:Z

    .line 44
    iput-object p1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    .line 45
    iput-object p2, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    .line 46
    iput-boolean p3, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->needLogin:Z

    .line 47
    return-void
.end method

.method private checkUploadToken(Lmtopsdk/mtop/upload/domain/UploadToken;)V
    .locals 7

    .prologue
    const-wide/16 v5, 0xa

    const-wide/16 v3, 0x0

    .line 259
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getRetryCount()J

    move-result-wide v0

    .line 260
    cmp-long v2, v0, v3

    if-ltz v2, :cond_0

    cmp-long v0, v0, v5

    if-lez v0, :cond_1

    .line 261
    :cond_0
    invoke-virtual {p1, v5, v6}, Lmtopsdk/mtop/upload/domain/UploadToken;->setRetryCount(J)V

    .line 264
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v0

    .line 265
    cmp-long v0, v0, v3

    if-gtz v0, :cond_2

    .line 266
    const-wide/32 v0, 0x20000

    invoke-virtual {p1, v0, v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->setMaxBodyLength(J)V

    .line 268
    :cond_2
    return-void
.end method

.method private commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V
    .locals 10

    .prologue
    .line 279
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-static {p3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    const-string/jumbo v0, "|"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->getUploadTotalTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    const-string/jumbo v0, "|"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p4}, Lmtopsdk/mtop/upload/domain/UploadToken;->getRetryTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p4}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    .line 288
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v1, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileType:Ljava/lang/String;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    const-string/jumbo v1, "|"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 291
    const-string/jumbo v0, "mtop.fileupload"

    const v1, 0xfb2f

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v2

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/util/UTAdapter;->commit(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "[commitUTRecord] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    const-string/jumbo v1, "pageName=mtop.fileupload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    const-string/jumbo v1, ",eventId=64303"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v1, ",arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string/jumbo v1, ",arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v1, ",arg3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const-string/jumbo v1, ",ext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    const-string/jumbo v1, "mtopsdk.FileUploadConnection"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :cond_1
    :goto_0
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    const-string/jumbo v1, "mtopsdk.FileUploadConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[commitUTRecord] print UT record error.---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getUploadFileServiceInstance()Lmtopsdk/mtop/upload/service/UploadFileService;
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->needLogin:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;-><init>()V

    .line 317
    :goto_0
    return-object v0

    .line 315
    :cond_0
    new-instance v0, Lmtopsdk/mtop/upload/service/AnonymousUploadFileSeviceImpl;

    invoke-direct {v0}, Lmtopsdk/mtop/upload/service/AnonymousUploadFileSeviceImpl;-><init>()V

    goto :goto_0
.end method

.method private isCancelled()Z
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    const-string/jumbo v0, "mtopsdk.FileUploadConnection"

    const-string/jumbo v1, "File Upload Task is cancelled"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v0, 0x1

    .line 250
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isConitueRetry(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 220
    .line 221
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    const-string/jumbo v1, "NETWORK_ERROR"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    const-string/jumbo v1, "NETWORK_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v3, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v0, v1, v2, v3}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "NETWORK_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_NETWORK_ERROR"

    invoke-direct {p0, v0, v1, v2, p3}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyProgress(JJ)V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 150
    long-to-float v0, p1

    long-to-float v1, p3

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 151
    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 152
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-virtual {v1, v0}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onProgress(I)V

    .line 154
    :cond_0
    return-void
.end method

.method private patchFileUntilFinish(Lmtopsdk/mtop/upload/domain/UploadToken;Lmtopsdk/mtop/upload/FileUploadBaseListener;Lmtopsdk/mtop/upload/service/UploadFileService;J)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    .line 158
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    :cond_2
    const-string/jumbo v0, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v1, "ANDROID_SYS_INVALID_UPLOAD_TOKEN"

    const-string/jumbo v2, "\u4e0a\u4f20token\u4e3a\u7a7a\u6216\u8005token\u5df2\u5931\u6548"

    invoke-interface {p2, v0, v1, v2}, Lmtopsdk/mtop/upload/FileUploadBaseListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_TOKEN"

    invoke-direct {p0, v0, v1, v2, p1}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    iget-wide v2, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileSize:J

    .line 168
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v4

    .line 169
    invoke-direct {p0, p4, p5, v2, v3}, Lmtopsdk/mtop/upload/FileUploadConnection;->notifyProgress(JJ)V

    .line 170
    :cond_4
    invoke-direct {p0}, Lmtopsdk/mtop/upload/FileUploadConnection;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-interface {p3, p1, p4, p5}, Lmtopsdk/mtop/upload/service/UploadFileService;->resumeUpload(Lmtopsdk/mtop/upload/domain/UploadToken;J)Lmtopsdk/mtop/util/Result;

    move-result-object v6

    .line 178
    invoke-virtual {v6}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/UploadResult;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadResult;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    invoke-direct {p0, v2, v3, v2, v3}, Lmtopsdk/mtop/upload/FileUploadConnection;->notifyProgress(JJ)V

    .line 181
    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v6}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/UploadResult;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadResult;->getTfsLocation()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lmtopsdk/mtop/upload/FileUploadBaseListener;->onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 183
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    goto :goto_0

    .line 187
    :cond_5
    invoke-virtual {v6}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 188
    add-long/2addr p4, v4

    .line 189
    invoke-direct {p0, p4, p5, v2, v3}, Lmtopsdk/mtop/upload/FileUploadConnection;->notifyProgress(JJ)V

    .line 207
    :goto_1
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_4

    .line 208
    const-string/jumbo v0, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v1, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    const-string/jumbo v2, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    invoke-interface {p2, v0, v1, v2}, Lmtopsdk/mtop/upload/FileUploadBaseListener;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    invoke-direct {p0, v0, v1, v2, p1}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 210
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    goto/16 :goto_0

    .line 192
    :cond_6
    const/4 v0, 0x0

    .line 194
    :cond_7
    invoke-direct {p0}, Lmtopsdk/mtop/upload/FileUploadConnection;->isCancelled()Z

    move-result v6

    if-nez v6, :cond_0

    .line 198
    invoke-interface {p3, p1}, Lmtopsdk/mtop/upload/service/UploadFileService;->getResumeOffset(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;

    move-result-object v6

    .line 199
    invoke-virtual {v6}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 200
    invoke-virtual {v6}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    move v0, v1

    .line 205
    :cond_8
    :goto_2
    if-eqz v0, :cond_7

    goto :goto_1

    .line 202
    :cond_9
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v6

    if-nez v6, :cond_8

    move v0, v1

    .line 203
    goto :goto_2
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 71
    invoke-direct {p0}, Lmtopsdk/mtop/upload/FileUploadConnection;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onStart()V

    .line 75
    invoke-direct {p0}, Lmtopsdk/mtop/upload/FileUploadConnection;->getUploadFileServiceInstance()Lmtopsdk/mtop/upload/service/UploadFileService;

    move-result-object v3

    .line 77
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-interface {v3, v0}, Lmtopsdk/mtop/upload/service/UploadFileService;->getUploadToken(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)Lmtopsdk/mtop/util/Result;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmtopsdk/mtop/upload/domain/UploadToken;

    .line 79
    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_2

    .line 80
    iget-object v2, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getErrType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getErrInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v2}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getErrType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v3, v0, v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 82
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-direct {p0, v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->checkUploadToken(Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 88
    invoke-virtual {v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    iget-wide v4, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileSize:J

    .line 91
    invoke-direct {p0}, Lmtopsdk/mtop/upload/FileUploadConnection;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-interface {v3, v1}, Lmtopsdk/mtop/upload/service/UploadFileService;->fileUpload(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/UploadResult;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadResult;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    invoke-direct {p0, v4, v5, v4, v5}, Lmtopsdk/mtop/upload/FileUploadConnection;->notifyProgress(JJ)V

    .line 98
    iget-object v3, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    iget-object v4, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v2}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/UploadResult;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadResult;->getTfsLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onFinish(Lmtopsdk/mtop/upload/domain/UploadFileInfo;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "SUCCESS"

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 100
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    goto/16 :goto_0

    .line 103
    :cond_3
    invoke-virtual {v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v4

    .line 104
    invoke-direct {p0}, Lmtopsdk/mtop/upload/FileUploadConnection;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {v2}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 111
    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    .line 113
    iget-object v2, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/upload/FileUploadConnection;->patchFileUntilFinish(Lmtopsdk/mtop/upload/domain/UploadToken;Lmtopsdk/mtop/upload/FileUploadBaseListener;Lmtopsdk/mtop/upload/service/UploadFileService;J)V

    goto/16 :goto_0

    .line 118
    :cond_4
    invoke-virtual {v2}, Lmtopsdk/mtop/util/Result;->getErrType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lmtopsdk/mtop/util/Result;->getErrCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->isConitueRetry(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    :cond_5
    invoke-interface {v3, v1}, Lmtopsdk/mtop/upload/service/UploadFileService;->getResumeOffset(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;

    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 128
    invoke-virtual {v0}, Lmtopsdk/mtop/util/Result;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 130
    iget-object v2, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/upload/FileUploadConnection;->patchFileUntilFinish(Lmtopsdk/mtop/upload/domain/UploadToken;Lmtopsdk/mtop/upload/FileUploadBaseListener;Lmtopsdk/mtop/upload/service/UploadFileService;J)V

    goto/16 :goto_0

    .line 133
    :cond_6
    invoke-virtual {v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    const-string/jumbo v2, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    const-string/jumbo v4, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    invoke-virtual {v0, v2, v3, v4}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    invoke-direct {p0, v0, v2, v3, v1}, Lmtopsdk/mtop/upload/FileUploadConnection;->commitUTRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/upload/domain/UploadToken;)V

    .line 137
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    goto/16 :goto_0
.end method

.method public upload()V
    .locals 4

    .prologue
    .line 53
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const-string/jumbo v0, "mtopsdk.FileUploadConnection"

    const-string/jumbo v1, "fileInfo or listener is invalid"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void

    .line 59
    :cond_1
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 60
    const-string/jumbo v0, "mtopsdk.FileUploadConnection"

    const-string/jumbo v1, "add FileUploadConnection to taskExecutorPool succeed."

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    const-string/jumbo v1, "mtopsdk.FileUploadConnection"

    const-string/jumbo v2, "add FileUploadConnection to taskExecutorPool error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    iget-object v0, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->listener:Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_FILE_ADD_TASK_FAIL"

    const-string/jumbo v3, "\u6dfb\u52a0\u6587\u4ef6\u4e0a\u4f20\u4efb\u52a1\u5931\u8d25"

    invoke-virtual {v0, v1, v2, v3}, Lmtopsdk/mtop/upload/DefaultFileUploadListenerWrapper;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lmtopsdk/mtop/upload/FileUploadMgr;->getInstance()Lmtopsdk/mtop/upload/FileUploadMgr;

    move-result-object v0

    iget-object v1, p0, Lmtopsdk/mtop/upload/FileUploadConnection;->fileInfo:Lmtopsdk/mtop/upload/domain/UploadFileInfo;

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/upload/FileUploadMgr;->removeTask(Lmtopsdk/mtop/upload/domain/UploadFileInfo;)V

    goto :goto_0
.end method
