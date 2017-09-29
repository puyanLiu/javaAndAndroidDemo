.class public Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
.super Ljava/lang/Object;
.source "HttpDns.java"


# static fields
.field public static final REQ_STATUS_BUSY:I = 0x1

.field public static final REQ_STATUS_IDLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HTTP_DNS"


# instance fields
.field private a:Z

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation
.end field

.field public final corePoolSize:I

.field private d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

.field private e:I

.field private f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

.field public fail:Z

.field private g:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

.field private h:Landroid/content/Context;

.field public hashost:Z

.field public httpServerUrl:Ljava/lang/String;

.field public final httpdnsVersion:Ljava/lang/String;

.field public final httpdns_LR:Ljava/lang/String;

.field public httpdns_domain:Ljava/lang/String;

.field public httpdns_port:I

.field public httpdnsconntimeout:I

.field public httpdnstimeout:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field public keepAliveTime:I

.field private final l:Ljava/util/concurrent/locks/ReadWriteLock;

.field public lastNetinfoUpdate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

.field public final max_timer:I

.field public final maximumPoolSize:I

.field public final maxn:I

.field public path:Ljava/lang/String;

.field public pool:Ljava/util/concurrent/ThreadPoolExecutor;

.field public port:I

.field public final queueDeep:I

.field public final schema:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 10

    .prologue
    const/4 v7, 0x4

    const/4 v2, 0x3

    const/4 v9, 0x1

    const/16 v3, 0x3a98

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "http://"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->schema:Ljava/lang/String;

    .line 43
    const-string/jumbo v0, "\n"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_LR:Ljava/lang/String;

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->maxn:I

    .line 45
    const/16 v0, 0x8

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->max_timer:I

    .line 46
    iput v7, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->queueDeep:I

    .line 47
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->corePoolSize:I

    .line 48
    iput v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->maximumPoolSize:I

    .line 69
    iput v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    .line 70
    iput v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsconntimeout:I

    .line 98
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    .line 102
    const-string/jumbo v0, "a-1.6.3"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsVersion:Ljava/lang/String;

    .line 103
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:Ljava/lang/String;

    .line 104
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Ljava/lang/String;

    .line 105
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v9}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    .line 161
    const-string/jumbo v0, "http://amdc.alipay.com/query"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    .line 162
    const-string/jumbo v0, "amdc.alipay.com"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 167
    const-string/jumbo v0, "/query"

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    .line 168
    const/16 v0, 0x50

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    .line 170
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 171
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 173
    iput v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    .line 174
    iput v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsconntimeout:I

    .line 176
    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:I

    .line 177
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->e:I

    .line 179
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    .line 180
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    .line 183
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    .line 185
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/Map;

    .line 187
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 189
    const/16 v0, 0x1e

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->keepAliveTime:I

    .line 190
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    iget v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->keepAliveTime:I

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    new-instance v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DefaultThreadFactory;

    invoke-direct {v7}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DefaultThreadFactory;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardOldestPolicy;-><init>()V

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v9}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 194
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->getLastUpdateTime()J

    move-result-wide v0

    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTPDNS_REQUEST_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "(System.currentTimeMillis() - reqLastTime) < 10m, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    if-ne v0, v6, :cond_1

    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "REQ_STATUS_BUSY, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "\u5f00\u59cb\u6267\u884c\u5f31\u8bf7\u6c42..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    goto :goto_0

    :catchall_1
    move-exception v0

    iput v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    throw v0
.end method

.method static synthetic access$300(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "REQ_STATUS_BUSY, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    iput v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->i:I

    throw v0
.end method

.method public static getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$Singleton;->instance:Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    return-object v0
.end method


# virtual methods
.method public addListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-nez v0, :cond_0

    .line 1168
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setManagerListener()V

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->addHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/HttpDnsEventListener;)V

    .line 1171
    return-void
.end method

.method public addStrongTaskToPool()V
    .locals 1

    .prologue
    .line 871
    sget-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addStrongTaskToPool(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 872
    return-void
.end method

.method public addStrongTaskToPool(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTaskStrong;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 879
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 881
    :cond_0
    return-void
.end method

.method public addTaskToPool()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 812
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$DnsReqTask;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    .line 813
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 815
    :cond_0
    return-void
.end method

.method public delayRequestStrong(I)V
    .locals 1

    .prologue
    .line 830
    sget-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {p0, p1, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(ILcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 831
    return-void
.end method

.method public delayRequestStrong(ILcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 842
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 844
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$2;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;ILcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public deleteIpByHost(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 763
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->deleteLocalIpsByHost(Ljava/lang/String;)Z

    move-result v0

    .line 765
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    const/4 v0, 0x1

    .line 769
    :cond_0
    return v0
.end method

.method public getAllByNameFromInetAddr(Ljava/lang/String;)[Ljava/net/InetAddress;
    .locals 1

    .prologue
    .line 739
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 607
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:Ljava/lang/String;

    .line 608
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 609
    return-object v0
.end method

.method public getDnsLocalManager()Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    return-object v0
.end method

.method public declared-synchronized getDomains()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    if-ne v0, v2, :cond_1

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    :goto_0
    monitor-exit p0

    return-object v0

    .line 336
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    sget-object v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    if-ne v0, v2, :cond_2

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 339
    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    .line 340
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 332
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getGetAllByNameHelper()Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;
    .locals 1

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    if-nez v0, :cond_0

    .line 1216
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->g:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$GetAllByNameHelper;

    return-object v0
.end method

.method public getHosts()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHttpDNSDebug(Z)Z
    .locals 1

    .prologue
    .line 1145
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    return v0
.end method

.method public getIpByHttpDns(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 681
    .line 682
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 683
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    .line 684
    const-string/jumbo v2, ""

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 687
    :goto_0
    if-nez v1, :cond_1

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    :cond_0
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    move-object v0, v1

    .line 704
    :goto_1
    return-object v0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 694
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v2, "httpdns \u8d85\u65f6"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    move-object v0, v1

    goto :goto_1

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 701
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_0
.end method

.method public getIpInfoByHttpDns(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 655
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 656
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    .line 657
    if-nez v0, :cond_1

    .line 658
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getIpInfoByHttpDns :host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " httpdnsIP null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->setHost(Ljava/lang/String;)V

    move-object v0, v1

    .line 671
    :cond_0
    :goto_0
    return-object v0

    .line 663
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    goto :goto_0

    .line 668
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 669
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    :cond_3
    move-object v0, v1

    .line 671
    goto :goto_0
.end method

.method public getIpsByHttpDns(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 714
    .line 715
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    .line 717
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_6

    .line 720
    :cond_0
    :goto_0
    if-nez v1, :cond_2

    .line 721
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 724
    :cond_1
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    move-object v0, v1

    .line 735
    :goto_1
    return-object v0

    .line 726
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->isTimeOut()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 727
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v2, "httpdns \u8d85\u65f6"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    move-object v0, v1

    goto :goto_1

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 732
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 1174
    iget v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->port:I

    return v0
.end method

.method public getmistime()J
    .locals 2

    .prologue
    .line 773
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public httpDnsRequest()V
    .locals 1

    .prologue
    .line 802
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addTaskToPool()V

    .line 805
    :cond_0
    return-void
.end method

.method public httpDnsRequestStrong()V
    .locals 1

    .prologue
    .line 858
    sget-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequestStrong(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 859
    return-void
.end method

.method public httpDnsRequestStrong(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 1

    .prologue
    .line 865
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    .line 866
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->addStrongTaskToPool(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 868
    :cond_0
    return-void
.end method

.method public isSupportSpdy(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 638
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    const/4 v0, 0x1

    .line 645
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put2Cache(Ljava/lang/String;Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;)V
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    return-void
.end method

.method public putIPInfo2Cache(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1196
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1197
    return-void
.end method

.method public requestStrong()V
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 824
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 825
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 826
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequestStrong()V

    goto :goto_0
.end method

.method public requestWeak(Lcom/alipay/mobile/common/transport/httpdns/ThreadType;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 781
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_TIMEOUT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_INIT:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    if-ne p1, v0, :cond_3

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 796
    :cond_1
    :goto_0
    return-void

    .line 785
    :cond_2
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 786
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 787
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V

    goto :goto_0

    .line 788
    :cond_3
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/ThreadType;->HTTPDNSREQUEST_NEWADD:Lcom/alipay/mobile/common/transport/httpdns/ThreadType;

    if-ne p1, v0, :cond_1

    .line 789
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    iput-boolean v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 793
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 794
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V

    goto :goto_0
.end method

.method public declared-synchronized selectUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getHttpdnsServerUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    const-string/jumbo v1, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url from setting : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-static {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->getHostFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 220
    :cond_1
    const-string/jumbo v1, "http://"

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->queryLocalIPByHost(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    move-result-object v0

    .line 225
    if-nez v0, :cond_3

    .line 226
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "httpdnsIP is null,use host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_port:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    const-string/jumbo v1, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    :goto_1
    monitor-exit p0

    return-object v0

    .line 232
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIps()[Ljava/lang/String;

    move-result-object v0

    .line 233
    array-length v2, v0

    .line 235
    if-lez v2, :cond_5

    .line 236
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 237
    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 242
    :goto_2
    const-string/jumbo v2, "HTTP_DNS"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "use ip "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 239
    :cond_4
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 240
    aget-object v0, v0, v2

    goto :goto_2

    .line 245
    :cond_5
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "length <= 0,use host "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto/16 :goto_0

    .line 258
    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "selectUrl exception.use httpServerUrl "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpServerUrl:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sendRequest()V
    .locals 1

    .prologue
    .line 383
    sget-object v0, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->sendRequest(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V

    .line 384
    return-void
.end method

.method public sendRequest(Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;)V
    .locals 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x1

    .line 390
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getFlag()I

    move-result v1

    if-ne v1, v11, :cond_0

    .line 392
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->notifyPush2UpdateInfo(Landroid/content/Context;Z)V

    .line 393
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "sendRequest,workMode: NO_COMPLETE, not allowed httpdns request,notify push to update..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 399
    new-instance v4, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSNONE:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-wide/16 v5, 0x0

    invoke-direct {v4, p0, v1, v5, v6}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V

    move v1, v0

    .line 402
    :goto_1
    const/16 v0, 0x8

    if-ge v1, v0, :cond_9

    .line 405
    :try_start_0
    const-string/jumbo v0, "HTTP_DNS"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "SEND HTTP_DNS REQUEST : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    new-instance v0, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    invoke-direct {v0, v5}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;-><init>(Landroid/content/Context;)V

    .line 408
    iget v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnsconntimeout:I

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->setConntimeout(I)V

    .line 409
    iget v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    invoke-virtual {v0, v5}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->setRequesttimeout(I)V

    .line 412
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->selectUrl()Ljava/lang/String;

    move-result-object v5

    .line 414
    new-instance v6, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;

    invoke-direct {v6}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;-><init>()V

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isInAlipayClient(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    invoke-virtual {v7}, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->setS(I)V

    :cond_1
    sget-object v7, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_ALL:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    if-eq p1, v7, :cond_2

    invoke-virtual {p1}, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->setS(I)V

    const-string/jumbo v7, "HTTP_DNS"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "Request Opt:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getDomains()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->setDomains(Ljava/util/List;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getLogContext()Lcom/alipay/mobile/common/logging/api/LogContext;

    move-result-object v7

    invoke-interface {v7}, Lcom/alipay/mobile/common/logging/api/LogContext;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->setUid(Ljava/lang/String;)V

    const-string/jumbo v8, "HTTP_DNS"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "uid : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getApplicationVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->setClientVersion(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;->setUtdid(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->getStrategyFromServer(Ljava/lang/String;Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;

    move-result-object v5

    .line 415
    if-eqz v5, :cond_d

    .line 416
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/config/downloader/HttpClient;->getResponseCode()I

    move-result v0

    .line 417
    const-string/jumbo v6, "HTTP_DNS"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "responseCode : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/16 v6, 0xc8

    if-ne v0, v6, :cond_b

    .line 420
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v6, "RECEIVED DNS INFO"

    invoke-static {v0, v6}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->getDns()Ljava/util/Map;

    move-result-object v0

    .line 423
    invoke-virtual {v5}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->getConf()Ljava/lang/String;

    move-result-object v5

    .line 427
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;->GET_IPLIST_ONLY:Lcom/alipay/mobile/common/transport/config/downloader/ConfigSelector;

    if-eq p1, v6, :cond_4

    .line 428
    iget-object v6, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->pool:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;

    invoke-direct {v7, p0, v5}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$1;-><init>(Lcom/alipay/mobile/common/transport/httpdns/HttpDns;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 437
    :cond_4
    if-nez v0, :cond_6

    .line 438
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v5, "\u89e3\u6790\u7ed3\u679c\u4e3anull"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alipay/mobile/common/transport/config/downloader/ConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 485
    iput-boolean v11, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 486
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v5, :cond_5

    .line 487
    sget-object v5, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 488
    const-string/jumbo v5, "HTTP_DNS"

    const-string/jumbo v6, "conn_is_null"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    const-string/jumbo v0, "conn_is_null"

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    .line 402
    :cond_5
    :goto_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    .line 442
    :cond_6
    :try_start_1
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 444
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    if-eqz v5, :cond_7

    .line 445
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v5, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->storeIp2Local(Ljava/util/Map;)V

    .line 449
    :cond_7
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->getNetworkInformation()Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 452
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 453
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_8
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    invoke-interface {v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;->saveLastUpdateTime()V
    :try_end_1
    .catch Lcom/alipay/mobile/common/transport/config/downloader/ConnectionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 531
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 532
    new-instance v1, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    const-string/jumbo v2, "HTTPDNS"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    const-string/jumbo v2, "1.0"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "DNS_TIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, "ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "RESULT"

    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "F"

    :goto_3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    const-string/jumbo v2, "mobilegw.alipay.com"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "GW_IP"

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->getIp()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v2, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v2, v1}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    const-string/jumbo v0, "RPC_PERF"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 460
    :cond_b
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 461
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 462
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v0, :cond_5

    .line 463
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 464
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v5, "\u54cd\u5e94\u7801\u9519\u8bef"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    const-string/jumbo v0, "\u54cd\u5e94\u7801\u9519\u8bef"

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    :try_end_2
    .catch Lcom/alipay/mobile/common/transport/config/downloader/ConnectionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_2

    .line 492
    :catch_1
    move-exception v0

    .line 493
    iget-boolean v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v5, :cond_c

    .line 494
    const-string/jumbo v5, "HTTP_DNS"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    :cond_c
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 497
    iput-boolean v11, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 498
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v5, :cond_5

    .line 499
    sget-object v5, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 500
    const-string/jumbo v5, "HTTP_DNS"

    const-string/jumbo v6, "MalformedURLException"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "MalformedURLException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    goto/16 :goto_2

    .line 472
    :cond_d
    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 473
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 474
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v0, :cond_5

    .line 475
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 476
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v5, "\u670d\u52a1\u5668\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string/jumbo v0, "\u670d\u52a1\u5668\u8fd4\u56de\u7a7a\u6570\u636e"

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V
    :try_end_3
    .catch Lcom/alipay/mobile/common/transport/config/downloader/ConnectionException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 504
    :catch_2
    move-exception v0

    .line 505
    iget-boolean v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v5, :cond_e

    .line 506
    const-string/jumbo v5, "HTTP_DNS"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    :cond_e
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 509
    iput-boolean v11, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 510
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v5, :cond_5

    .line 511
    sget-object v5, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 512
    const-string/jumbo v5, "HTTP_DNS"

    const-string/jumbo v6, "IOException"

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 513
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "IOException:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    goto/16 :goto_2

    .line 516
    :catch_3
    move-exception v0

    .line 517
    iget-boolean v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    if-eqz v5, :cond_f

    .line 518
    const-string/jumbo v5, "HTTP_DNS"

    invoke-static {v5, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 520
    :cond_f
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 521
    iput-boolean v11, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->fail:Z

    .line 522
    iget-object v5, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v5, :cond_5

    .line 523
    sget-object v5, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->DNSFAIL:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setMessageType(Lcom/alipay/mobile/common/transport/httpdns/MessageType;)V

    .line 524
    const-string/jumbo v5, "HTTP_DNS"

    const-string/jumbo v6, "Exception "

    invoke-static {v5, v6, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 525
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "Exception:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    goto/16 :goto_2

    .line 532
    :cond_10
    const-string/jumbo v0, "T"

    goto/16 :goto_3
.end method

.method public setApplicationName(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 545
    if-nez p1, :cond_0

    .line 592
    :goto_0
    return-void

    .line 548
    :cond_0
    const-string/jumbo v0, ""

    .line 552
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 556
    if-eqz v1, :cond_2

    .line 557
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 560
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 561
    if-eqz v1, :cond_2

    .line 562
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 565
    if-nez v0, :cond_1

    .line 566
    const-string/jumbo v0, ""

    .line 568
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 570
    if-eqz v1, :cond_2

    .line 571
    const-string/jumbo v2, "\\."

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:Ljava/lang/String;

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 584
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 585
    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:Ljava/lang/String;

    .line 586
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 589
    :cond_3
    invoke-static {p1}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 590
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->k:Ljava/lang/String;

    goto :goto_0

    .line 581
    :catch_0
    move-exception v1

    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "setApplicationName exception"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setApplicationNameVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 596
    if-eqz p1, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 600
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->j:Ljava/lang/String;

    .line 601
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->l:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    .line 90
    return-void
.end method

.method public setDnsLocalManager(Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;)V
    .locals 0

    .prologue
    .line 1178
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->f:Lcom/alipay/mobile/common/transport/httpdns/DnsLocalManager;

    .line 1179
    return-void
.end method

.method public setDnsRequestTimeout(I)V
    .locals 0

    .prologue
    .line 1155
    iput p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdnstimeout:I

    .line 1156
    return-void
.end method

.method public declared-synchronized setErrorByHost(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 743
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-eqz v0, :cond_0

    .line 744
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;

    sget-object v1, Lcom/alipay/mobile/common/transport/httpdns/MessageType;->IPERROR:Lcom/alipay/mobile/common/transport/httpdns/MessageType;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;-><init>(Ljava/lang/Object;Lcom/alipay/mobile/common/transport/httpdns/MessageType;J)V

    .line 745
    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;->setUserData(Ljava/lang/String;)V

    .line 746
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;->fireHttpDnsEventListener(Lcom/alipay/mobile/common/transport/httpdns/DnsEvent;)V

    .line 749
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->deleteIpByHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->HAS_FAIL:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 751
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    :cond_1
    monitor-exit p0

    return-void

    .line 743
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHost(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 309
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 313
    :cond_1
    :try_start_1
    invoke-static {p1}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicHost(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cdn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "mobilegw"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "alipayobjects"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->ADD_NEW:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 317
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_3
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpDnsRequest()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 309
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHosts(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 270
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 274
    :cond_1
    :try_start_1
    const-string/jumbo v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 275
    if-eqz v1, :cond_3

    .line 276
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 277
    aget-object v2, v1, v0

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicHost(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    .line 279
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 280
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    :cond_3
    iget-boolean v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->hashost:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 287
    sget-object v0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;->LIST_INIT:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->d:Lcom/alipay/mobile/common/transport/httpdns/HttpDns$ArgType;

    .line 290
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getDnsClient()Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/AlipayHttpDnsClient;->getFlag()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 291
    invoke-static {}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->getInstance()Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->h:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/transport/ext/ExtTransportOffice;->notifyPush2UpdateInfo(Landroid/content/Context;Z)V

    .line 292
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "setHosts, workMode: NO_COMPLETE, not allowed httpdns request,notify push to update ..."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 270
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :cond_4
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(I)V

    .line 298
    const-string/jumbo v0, "HTTP_DNS"

    const-string/jumbo v1, "Start polling everything"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public setHttpDNSDebug(Z)V
    .locals 0

    .prologue
    .line 1141
    iput-boolean p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->a:Z

    .line 1142
    return-void
.end method

.method public setHttpDnsDomain(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1150
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->httpdns_domain:Ljava/lang/String;

    .line 1151
    return-void
.end method

.method public setManagerListener()V
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    if-nez v0, :cond_0

    .line 1161
    new-instance v0, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    invoke-direct {v0}, Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->manager:Lcom/alipay/mobile/common/transport/httpdns/ManagerListener;

    .line 1163
    :cond_0
    return-void
.end method

.method public updateIPInfo2Cache(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1201
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1202
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1203
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1205
    iget-object v2, p0, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1209
    :catch_0
    move-exception v0

    .line 1210
    const-string/jumbo v1, "HTTP_DNS"

    const-string/jumbo v2, "updateIPInfo2Cache Exception"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1212
    :cond_1
    return-void
.end method
