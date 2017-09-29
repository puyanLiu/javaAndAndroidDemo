.class public Lmtopsdk/mtop/cache/CacheManagerImpl;
.super Ljava/lang/Object;
.source "CacheManagerImpl.java"

# interfaces
.implements Lmtopsdk/mtop/cache/CacheManager;


# static fields
.field private static final GET_METHOD:Ljava/lang/String; = "GET"

.field private static final TAG:Ljava/lang/String; = "mtopsdk.CacheManagerImpl"


# instance fields
.field private cache:Lanetwork/network/cache/Cache;

.field private splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;


# direct methods
.method public constructor <init>(Lanetwork/network/cache/Cache;)V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    .line 63
    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    .line 69
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lanetwork/network/cache/ApiCache;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/cache/ApiCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    goto :goto_0
.end method

.method private handleCacheValidation(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 8

    .prologue
    .line 393
    if-nez p1, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-object p1

    .line 397
    :cond_1
    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->a:[B

    if-nez v0, :cond_2

    .line 398
    sget-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v0, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 403
    :cond_2
    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->d:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->g:Ljava/lang/String;

    if-nez v0, :cond_4

    .line 405
    iget-boolean v0, p1, Lanetwork/network/cache/RpcCache;->f:Z

    if-eqz v0, :cond_3

    .line 406
    sget-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v0, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 408
    :cond_3
    sget-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v0, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_0

    .line 414
    :cond_4
    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->d:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 416
    iget-wide v0, p1, Lanetwork/network/cache/RpcCache;->h:J

    .line 417
    iget-wide v2, p1, Lanetwork/network/cache/RpcCache;->e:J

    .line 418
    invoke-static {}, Lmtopsdk/mtop/global/SDKUtils;->getCorrectionTime()J

    move-result-wide v4

    .line 420
    cmp-long v6, v4, v0

    if-ltz v6, :cond_5

    add-long v6, v0, v2

    cmp-long v6, v4, v6

    if-gtz v6, :cond_5

    .line 421
    sget-object v6, Lanetwork/network/cache/RpcCache$CacheStatus;->FRESH:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v6, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    .line 427
    :goto_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "lastModifiedStr="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 429
    iget-object v7, p1, Lanetwork/network/cache/RpcCache;->d:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string/jumbo v7, ";lastModified="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    const-string/jumbo v0, ";maxAge="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 432
    const-string/jumbo v0, ";currentTime="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 433
    const-string/jumbo v0, ";t_offset="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lmtopsdk/xstate/XState;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    const-string/jumbo v0, ";status="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    const-string/jumbo v0, "mtopsdk.CacheManagerImpl"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 422
    :cond_5
    iget-boolean v6, p1, Lanetwork/network/cache/RpcCache;->f:Z

    if-eqz v6, :cond_6

    .line 423
    sget-object v6, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v6, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 425
    :cond_6
    sget-object v6, Lanetwork/network/cache/RpcCache$CacheStatus;->TIMEOUT:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v6, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto :goto_1

    .line 439
    :cond_7
    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->g:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    sget-object v0, Lanetwork/network/cache/RpcCache$CacheStatus;->NEED_UPDATE:Lanetwork/network/cache/RpcCache$CacheStatus;

    iput-object v0, p1, Lanetwork/network/cache/RpcCache;->i:Lanetwork/network/cache/RpcCache$CacheStatus;

    goto/16 :goto_0
.end method

.method private handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;
    .locals 7

    .prologue
    .line 344
    if-eqz p1, :cond_0

    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-object p1

    .line 347
    :cond_1
    iget-object v0, p1, Lanetwork/network/cache/RpcCache;->b:Ljava/util/Map;

    .line 348
    const-string/jumbo v1, "last-modified"

    invoke-static {v0, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 349
    const-string/jumbo v2, "cache-control"

    invoke-static {v0, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 350
    const-string/jumbo v3, "etag"

    invoke-static {v0, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 353
    if-nez v2, :cond_2

    if-nez v1, :cond_2

    if-eqz v3, :cond_0

    .line 357
    :cond_2
    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 358
    iput-object v1, p1, Lanetwork/network/cache/RpcCache;->d:Ljava/lang/String;

    .line 359
    invoke-static {v1}, Lmtopsdk/mtop/util/CacheUtil;->convertTimeFormatGMT2Long(Ljava/lang/String;)J

    move-result-wide v0

    .line 360
    iput-wide v0, p1, Lanetwork/network/cache/RpcCache;->h:J

    .line 361
    const-string/jumbo v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 362
    if-eqz v2, :cond_5

    .line 363
    array-length v4, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v0, v2, v1

    .line 365
    :try_start_0
    const-string/jumbo v5, "max-age="

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 366
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p1, Lanetwork/network/cache/RpcCache;->e:J

    .line 363
    :cond_3
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 369
    :cond_4
    const-string/jumbo v5, "of=on"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 370
    const/4 v0, 0x1

    iput-boolean v0, p1, Lanetwork/network/cache/RpcCache;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 372
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 379
    :cond_5
    invoke-static {v3}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    iput-object v3, p1, Lanetwork/network/cache/RpcCache;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method private queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 454
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-object v0

    .line 458
    :cond_1
    invoke-virtual {p0, p2, p1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v1

    .line 459
    if-eqz v1, :cond_0

    .line 460
    iget-object v0, v1, Lanetwork/network/cache/RpcCache;->c:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addCacheResponseSplitListener(Lmtopsdk/mtop/cache/CacheResponseSplitListener;)V
    .locals 0

    .prologue
    .line 334
    iput-object p1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    .line 336
    return-void
.end method

.method public getBlockName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    const-string/jumbo v0, ""

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 315
    :cond_1
    const-string/jumbo v0, ""

    .line 316
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v1

    .line 317
    if-eqz v1, :cond_0

    iget-object v2, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 318
    iget-object v0, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->blockName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getBlockName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const-string/jumbo v0, ""

    .line 329
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1, p2}, Lmtopsdk/common/util/StringUtils;->concatStr2LowerCase(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCache(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    invoke-interface {v0, p1, p2}, Lanetwork/network/cache/Cache;->a(Ljava/lang/String;Ljava/lang/String;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-direct {p0, v0}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleCacheValidation(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 140
    :cond_0
    return-object v0
.end method

.method public getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    const/4 v0, 0x0

    .line 231
    :goto_0
    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 225
    if-eqz p3, :cond_1

    invoke-static {}, Lmtopsdk/xstate/XState;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 226
    invoke-static {}, Lmtopsdk/xstate/XState;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    :cond_1
    invoke-static {p2}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmtopsdk/mtop/domain/MtopRequest;",
            "Lmtopsdk/mtop/common/MtopNetworkProp;",
            "Ljava/net/URL;",
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/Param;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 258
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-object v2

    .line 265
    :cond_1
    const/4 v0, 0x1

    .line 266
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v1

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v3

    .line 267
    if-eqz v3, :cond_8

    .line 268
    iget-object v1, v3, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->excludeQueryList:Ljava/util/List;

    .line 269
    const-string/jumbo v4, "public"

    iget-object v3, v3, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->scope:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 270
    const/4 v0, 0x0

    move v9, v0

    move-object v0, v1

    move v1, v9

    .line 274
    :goto_1
    new-instance v3, Lmtopsdk/mtop/protocol/TtidParamReader;

    iget-object v4, p2, Lmtopsdk/mtop/common/MtopNetworkProp;->ttid:Ljava/lang/String;

    invoke-direct {v3, v4}, Lmtopsdk/mtop/protocol/TtidParamReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmtopsdk/mtop/protocol/TtidParamReader;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 278
    if-eqz v0, :cond_2

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 279
    :cond_2
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lmtopsdk/mtop/transform/converter/NetworkConverter;->initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 284
    :cond_3
    iget-object v4, p1, Lmtopsdk/mtop/domain/MtopRequest;->dataParams:Ljava/util/Map;

    .line 285
    if-eqz v4, :cond_4

    .line 286
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 287
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 301
    :catch_0
    move-exception v0

    .line 302
    const-string/jumbo v1, "mtopsdk.CacheManagerImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getCacheKey] getCacheKey error.---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_4
    :try_start_1
    invoke-static {v4}, Lmtopsdk/mtop/util/ReflectUtil;->converMapToDataStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    .line 291
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 292
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/Param;

    .line 293
    const-string/jumbo v7, "data"

    invoke-interface {v0}, Lanetwork/channel/Param;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 294
    new-instance v7, Lanetwork/channel/entity/StringParam;

    invoke-interface {v0}, Lanetwork/channel/Param;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0, v4}, Lanetwork/channel/entity/StringParam;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 296
    :cond_5
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 299
    :cond_6
    invoke-virtual {p3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lmtopsdk/mtop/transform/converter/NetworkConverter;->initUrl(Ljava/lang/String;Ljava/util/List;)Ljava/net/URL;

    move-result-object v0

    .line 300
    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    move v9, v0

    move-object v0, v1

    move v1, v9

    goto/16 :goto_1

    :cond_8
    move v1, v0

    move-object v0, v2

    goto/16 :goto_1
.end method

.method public getCacheKey(Lmtopsdk/mtop/intf/MtopBuilder;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 236
    if-nez p1, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-object v0

    .line 241
    :cond_1
    new-instance v1, Lmtopsdk/mtop/MtopProxy;

    iget-object v2, p1, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v3, p1, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-direct {v1, v2, v3, v0, v0}, Lmtopsdk/mtop/MtopProxy;-><init>(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/lang/Object;Lmtopsdk/mtop/common/MtopListener;)V

    .line 242
    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getParamBuilder()Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;

    move-result-object v2

    invoke-interface {v2, v1}, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilder;->buildParams(Lmtopsdk/mtop/MtopProxy;)Ljava/util/Map;

    move-result-object v2

    .line 243
    if-eqz v2, :cond_0

    .line 246
    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getTransformer()Lmtopsdk/mtop/transform/MtopTransform;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Lmtopsdk/mtop/transform/MtopTransform;->convertNetworktRequest(Lmtopsdk/mtop/MtopProxy;Ljava/util/Map;)Lanetwork/channel/Request;

    move-result-object v1

    .line 247
    if-eqz v1, :cond_0

    .line 250
    iget-object v0, p1, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    iget-object v2, p1, Lmtopsdk/mtop/intf/MtopBuilder;->mtopProp:Lmtopsdk/mtop/common/MtopNetworkProp;

    invoke-interface {v1}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-interface {v1}, Lanetwork/channel/Request;->getParams()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v3, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isNeedReadCache(Lanetwork/channel/Request;Lmtopsdk/mtop/common/MtopListener;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 73
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalCacheSwitchOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 78
    const-string/jumbo v1, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v2, "GlobalCacheSwitch=false,Don\'t Read Local Cache."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_2
    const-string/jumbo v1, "GET"

    invoke-interface {p1}, Lanetwork/channel/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    const-string/jumbo v1, "cache-control"

    invoke-interface {p1, v1}, Lanetwork/channel/Request;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    array-length v3, v2

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 91
    const-string/jumbo v5, "no-cache"

    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 98
    :cond_3
    if-eqz p2, :cond_4

    instance-of v1, p2, Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-nez v1, :cond_0

    .line 101
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeedWriteCache(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 112
    :cond_1
    invoke-static {}, Lmtopsdk/mtop/global/SwitchConfig;->getInstance()Lmtopsdk/mtop/global/SwitchConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SwitchConfig;->isGlobalCacheSwitchOpen()Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    const-string/jumbo v1, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v2, "GlobalCacheSwitch=false,Don\'t Write Local Cache."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :cond_2
    const-string/jumbo v1, "cache-control"

    invoke-static {p1, v1}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    if-eqz v1, :cond_3

    const-string/jumbo v2, "no-cache"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    :cond_3
    const-string/jumbo v2, "last-modified"

    invoke-static {p1, v2}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    const-string/jumbo v3, "etag"

    invoke-static {p1, v3}, Lmtopsdk/common/util/HeaderHandlerUtil;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-eqz v3, :cond_0

    .line 129
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z
    .locals 3

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 147
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    invoke-interface {v0, p1, p2, p3}, Lanetwork/network/cache/Cache;->a(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z

    move-result v0

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const-string/jumbo v1, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v2, "[putCache] Invalid cacheKey or rpcCache"

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public putCache(Ljava/lang/String;Ljava/lang/String;Lmtopsdk/mtop/domain/MtopResponse;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Lanetwork/network/cache/RpcCache;

    invoke-direct {v0}, Lanetwork/network/cache/RpcCache;-><init>()V

    .line 160
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lanetwork/network/cache/RpcCache;->b:Ljava/util/Map;

    .line 161
    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object v1

    iput-object v1, v0, Lanetwork/network/cache/RpcCache;->a:[B

    .line 162
    invoke-direct {p0, v0}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 164
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v1

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->push:Z

    if-eqz v1, :cond_0

    .line 166
    invoke-direct {p0, p2, p1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    if-eqz v1, :cond_0

    .line 168
    iput-object v1, v0, Lanetwork/network/cache/RpcCache;->c:Ljava/lang/String;

    .line 172
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    invoke-interface {v1, p1, p2, v0}, Lanetwork/network/cache/Cache;->a(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 178
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->splitListener:Lmtopsdk/mtop/cache/CacheResponseSplitListener;

    invoke-interface {v0, p3}, Lmtopsdk/mtop/cache/CacheResponseSplitListener;->onSplit(Lmtopsdk/mtop/domain/MtopResponse;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 182
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string/jumbo v1, "mtopsdk.CacheManagerImpl"

    const-string/jumbo v3, "onSplit throws exception"

    invoke-static {v1, v3, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_1

    .line 185
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/cache/SplitedCacheItem;

    .line 186
    if-eqz v0, :cond_4

    iget-object v1, v0, Lmtopsdk/mtop/cache/SplitedCacheItem;->builder:Lmtopsdk/mtop/intf/MtopBuilder;

    if-eqz v1, :cond_4

    .line 187
    iget-object v1, v0, Lmtopsdk/mtop/cache/SplitedCacheItem;->builder:Lmtopsdk/mtop/intf/MtopBuilder;

    .line 190
    invoke-virtual {p0, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getCacheKey(Lmtopsdk/mtop/intf/MtopBuilder;)Ljava/lang/String;

    move-result-object v4

    .line 192
    iget-object v5, v1, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    if-eqz v5, :cond_7

    .line 193
    iget-object v1, v1, Lmtopsdk/mtop/intf/MtopBuilder;->request:Lmtopsdk/mtop/domain/MtopRequest;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmtopsdk/mtop/cache/CacheManagerImpl;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    :goto_3
    invoke-static {v4}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 196
    new-instance v5, Lanetwork/network/cache/RpcCache;

    invoke-direct {v5}, Lanetwork/network/cache/RpcCache;-><init>()V

    .line 197
    iget-object v6, v0, Lmtopsdk/mtop/cache/SplitedCacheItem;->header:Ljava/util/Map;

    iput-object v6, v5, Lanetwork/network/cache/RpcCache;->b:Ljava/util/Map;

    .line 198
    iget-object v0, v0, Lmtopsdk/mtop/cache/SplitedCacheItem;->body:[B

    iput-object v0, v5, Lanetwork/network/cache/RpcCache;->a:[B

    .line 199
    invoke-direct {p0, v5}, Lmtopsdk/mtop/cache/CacheManagerImpl;->handleResponseCacheFlag(Lanetwork/network/cache/RpcCache;)Lanetwork/network/cache/RpcCache;

    move-result-object v0

    .line 200
    invoke-static {}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getInstance()Lmtopsdk/mtop/cache/config/CacheConfigManager;

    move-result-object v5

    invoke-virtual {p3}, Lmtopsdk/mtop/domain/MtopResponse;->getFullKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmtopsdk/mtop/cache/config/CacheConfigManager;->getApiCacheDoByKey(Ljava/lang/String;)Lmtopsdk/mtop/cache/domain/ApiCacheDo;

    move-result-object v5

    .line 201
    if-eqz v5, :cond_5

    iget-boolean v5, v5, Lmtopsdk/mtop/cache/domain/ApiCacheDo;->push:Z

    if-eqz v5, :cond_5

    .line 202
    invoke-direct {p0, p1, p2}, Lmtopsdk/mtop/cache/CacheManagerImpl;->queryExistRpcCacheVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    if-eqz v5, :cond_5

    .line 204
    iput-object v5, v0, Lanetwork/network/cache/RpcCache;->c:Ljava/lang/String;

    .line 207
    :cond_5
    iget-object v5, p0, Lmtopsdk/mtop/cache/CacheManagerImpl;->cache:Lanetwork/network/cache/Cache;

    invoke-interface {v5, v4, v1, v0}, Lanetwork/network/cache/Cache;->a(Ljava/lang/String;Ljava/lang/String;Lanetwork/network/cache/RpcCache;)Z

    move-result v0

    .line 208
    if-nez v0, :cond_4

    .line 209
    const-string/jumbo v0, "mtopsdk.CacheManagerImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "put cacheItem failed,cacheItemKey="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";cacheItemBlockName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 213
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    move-object v1, v2

    goto :goto_3
.end method
