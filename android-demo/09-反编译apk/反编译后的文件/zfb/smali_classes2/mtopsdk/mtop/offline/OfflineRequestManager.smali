.class public Lmtopsdk/mtop/offline/OfflineRequestManager;
.super Ljava/lang/Object;
.source "OfflineRequestManager.java"

# interfaces
.implements Lanetwork/channel/monitor/INetworkStatusListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "mtopsdk.OfflineRequestManager"

.field private static final WAKE_UP_BY_NETWORK_STATUS:I = 0x1

.field private static final WAKE_UP_BY_TIMER:I = 0x2

.field private static final WAKE_UP_TIMER_INTERVAL:J = 0x493e0L

.field private static final WAKE_UP_USER_SWITCH_INTERVAL:J = 0x1d4c0L

.field private static volatile instance:Lmtopsdk/mtop/offline/OfflineRequestManager;


# instance fields
.field private handler:Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

.field private networkStatus:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

.field private offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

.field private singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

.field private wakeUpTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lmtopsdk/mtop/offline/OfflineRequestManager;->instance:Lmtopsdk/mtop/offline/OfflineRequestManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

    .line 34
    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 37
    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->networkStatus:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    .line 75
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequestManager$3;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/offline/OfflineRequestManager$3;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->wakeUpTask:Ljava/lang/Runnable;

    .line 51
    const-string/jumbo v0, "mtopsdk.OfflineRequestManager"

    const-string/jumbo v1, "OfflineRequestManager constructor"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequestQueue;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;-><init>()V

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

    .line 53
    invoke-static {p0}, Lanetwork/channel/monitor/Monitor;->a(Lanetwork/channel/monitor/INetworkStatusListener;)V

    .line 55
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequestManager$1;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/offline/OfflineRequestManager$1;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    .line 64
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmtopsdk/mtop/offline/OfflineRequestManager$2;

    invoke-direct {v1, p0}, Lmtopsdk/mtop/offline/OfflineRequestManager$2;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->handler:Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    return-object v0
.end method

.method static synthetic access$002(Lmtopsdk/mtop/offline/OfflineRequestManager;Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;)Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->handler:Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    return-object p1
.end method

.method static synthetic access$200(Lmtopsdk/mtop/offline/OfflineRequestManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->wakeUpTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/MtopProxy;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->retrieveOfflineRequest()Lmtopsdk/mtop/MtopProxy;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lmtopsdk/mtop/offline/OfflineRequestManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->singleThreadExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$500(Lmtopsdk/mtop/offline/OfflineRequestManager;)Lmtopsdk/mtop/offline/OfflineRequestQueue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

    return-object v0
.end method

.method public static getInstance()Lmtopsdk/mtop/offline/OfflineRequestManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestManager;->instance:Lmtopsdk/mtop/offline/OfflineRequestManager;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Lmtopsdk/mtop/offline/OfflineRequestManager;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestManager;->instance:Lmtopsdk/mtop/offline/OfflineRequestManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequestManager;

    invoke-direct {v0}, Lmtopsdk/mtop/offline/OfflineRequestManager;-><init>()V

    sput-object v0, Lmtopsdk/mtop/offline/OfflineRequestManager;->instance:Lmtopsdk/mtop/offline/OfflineRequestManager;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Lmtopsdk/mtop/offline/OfflineRequestManager;->instance:Lmtopsdk/mtop/offline/OfflineRequestManager;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isQueueEmpty()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

    invoke-virtual {v0}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method private retrieveOfflineRequest()Lmtopsdk/mtop/MtopProxy;
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 163
    :try_start_0
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

    invoke-virtual {v1}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->getRequest()Lmtopsdk/mtop/MtopProxy;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :goto_0
    return-object v0

    .line 165
    :catch_0
    move-exception v1

    .line 167
    const-string/jumbo v2, "mtopsdk.OfflineRequestManager"

    const-string/jumbo v3, "Exception happened in retrieve offline request"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addOfflineRequest(Lmtopsdk/mtop/MtopProxy;)Z
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 150
    :try_start_0
    iget-object v1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->offlineRequestQueue:Lmtopsdk/mtop/offline/OfflineRequestQueue;

    invoke-virtual {v1, p1}, Lmtopsdk/mtop/offline/OfflineRequestQueue;->addRequest(Lmtopsdk/mtop/MtopProxy;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 156
    :goto_0
    return v0

    .line 152
    :catch_0
    move-exception v1

    .line 154
    const-string/jumbo v2, "mtopsdk.OfflineRequestManager"

    const-string/jumbo v3, "Exception happened in add offline request"

    invoke-static {v2, v3, v1}, Lmtopsdk/common/util/TBSdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onNetworkQualityChanged()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public onNetworkStatusChanged(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 4

    .prologue
    .line 180
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->networkStatus:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    if-ne v0, p1, :cond_0

    .line 189
    :goto_0
    return-void

    .line 183
    :cond_0
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->networkStatus:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    invoke-static {v0, p1}, Lmtopsdk/mtop/offline/OfflineHelper;->isNetworkRecover(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lmtopsdk/mtop/offline/OfflineRequestManager;->isQueueEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->handler:Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lmtopsdk/mtop/offline/OfflineRequestManager$OfflineHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 188
    :cond_1
    iput-object p1, p0, Lmtopsdk/mtop/offline/OfflineRequestManager;->networkStatus:Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    goto :goto_0
.end method

.method public userStatusChange()V
    .locals 4

    .prologue
    .line 130
    new-instance v0, Lmtopsdk/mtop/offline/OfflineRequestManager$4;

    invoke-direct {v0, p0}, Lmtopsdk/mtop/offline/OfflineRequestManager$4;-><init>(Lmtopsdk/mtop/offline/OfflineRequestManager;)V

    .line 141
    :try_start_0
    invoke-static {}, Lmtopsdk/mtop/util/MtopSDKThreadPoolExecutorFactory;->getDefaulThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    const-string/jumbo v1, "mtopsdk.OfflineRequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[init]submit userStatusChange to ThreadPool error ---"

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
