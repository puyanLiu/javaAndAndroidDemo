.class Lmtopsdk/mtop/offline/OfflineRequestQueue;
.super Ljava/lang/Object;
.source "OfflineRequestQueue.java"


# static fields
.field private static final MAX_COUNT:I = 0x32

.field private static final TAG:Ljava/lang/String; = "mtopsdk.OfflineRequestQueue"

.field private static final anonymousUser:Ljava/lang/String; = "anonymous"


# instance fields
.field private cache:Lanetwork/network/offline/OfflineRequestCache;

.field private queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:I

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    .line 30
    new-instance v0, Lanetwork/network/offline/OfflineRequestCache;

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lmtopsdk/mtop/global/SDKConfig;->getInstance()Lmtopsdk/mtop/global/SDKConfig;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/global/SDKConfig;->getGlobalSaveFileRootDir()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lanetwork/network/offline/OfflineRequestCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->cache:Lanetwork/network/offline/OfflineRequestCache;

    .line 31
    invoke-virtual {p0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userStatusChanged()V

    .line 32
    return-void
.end method

.method private genCacheKey()Ljava/lang/String;
    .locals 4

    .prologue
    .line 102
    const-string/jumbo v0, "%s&%d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userId:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCachedRequest(Ljava/lang/String;)Lmtopsdk/mtop/offline/OfflineRequest;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-static {p1}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 189
    :cond_1
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->cache:Lanetwork/network/offline/OfflineRequestCache;

    invoke-static {p1}, Lanetwork/network/offline/OfflineRequestCache;->a(Ljava/lang/String;)[B

    move-result-object v1

    .line 190
    if-nez v1, :cond_2

    .line 191
    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    const-string/jumbo v1, "mtopsdk.OfflineRequestQueue"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[get] cached offline request is null; cacheKey="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_2
    invoke-static {v1}, Lmtopsdk/mtop/offline/OfflineRequest;->fromByteArray([B)Lmtopsdk/mtop/offline/OfflineRequest;

    move-result-object v0

    goto :goto_0
.end method

.method private getRequestId(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 88
    const-string/jumbo v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 90
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    aget-object v2, v1, v2

    iget-object v3, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v2, 0x1

    :try_start_0
    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private initQueueFromCache()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 52
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 53
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->cache:Lanetwork/network/offline/OfflineRequestCache;

    invoke-static {}, Lanetwork/network/offline/OfflineRequestCache;->a()[Ljava/lang/String;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    array-length v2, v1

    if-nez v2, :cond_1

    .line 56
    :cond_0
    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    .line 79
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 61
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    .line 62
    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->getRequestId(Ljava/lang/String;)I

    move-result v3

    .line 63
    if-ltz v3, :cond_2

    const/16 v4, 0x32

    if-ge v3, v4, :cond_2

    .line 64
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v2, v3, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    :cond_3
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 69
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 71
    iget-object v3, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 74
    :cond_4
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 75
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    .line 78
    :cond_5
    const-string/jumbo v0, "mtopsdk.OfflineRequestQueue"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[initQueueFromCache] Queue size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " requestId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private putCachedRequest(Lmtopsdk/mtop/offline/OfflineRequest;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 174
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    invoke-static {p1}, Lmtopsdk/mtop/offline/OfflineRequest;->toByteArray(Lmtopsdk/mtop/offline/OfflineRequest;)[B

    move-result-object v1

    .line 178
    if-eqz v1, :cond_0

    .line 182
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->cache:Lanetwork/network/offline/OfflineRequestCache;

    invoke-static {p2, v1}, Lanetwork/network/offline/OfflineRequestCache;->a(Ljava/lang/String;[B)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addRequest(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 112
    if-nez p1, :cond_0

    .line 136
    :goto_0
    return v0

    .line 117
    :cond_0
    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    const/16 v2, 0x32

    if-lt v1, v2, :cond_1

    .line 119
    const-string/jumbo v1, "mtopsdk.OfflineRequestQueue"

    const-string/jumbo v2, "[addRequest] Queue size exceed limit."

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 123
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->genCacheKey()Ljava/lang/String;

    move-result-object v1

    .line 124
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequest;

    invoke-direct {v0, p1}, Lmtopsdk/mtop/offline/OfflineRequest;-><init>(Lmtopsdk/mtop/MtopProxy;)V

    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->genCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->putCachedRequest(Lmtopsdk/mtop/offline/OfflineRequest;Ljava/lang/String;)Z

    move-result v0

    .line 125
    if-eqz v0, :cond_2

    .line 126
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 127
    iget v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->requestId:I

    .line 128
    const/4 v0, 0x1

    .line 133
    :goto_1
    const-string/jumbo v2, "mtopsdk.OfflineRequestQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[addRequest] result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " cache key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " Queue size:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    monitor-exit p0

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->getInstance()Lmtopsdk/mtop/offline/OfflineRequestStatistic;

    move-result-object v2

    invoke-virtual {v2}, Lmtopsdk/mtop/offline/OfflineRequestStatistic;->onOpEnqueueFailCount()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getRequest()Lmtopsdk/mtop/MtopProxy;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 145
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 148
    if-nez v0, :cond_1

    move-object v0, v1

    .line 165
    :goto_0
    return-object v0

    .line 152
    :cond_1
    iget-object v2, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    const-string/jumbo v2, "mtopsdk.OfflineRequestQueue"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "[getRequest] Cache key:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " Queue size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0, v0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->getCachedRequest(Ljava/lang/String;)Lmtopsdk/mtop/offline/OfflineRequest;

    move-result-object v2

    .line 160
    if-nez v2, :cond_2

    move-object v0, v1

    .line 161
    goto :goto_0

    .line 163
    :cond_2
    invoke-virtual {v2}, Lmtopsdk/mtop/offline/OfflineRequest;->getMtopProxy()Lmtopsdk/mtop/MtopProxy;

    move-result-object v1

    .line 164
    iget-object v2, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->cache:Lanetwork/network/offline/OfflineRequestCache;

    invoke-static {v0}, Lanetwork/network/offline/OfflineRequestCache;->b(Ljava/lang/String;)Z

    move-object v0, v1

    .line 165
    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized userStatusChanged()V
    .locals 2

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lmtopsdk/xstate/XState;->d()Ljava/lang/String;

    move-result-object v0

    .line 37
    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    const-string/jumbo v0, "anonymous"

    .line 41
    :cond_0
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestQueue;->userId:Ljava/lang/String;

    .line 45
    :cond_1
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->initQueueFromCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
