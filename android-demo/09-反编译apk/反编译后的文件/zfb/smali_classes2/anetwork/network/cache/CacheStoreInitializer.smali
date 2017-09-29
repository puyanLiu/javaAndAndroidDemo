.class public Lanetwork/network/cache/CacheStoreInitializer;
.super Ljava/lang/Object;
.source "CacheStoreInitializer.java"


# static fields
.field public static volatile a:Z

.field public static b:Ljava/lang/String;

.field public static c:Landroid/content/Context;

.field private static d:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lanetwork/network/cache/CacheStoreInitializer;->a:Z

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lanetwork/network/cache/CacheStoreInitializer;->d:Ljava/util/concurrent/locks/Lock;

    .line 19
    const-string/jumbo v0, ""

    sput-object v0, Lanetwork/network/cache/CacheStoreInitializer;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 4

    .prologue
    .line 58
    :try_start_0
    invoke-static {}, Lcom/taobao/nbcache/MultiNBCache;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lanetwork/network/cache/CacheStoreInitializer;->b:Ljava/lang/String;

    sget-object v1, Lanetwork/network/cache/CacheStoreInitializer;->c:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/taobao/nbcache/MultiNBCache;->init(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    .line 60
    const-string/jumbo v1, "mtopsdk.CacheStoreInitializer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[checkReInit] checkReInit initReslt="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string/jumbo v1, "mtopsdk.CacheStoreInitializer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[checkReInit]  reInit error.---"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 23
    sget-boolean v0, Lanetwork/network/cache/CacheStoreInitializer;->a:Z

    if-nez v0, :cond_2

    .line 24
    sget-object v0, Lanetwork/network/cache/CacheStoreInitializer;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 26
    :try_start_0
    sget-boolean v0, Lanetwork/network/cache/CacheStoreInitializer;->a:Z

    if-nez v0, :cond_1

    .line 27
    sput-object p1, Lanetwork/network/cache/CacheStoreInitializer;->b:Ljava/lang/String;

    .line 28
    sput-object p0, Lanetwork/network/cache/CacheStoreInitializer;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :try_start_1
    invoke-static {}, Lcom/taobao/nbcache/MultiNBCache;->isInited()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p0}, Lcom/taobao/nbcache/MultiNBCache;->init(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    :cond_0
    new-instance v1, Lanetwork/network/cache/UsertrackUploadStatistics;

    invoke-direct {v1}, Lanetwork/network/cache/UsertrackUploadStatistics;-><init>()V

    invoke-static {p0, v1}, Lanetwork/network/cache/ApiCacheStatistics;->a(Landroid/content/Context;Lanetwork/network/cache/b;)V

    const/4 v1, 0x1

    sput-boolean v1, Lanetwork/network/cache/CacheStoreInitializer;->a:Z

    invoke-static {}, Lmtopsdk/common/util/TBSdkLog;->isPrintLog()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mtopsdk.CacheStoreInitializer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[init]CacheStore init. initResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :cond_1
    :goto_0
    sget-object v0, Lanetwork/network/cache/CacheStoreInitializer;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 35
    :cond_2
    return-void

    .line 29
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v1, "mtopsdk.CacheStoreInitializer"

    const-string/jumbo v2, "[init] init CacheStore error."

    invoke-static {v1, v2, v0}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    sget-object v1, Lanetwork/network/cache/CacheStoreInitializer;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
