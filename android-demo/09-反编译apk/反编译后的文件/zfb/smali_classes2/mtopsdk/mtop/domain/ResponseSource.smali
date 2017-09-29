.class public Lmtopsdk/mtop/domain/ResponseSource;
.super Ljava/lang/Object;
.source "ResponseSource.java"


# instance fields
.field private cacheBlock:Ljava/lang/String;

.field private cacheKey:Ljava/lang/String;

.field private cacheManager:Lmtopsdk/mtop/cache/CacheManager;

.field public cacheResponse:Lmtopsdk/mtop/domain/MtopResponse;

.field public cacheStat:Lanetwork/network/cache/CacheStat;

.field public isAsync:Z

.field private mtopProxy:Lmtopsdk/mtop/MtopProxy;

.field private request:Lanetwork/channel/Request;

.field public requireConnection:Z

.field public rpcCache:Lanetwork/network/cache/RpcCache;


# direct methods
.method public constructor <init>(Lmtopsdk/mtop/MtopProxy;Lanetwork/channel/Request;Lmtopsdk/mtop/cache/CacheManager;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Lanetwork/channel/Request;

    .line 48
    iput-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->rpcCache:Lanetwork/network/cache/RpcCache;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->requireConnection:Z

    .line 64
    iput-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheStat:Lanetwork/network/cache/CacheStat;

    .line 76
    iput-object p1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    .line 77
    iput-object p2, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Lanetwork/channel/Request;

    .line 78
    iput-object p3, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    .line 79
    return-void
.end method


# virtual methods
.method public getCacheBlock()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    .line 97
    :goto_0
    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopRequest;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmtopsdk/mtop/cache/CacheManager;->getBlockName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheBlock:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 5

    .prologue
    .line 83
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Lmtopsdk/common/util/StringUtils;->isNotBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    .line 88
    :goto_0
    return-object v0

    .line 86
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    iget-object v1, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v1}, Lmtopsdk/mtop/MtopProxy;->getMtopRequest()Lmtopsdk/mtop/domain/MtopRequest;

    move-result-object v1

    iget-object v2, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    invoke-virtual {v2}, Lmtopsdk/mtop/MtopProxy;->getProperty()Lmtopsdk/mtop/common/MtopNetworkProp;

    move-result-object v2

    iget-object v3, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Lanetwork/channel/Request;

    invoke-interface {v3}, Lanetwork/channel/Request;->getURL()Ljava/net/URL;

    move-result-object v3

    iget-object v4, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Lanetwork/channel/Request;

    invoke-interface {v4}, Lanetwork/channel/Request;->getParams()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/cache/CacheManager;->getCacheKey(Lmtopsdk/mtop/domain/MtopRequest;Lmtopsdk/mtop/common/MtopNetworkProp;Ljava/net/URL;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    .line 88
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheKey:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCacheManager()Lmtopsdk/mtop/cache/CacheManager;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->cacheManager:Lmtopsdk/mtop/cache/CacheManager;

    return-object v0
.end method

.method public getMtopProxy()Lmtopsdk/mtop/MtopProxy;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->mtopProxy:Lmtopsdk/mtop/MtopProxy;

    return-object v0
.end method

.method public getRequest()Lanetwork/channel/Request;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lmtopsdk/mtop/domain/ResponseSource;->request:Lanetwork/channel/Request;

    return-object v0
.end method
