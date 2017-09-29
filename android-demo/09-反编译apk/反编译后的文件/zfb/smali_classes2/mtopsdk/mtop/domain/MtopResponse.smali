.class public Lmtopsdk/mtop/domain/MtopResponse;
.super Ljava/lang/Object;
.source "MtopResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ERR_CODE:Ljava/lang/String; = "ERR_CODE"

.field private static final FAIL:Ljava/lang/String; = "FAIL"

.field private static final KEY:Ljava/lang/String; = "KEY"

.field private static final SHARP:Ljava/lang/String; = "::"

.field private static final TAG:Ljava/lang/String; = "MtopResponse"

.field private static final VALUE:Ljava/lang/String; = "VALUE"

.field private static final serialVersionUID:J = 0x15bd0e193dcddcdbL


# instance fields
.field private api:Ljava/lang/String;

.field private bFromCache:Z

.field private volatile bParsed:Z

.field private bytedata:[B

.field private data:[B
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private dataJsonObject:Lorg/json/JSONObject;

.field private headerFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

.field private responseCode:I

.field private ret:[Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private retCode:Ljava/lang/String;

.field private retMsg:Ljava/lang/String;

.field private v:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 104
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bFromCache:Z

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 104
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bFromCache:Z

    .line 113
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 114
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 104
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bFromCache:Z

    .line 120
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 121
    iput-object p2, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 122
    iput-object p3, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 123
    iput-object p4, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 124
    return-void
.end method


# virtual methods
.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 164
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBytedata()[B
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    return-object v0
.end method

.method public getData()[B
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    return-object v0
.end method

.method public getDataJsonObject()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 229
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 231
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFullKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 414
    :cond_0
    const/4 v0, 0x0

    .line 416
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 255
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    return-object v0
.end method

.method public getMtopStat()Lmtopsdk/mtop/util/MtopStatistics;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 266
    iget v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    return v0
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 193
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 197
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getRetCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 146
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getV()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->parseJsonByte()V

    .line 180
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    return-object v0
.end method

.method public is41XResult()Z
    .locals 1

    .prologue
    .line 469
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->is41XResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiLockedResult()Z
    .locals 1

    .prologue
    .line 478
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isApiLockedResult(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isApiSuccess()Z
    .locals 1

    .prologue
    .line 423
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSuccess(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isExpiredRequest()Z
    .locals 1

    .prologue
    .line 428
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isExpiredRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isFromCache()Z
    .locals 1

    .prologue
    .line 388
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bFromCache:Z

    return v0
.end method

.method public isIllegelSign()Z
    .locals 1

    .prologue
    .line 461
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isIllegelSign(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMtopSdkError()Z
    .locals 1

    .prologue
    .line 486
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isMtopSdkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNetworkError()Z
    .locals 1

    .prologue
    .line 445
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isNetworkError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSessionInvalid()Z
    .locals 1

    .prologue
    .line 453
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSessionInvalid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSystemError()Z
    .locals 1

    .prologue
    .line 437
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmtopsdk/mtop/util/ErrorConstant;->isSystemError(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseJsonByte()V
    .locals 6

    .prologue
    .line 284
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 288
    :cond_0
    monitor-enter p0

    .line 289
    :try_start_0
    iget-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    if-eqz v0, :cond_1

    .line 290
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 292
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bParsed:Z

    .line 293
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    array-length v0, v0

    if-nez v0, :cond_4

    .line 294
    :cond_2
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    const-string/jumbo v0, "MtopResponse"

    const-string/jumbo v1, "byte data is null or length is 0"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :cond_3
    const-string/jumbo v0, "ANDROID_SYS_JSONDATA_BLANK"

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "\u8fd4\u56deJSONDATA\u4e3a\u7a7a"

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 299
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    :cond_4
    :try_start_2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 304
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 305
    const-string/jumbo v1, "MtopResponse"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "response : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 310
    const-string/jumbo v0, "api"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 313
    :cond_6
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 314
    const-string/jumbo v0, "v"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 318
    :cond_7
    const-string/jumbo v0, "ret"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 319
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 320
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    .line 321
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_8

    .line 322
    iget-object v4, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 326
    :cond_8
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/domain/MtopResponse;->parserRet([Ljava/lang/String;)V

    .line 327
    const-string/jumbo v0, "data"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :goto_2
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string/jumbo v1, "MtopResponse"

    const-string/jumbo v2, "\u89e3\u6790JSONDATA\u9519\u8bef"

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 331
    const-string/jumbo v0, "ANDROID_SYS_JSONDATA_PARSE_ERROR"

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 332
    const-string/jumbo v0, "\u89e3\u6790JSONDATA\u9519\u8bef"

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public parserRet([Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 341
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 345
    array-length v3, p1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, p1, v0

    .line 346
    const-string/jumbo v5, "::"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 347
    if-ltz v5, :cond_2

    .line 352
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 353
    const-string/jumbo v6, "::"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 354
    if-eqz v4, :cond_2

    array-length v6, v4

    if-le v6, v8, :cond_2

    .line 355
    const-string/jumbo v6, "KEY"

    aget-object v7, v4, v1

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string/jumbo v6, "VALUE"

    aget-object v4, v4, v8

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_4

    .line 365
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 366
    const-string/jumbo v1, "KEY"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 367
    const-string/jumbo v1, "VALUE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    goto :goto_0

    .line 368
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 369
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 370
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 371
    const-string/jumbo v2, "FAIL"

    const-string/jumbo v3, "KEY"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v2, "ERR_CODE"

    const-string/jumbo v3, "KEY"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 373
    const-string/jumbo v2, "VALUE"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 374
    const-string/jumbo v1, "VALUE"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 377
    :cond_5
    const-string/jumbo v0, "KEY"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 378
    const-string/jumbo v0, "VALUE"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 170
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setBytedata([B)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    .line 249
    return-void
.end method

.method public setData([B)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 223
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->data:[B

    .line 224
    return-void
.end method

.method public setDataJsonObject(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    .line 236
    return-void
.end method

.method public setFromCache(Z)V
    .locals 0

    .prologue
    .line 384
    iput-boolean p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->bFromCache:Z

    .line 385
    return-void
.end method

.method public setHeaderFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 261
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->headerFields:Ljava/util/Map;

    .line 262
    return-void
.end method

.method public setMtopStat(Lmtopsdk/mtop/util/MtopStatistics;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->mtopStat:Lmtopsdk/mtop/util/MtopStatistics;

    .line 281
    return-void
.end method

.method public setResponseCode(I)V
    .locals 0

    .prologue
    .line 271
    iput p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->responseCode:I

    .line 272
    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setRetCode(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRetMsg(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setV(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "MtopResponse"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 397
    :try_start_0
    const-string/jumbo v0, "[api="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->api:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const-string/jumbo v0, ",v="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    const-string/jumbo v0, ",retCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    const-string/jumbo v0, ",retMsg="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->retMsg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    const-string/jumbo v0, ",ret="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->ret:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    const-string/jumbo v0, ",data="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lmtopsdk/mtop/domain/MtopResponse;->dataJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 403
    const-string/jumbo v0, ",bytedata="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    const-string/jumbo v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 403
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lmtopsdk/mtop/domain/MtopResponse;->bytedata:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
