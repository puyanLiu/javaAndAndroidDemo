.class public Lanetwork/network/offline/OfflineRequestCache;
.super Ljava/lang/Object;
.source "OfflineRequestCache.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1, p2}, Lanetwork/network/cache/CacheStoreInitializer;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    :try_start_0
    new-instance v0, Lcom/taobao/nbcache/ConfigObject;

    invoke-direct {v0}, Lcom/taobao/nbcache/ConfigObject;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Lcom/taobao/nbcache/ConfigObject;->blockSize:I

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/nbcache/ConfigObject;->isCompress:Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/taobao/nbcache/ConfigObject;->isEncrypt:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/taobao/nbcache/ConfigObject;->isRemovable:Z

    const-string/jumbo v1, "OfflineRequest_"

    invoke-static {v1, v0}, Lcom/taobao/nbcache/MultiNBCache;->setBlockConfig(Ljava/lang/String;Lcom/taobao/nbcache/ConfigObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "mtopsdk.OfflineRequestCache"

    const-string/jumbo v1, "MultiNBCache setBlockConfig succeed -- BlockName: OfflineRequest_"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    const-string/jumbo v0, "mtopsdk.OfflineRequestCache"

    const-string/jumbo v1, "MultiNBCache setBlockConfig failed -- BlockName: OfflineRequest_"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "mtopsdk.OfflineRequestCache"

    const-string/jumbo v2, "MultiNBCache setBlockConfig failed."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;[B)Z
    .locals 5

    .prologue
    .line 81
    invoke-static {}, Lanetwork/network/cache/CacheStoreInitializer;->a()V

    .line 82
    const/4 v0, 0x0

    .line 84
    :try_start_0
    const-string/jumbo v1, "OfflineRequest_"

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-static {v1, p0, p1, v2, v3}, Lcom/taobao/nbcache/MultiNBCache;->writeWithNoEncrypt(Ljava/lang/String;Ljava/lang/String;[BZI)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 88
    :goto_0
    return v0

    .line 85
    :catch_0
    move-exception v1

    .line 86
    const-string/jumbo v2, "mtopsdk.OfflineRequestCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[put] offline request cache failed.---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)[B
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-static {}, Lanetwork/network/cache/CacheStoreInitializer;->a()V

    .line 54
    :try_start_0
    const-string/jumbo v0, "OfflineRequest_"

    invoke-static {v0, p0}, Lcom/taobao/nbcache/MultiNBCache;->readWithNoEncrypt(Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    :try_start_1
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 59
    const-string/jumbo v2, "mtopsdk.OfflineRequestCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[get] query offline request from cachestore is null; cacheKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    move-object v0, v1

    .line 76
    :cond_1
    :goto_0
    return-object v0

    .line 69
    :catch_0
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    .line 65
    :goto_1
    :try_start_2
    const-string/jumbo v2, "mtopsdk.OfflineRequestCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[get] query query offline request from cachestore failed.---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 69
    :catchall_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public static a()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 108
    invoke-static {}, Lanetwork/network/cache/CacheStoreInitializer;->a()V

    .line 109
    const/4 v0, 0x0

    .line 112
    :try_start_0
    const-string/jumbo v1, "OfflineRequest_"

    invoke-static {v1}, Lcom/taobao/nbcache/MultiNBCache;->getAllKey(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    const-string/jumbo v2, "mtopsdk.OfflineRequestCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[get] get all keys for blockName=OfflineRequest_ fails.---"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 5

    .prologue
    .line 93
    invoke-static {}, Lanetwork/network/cache/CacheStoreInitializer;->a()V

    .line 94
    const/4 v0, 0x0

    .line 96
    :try_start_0
    const-string/jumbo v1, "OfflineRequest_"

    invoke-static {v1, p0}, Lcom/taobao/nbcache/MultiNBCache;->removeWithNoEncrypt(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 100
    :goto_0
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    const-string/jumbo v1, "mtopsdk.OfflineRequestCache"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[remove] execute remove cacheItem cacheKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ";result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_0
    return v0

    .line 97
    :catch_0
    move-exception v1

    .line 98
    const-string/jumbo v2, "mtopsdk.OfflineRequestCache"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[remove] remove cacheItem cacheKey="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " error.---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
