.class public Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;
.super Ljava/lang/Object;
.source "UploadFileServiceImpl.java"

# interfaces
.implements Lmtopsdk/mtop/upload/service/UploadFileService;


# static fields
.field private static final NETWORK_RETRY_TIMES:I = 0x0

.field private static final SCHEMA_HTTP:Ljava/lang/String; = "http://"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.UploadFileServiceImpl"

.field private static final URL_HEAD:Ljava/lang/String; = "/mc/head/"

.field private static final URL_PATCH:Ljava/lang/String; = "/mc/patch/"

.field private static final URL_POST:Ljava/lang/String; = "/mc/post/"


# instance fields
.field private networkImpl:Lanetwork/channel/Network;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->networkImpl:Lanetwork/channel/Network;

    .line 63
    new-instance v0, Lanetwork/channel/http/HttpNetwork;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lanetwork/channel/http/HttpNetwork;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->networkImpl:Lanetwork/channel/Network;

    .line 64
    return-void
.end method

.method private genUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    const/4 v0, 0x0

    .line 381
    :goto_0
    return-object v0

    .line 377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 387
    const-string/jumbo v0, "D:\\test\\json\\test.json"

    .line 388
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Lmtopsdk/mtop/upload/util/FileUtil;->getFileCRC32(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/PrintStream;->println(J)V

    .line 389
    return-void
.end method


# virtual methods
.method public fileUpload(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 223
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_TOKEN"

    const-string/jumbo v3, "\u4e0a\u4f20token\u4e3a\u7a7a\u6216\u8005token\u5df2\u5931\u6548"

    invoke-direct {v0, v8, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_0
    return-object v0

    .line 229
    :cond_1
    const-string/jumbo v0, "http://"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/mc/post/"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->genUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 230
    :try_start_0
    new-instance v7, Lanetwork/channel/entity/RequestImpl;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    invoke-interface {v7, v8}, Lanetwork/channel/Request;->setRetryTime(I)V

    .line 239
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setMethod(Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    iget-object v1, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->file:Ljava/io/File;

    .line 242
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    iget-wide v2, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileSize:J

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 245
    const-string/jumbo v4, "content-type"

    const-string/jumbo v5, "application/octet-stream"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string/jumbo v4, "Entity-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gtz v4, :cond_3

    .line 248
    const-string/jumbo v4, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_1
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopProxyUtils;->createHttpHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setHeaders(Ljava/util/List;)V

    .line 255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 256
    const-string/jumbo v2, "fileName"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v3

    iget-object v3, v3, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string/jumbo v2, "clientNetType"

    invoke-static {}, Lmtopsdk/xstate/XState;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {}, Lmtopsdk/xstate/XState;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 259
    const-string/jumbo v2, "deviceId"

    invoke-static {}, Lmtopsdk/xstate/XState;->c()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_2
    const-string/jumbo v2, "appKey"

    invoke-static {}, Lmtopsdk/xstate/XState;->b()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string/jumbo v2, "ttid"

    invoke-static {}, Lmtopsdk/xstate/XState;->e()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopProxyUtils;->createHttpParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setParams(Ljava/util/List;)V

    .line 265
    new-instance v0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;-><init>(Ljava/io/File;JJ)V

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setBodyHandler(Lanetwork/channel/IBodyHandler;)V

    .line 267
    iget-object v0, p0, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->networkImpl:Lanetwork/channel/Network;

    invoke-interface {v0, v7}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;

    move-result-object v0

    .line 268
    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v1

    .line 269
    invoke-interface {v0}, Lanetwork/channel/Response;->d()Ljava/util/Map;

    move-result-object v0

    .line 270
    if-gez v1, :cond_4

    .line 271
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "NETWORK_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_NETWORK_ERROR"

    invoke-direct {v0, v8, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string/jumbo v1, "mtopsdk.UploadFileServiceImpl"

    const-string/jumbo v2, "gen upload address url error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_ADDRESS"

    const-string/jumbo v3, "\u65e0\u6548\u7684\u4e0a\u4f20\u5730\u5740"

    invoke-direct {v0, v8, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 236
    goto/16 :goto_0

    .line 250
    :cond_3
    const-string/jumbo v2, "Content-Length"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 274
    :cond_4
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_6

    .line 275
    const-string/jumbo v1, "Location"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 277
    new-instance v0, Lmtopsdk/mtop/util/Result;

    new-instance v2, Lmtopsdk/mtop/upload/domain/UploadResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lmtopsdk/mtop/upload/domain/UploadResult;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v2}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 279
    :cond_5
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    const-string/jumbo v3, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {v0, v8, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 281
    :cond_6
    const/16 v2, 0xc9

    if-ne v2, v1, :cond_7

    .line 282
    new-instance v0, Lmtopsdk/mtop/util/Result;

    new-instance v1, Lmtopsdk/mtop/upload/domain/UploadResult;

    invoke-direct {v1, v8, v6}, Lmtopsdk/mtop/upload/domain/UploadResult;-><init>(ZLjava/lang/String;)V

    invoke-direct {v0, v1}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 284
    :cond_7
    const-string/jumbo v1, "Error-Message"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 285
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v2, "OTHER_UPLOAD_ERROR"

    invoke-direct {v0, v8, v2, v1, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getResumeOffset(Lmtopsdk/mtop/upload/domain/UploadToken;)Lmtopsdk/mtop/util/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_TOKEN"

    const-string/jumbo v3, "\u4e0a\u4f20token\u4e3a\u7a7a\u6216\u8005token\u5df2\u5931\u6548"

    invoke-direct {v0, v4, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-object v0

    .line 164
    :cond_1
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getRetryTime()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lmtopsdk/mtop/upload/domain/UploadToken;->setRetryTime(I)V

    .line 166
    const-string/jumbo v0, "http://"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/mc/head/"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->genUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    :try_start_0
    new-instance v1, Lanetwork/channel/entity/RequestImpl;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    invoke-interface {v1, v4}, Lanetwork/channel/Request;->setRetryTime(I)V

    .line 176
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->HEAD:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lanetwork/channel/Request;->setMethod(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string/jumbo v2, "fileName"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v3

    iget-object v3, v3, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v2, "retryTime"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getRetryTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v2, "clientNetType"

    invoke-static {}, Lmtopsdk/xstate/XState;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    const-string/jumbo v2, "deviceId"

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_2
    const-string/jumbo v2, "appKey"

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v2, "ttid"

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalTtid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopProxyUtils;->createHttpParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Lanetwork/channel/Request;->setParams(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->networkImpl:Lanetwork/channel/Network;

    invoke-interface {v0, v1}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;

    move-result-object v0

    .line 191
    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v1

    .line 192
    invoke-interface {v0}, Lanetwork/channel/Response;->d()Ljava/util/Map;

    move-result-object v0

    .line 194
    if-gez v1, :cond_3

    .line 195
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "NETWORK_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_NETWORK_ERROR"

    invoke-direct {v0, v4, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 170
    :catch_0
    move-exception v0

    .line 171
    const-string/jumbo v1, "mtopsdk.UploadFileServiceImpl"

    const-string/jumbo v2, "gen getResumeOffset address url error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_ADDRESS"

    const-string/jumbo v3, "\u65e0\u6548\u7684\u4e0a\u4f20\u5730\u5740"

    invoke-direct {v0, v4, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 199
    :cond_3
    const/16 v2, 0xc8

    if-ne v2, v1, :cond_5

    .line 200
    const-string/jumbo v1, "Offset"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 204
    :try_start_1
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 205
    new-instance v0, Lmtopsdk/mtop/util/Result;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {v0, v1}, Lmtopsdk/mtop/util/Result;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 207
    :catch_1
    move-exception v0

    const-string/jumbo v0, "mtopsdk.UploadFileServiceImpl"

    const-string/jumbo v1, "parse offset headerField error "

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_OFFSET"

    const-string/jumbo v3, "\u65e0\u6548\u7684\u4e0a\u4f20OFFSET"

    invoke-direct {v0, v4, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_4
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_OFFSET"

    const-string/jumbo v3, "\u65e0\u6548\u7684\u4e0a\u4f20OFFSET"

    invoke-direct {v0, v4, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 214
    :cond_5
    const-string/jumbo v1, "Error-Message"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v2, "OTHER_UPLOAD_ERROR"

    invoke-direct {v0, v4, v2, v1, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getUploadToken(Lmtopsdk/mtop/upload/domain/BaseFileInfo;Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/util/Result;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/BaseFileInfo;",
            "Lmtopsdk/mtop/domain/IMTOPDataObject;",
            ")",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 127
    new-instance v0, Lmtopsdk/mtop/MtopProxy;

    invoke-static {p2}, Lmtopsdk/mtop/util/MtopConvert;->inputDoToMtopRequest(Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v2}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 129
    invoke-virtual {v0}, Lmtopsdk/mtop/MtopProxy;->syncApiCall()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 130
    new-instance v2, Lmtopsdk/mtop/upload/domain/UploadToken;

    invoke-direct {v2}, Lmtopsdk/mtop/upload/domain/UploadToken;-><init>()V

    .line 131
    invoke-virtual {v2, p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->setBaseFileInfo(Lmtopsdk/mtop/upload/domain/BaseFileInfo;)V

    .line 133
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    const-class v0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponse;

    invoke-static {v1, v0}, Lmtopsdk/mtop/util/MtopConvert;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;

    .line 137
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->setToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->getRetryCount()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lmtopsdk/mtop/upload/domain/UploadToken;->setRetryCount(J)V

    .line 139
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->setServerAddress(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->getTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lmtopsdk/mtop/upload/domain/UploadToken;->setTimeout(J)V

    .line 141
    invoke-virtual {v0}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenResponseData;->getMaxBodyLength()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lmtopsdk/mtop/upload/domain/UploadToken;->setMaxBodyLength(J)V

    .line 142
    new-instance v0, Lmtopsdk/mtop/util/Result;

    invoke-direct {v0}, Lmtopsdk/mtop/util/Result;-><init>()V

    .line 153
    :goto_0
    invoke-virtual {v0, v2}, Lmtopsdk/mtop/util/Result;->setModel(Ljava/lang/Object;)V

    .line 154
    return-object v0

    .line 144
    :cond_0
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    const-string/jumbo v4, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {v0, v5, v1, v3, v4}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isNetworkError()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "NETWORK_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v4, "\u7f51\u7edc\u9519\u8bef"

    invoke-direct {v0, v5, v1, v3, v4}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_2
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isSessionInvalid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 149
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v3, "SESSION_EXPIRE_ERROR"

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v3, v4, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 151
    :cond_3
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v3, "OTHER_UPLOAD_ERROR"

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v3, v4, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

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
    .line 68
    const-wide/16 v4, 0x0

    .line 70
    const-wide/16 v6, 0x0

    .line 71
    const-string/jumbo v8, ""

    .line 72
    const-string/jumbo v0, ""

    .line 73
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getFilePath()Ljava/lang/String;

    move-result-object v9

    .line 74
    const/4 v2, 0x0

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 78
    invoke-static {v1}, Lmtopsdk/mtop/upload/util/FileUtil;->getFileCRC32(Ljava/io/File;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    .line 79
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 80
    :try_start_3
    invoke-static {v6}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 81
    const-string/jumbo v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 82
    if-ltz v7, :cond_0

    .line 83
    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v0

    :cond_0
    move-wide v12, v2

    move-object v3, v0

    move-object v2, v6

    move-wide v6, v12

    .line 89
    :goto_0
    new-instance v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/upload/domain/BaseFileInfo;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;J)V

    .line 90
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-lez v1, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-gtz v1, :cond_2

    .line 91
    :cond_1
    new-instance v1, Lmtopsdk/mtop/upload/domain/UploadToken;

    invoke-direct {v1}, Lmtopsdk/mtop/upload/domain/UploadToken;-><init>()V

    .line 92
    invoke-virtual {v1, v0}, Lmtopsdk/mtop/upload/domain/UploadToken;->setBaseFileInfo(Lmtopsdk/mtop/upload/domain/BaseFileInfo;)V

    .line 93
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const/4 v2, 0x0

    const-string/jumbo v3, "ILLEGAL_FILE_ERROR"

    const-string/jumbo v4, "ANDROID_SYS_FILE_INVALID"

    const-string/jumbo v5, "\u65e0\u6548\u7684\u4e0a\u4f20\u6587\u4ef6"

    invoke-direct {v0, v2, v3, v4, v5}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, v1}, Lmtopsdk/mtop/util/Result;->setModel(Ljava/lang/Object;)V

    .line 115
    :goto_1
    return-object v0

    .line 86
    :catch_0
    move-exception v1

    move-object v12, v1

    move-object v1, v2

    move-wide v2, v6

    move-object v7, v12

    move-object v6, v8

    .line 87
    :goto_2
    const-string/jumbo v8, "mtopsdk.UploadFileServiceImpl"

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

    .line 98
    :cond_2
    new-instance v3, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;

    invoke-direct {v3}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;-><init>()V

    .line 99
    invoke-virtual {v3, v4, v5}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setSize(J)V

    .line 100
    invoke-virtual {v3, v6, v7}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setCrc(J)V

    .line 101
    invoke-virtual {v3, v2}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setFileName(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getType()Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 103
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getType()Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->getUploadType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setType(Ljava/lang/String;)V

    .line 105
    :cond_3
    invoke-static {}, Lmtopsdk/xstate/XState;->g()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 107
    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v1}, Lmtopsdk/xstate/NetworkClassEnum;->getNetClass()Ljava/lang/String;

    move-result-object v1

    .line 109
    :cond_4
    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setClientNetType(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getBizCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setBizCode(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getPrivateData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setPrivateData(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadFileInfo;->getOwnerNick()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lmtopsdk/mtop/upload/domain/MtopSysGetUploadTokenRequest;->setUserNick(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0, v0, v3}, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->getUploadToken(Lmtopsdk/mtop/upload/domain/BaseFileInfo;Lmtopsdk/mtop/domain/IMTOPDataObject;)Lmtopsdk/mtop/util/Result;

    move-result-object v0

    goto :goto_1

    .line 86
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

.method public resumeUpload(Lmtopsdk/mtop/upload/domain/UploadToken;J)Lmtopsdk/mtop/util/Result;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/upload/domain/UploadToken;",
            "J)",
            "Lmtopsdk/mtop/util/Result",
            "<",
            "Lmtopsdk/mtop/upload/domain/UploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 292
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    :cond_0
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_TOKEN"

    const-string/jumbo v3, "\u4e0a\u4f20token\u4e3a\u7a7a\u6216\u8005token\u5df2\u5931\u6548"

    invoke-direct {v0, v10, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :goto_0
    return-object v0

    .line 298
    :cond_1
    const-string/jumbo v0, "http://"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getServerAddress()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "/mc/patch/"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->genUploadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    :try_start_0
    new-instance v7, Lanetwork/channel/entity/RequestImpl;

    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v1}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    invoke-interface {v7, v10}, Lanetwork/channel/Request;->setRetryTime(I)V

    .line 308
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    invoke-virtual {v0}, Lmtopsdk/mtop/domain/MethodEnum;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setMethod(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    iget-object v1, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->file:Ljava/io/File;

    .line 311
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v0

    iget-wide v2, v0, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileSize:J

    sub-long/2addr v2, p2

    .line 313
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    .line 314
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_FILE_UPLOAD_FAIL"

    const-string/jumbo v3, "\u6587\u4ef6\u4e0a\u4f20\u5931\u8d25"

    invoke-direct {v0, v10, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    .line 303
    const-string/jumbo v1, "mtopsdk.UploadFileServiceImpl"

    const-string/jumbo v2, "gen resumeUpload address url error"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "OTHER_UPLOAD_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_INVALID_UPLOAD_ADDRESS"

    const-string/jumbo v3, "\u65e0\u6548\u7684\u4e0a\u4f20\u5730\u5740"

    invoke-direct {v0, v10, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    .line 305
    goto :goto_0

    .line 317
    :cond_2
    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getMaxBodyLength()J

    move-result-wide v4

    .line 318
    cmp-long v0, v2, v4

    if-lez v0, :cond_3

    move-wide v2, v4

    .line 321
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 322
    const-string/jumbo v8, "content-type"

    const-string/jumbo v9, "application/offset+octet-stream"

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    const-string/jumbo v8, "Offset"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    const-string/jumbo v8, "Content-Length"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopProxyUtils;->createHttpHeaders(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setHeaders(Ljava/util/List;)V

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string/jumbo v2, "fileName"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getBaseFileInfo()Lmtopsdk/mtop/upload/domain/BaseFileInfo;

    move-result-object v3

    iget-object v3, v3, Lmtopsdk/mtop/upload/domain/BaseFileInfo;->fileName:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    const-string/jumbo v2, "retryTime"

    invoke-virtual {p1}, Lmtopsdk/mtop/upload/domain/UploadToken;->getRetryTime()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string/jumbo v2, "clientNetType"

    invoke-static {}, Lmtopsdk/xstate/XState;->g()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 332
    const-string/jumbo v2, "deviceId"

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_4
    const-string/jumbo v2, "appKey"

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string/jumbo v2, "ttid"

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v3

    invoke-virtual {v3}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalTtid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-static {v0}, Lmtopsdk/mtop/util/MtopProxyUtils;->createHttpParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setParams(Ljava/util/List;)V

    .line 338
    new-instance v0, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lmtopsdk/mtop/upload/FileUploadBodyHandlerImpl;-><init>(Ljava/io/File;JJ)V

    invoke-interface {v7, v0}, Lanetwork/channel/Request;->setBodyHandler(Lanetwork/channel/IBodyHandler;)V

    .line 339
    iget-object v0, p0, Lmtopsdk/mtop/upload/service/UploadFileServiceImpl;->networkImpl:Lanetwork/channel/Network;

    invoke-interface {v0, v7}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;

    move-result-object v0

    .line 340
    invoke-interface {v0}, Lanetwork/channel/Response;->a()I

    move-result v1

    .line 341
    invoke-interface {v0}, Lanetwork/channel/Response;->d()Ljava/util/Map;

    move-result-object v2

    .line 343
    if-gez v1, :cond_5

    .line 344
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v1, "NETWORK_ERROR"

    const-string/jumbo v2, "ANDROID_SYS_NETWORK_ERROR"

    const-string/jumbo v3, "ANDROID_SYS_NETWORK_ERROR"

    invoke-direct {v0, v10, v1, v2, v3}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_5
    const/16 v0, 0xc8

    if-ne v0, v1, :cond_7

    .line 348
    new-instance v0, Lmtopsdk/mtop/util/Result;

    invoke-direct {v0}, Lmtopsdk/mtop/util/Result;-><init>()V

    .line 349
    const-string/jumbo v1, "Location"

    invoke-static {v2, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 350
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 351
    new-instance v2, Lmtopsdk/mtop/upload/domain/UploadResult;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1}, Lmtopsdk/mtop/upload/domain/UploadResult;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v2}, Lmtopsdk/mtop/util/Result;->setModel(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 353
    :cond_6
    new-instance v1, Lmtopsdk/mtop/upload/domain/UploadResult;

    invoke-direct {v1, v10, v6}, Lmtopsdk/mtop/upload/domain/UploadResult;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/util/Result;->setModel(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 356
    :cond_7
    const-string/jumbo v0, "Error-Message"

    invoke-static {v2, v0}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 357
    new-instance v0, Lmtopsdk/mtop/util/Result;

    const-string/jumbo v2, "OTHER_UPLOAD_ERROR"

    invoke-direct {v0, v10, v2, v1, v1}, Lmtopsdk/mtop/util/Result;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
