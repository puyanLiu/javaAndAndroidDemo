.class public Lcom/alipay/mobile/nebulacore/Nebula;
.super Ljava/lang/Object;
.source "Nebula.java"


# static fields
.field public static final DEBUG:Z

.field private static a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

.field private static b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

.field private static c:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/alipay/mobile/nebulacore/Nebula;->a()Z

    move-result v0

    sput-boolean v0, Lcom/alipay/mobile/nebulacore/Nebula;->DEBUG:Z

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 70
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 75
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getDispatcher()Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;
    .locals 2

    .prologue
    .line 37
    const-class v1, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    .line 37
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->b:Lcom/alipay/mobile/nebulacore/core/H5EventDispatcher;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 9

    .prologue
    .line 46
    const-class v8, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v8

    .line 47
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 49
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 50
    new-instance v7, Lcom/alipay/mobile/nebulacore/Nebula$1;

    invoke-direct {v7}, Lcom/alipay/mobile/nebulacore/Nebula$1;-><init>()V

    .line 48
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    :cond_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->c:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static getProviderManager()Lcom/alipay/mobile/nebula/provider/H5ProviderManager;
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v0

    .line 65
    return-object v0
.end method

.method public static getService()Lcom/alipay/mobile/nebulacore/api/NebulaService;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/alipay/mobile/nebulacore/Nebula;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;

    invoke-direct {v0}, Lcom/alipay/mobile/nebulacore/core/NebulaServiceImpl;-><init>()V

    sput-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    .line 28
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    sget-object v0, Lcom/alipay/mobile/nebulacore/Nebula;->a:Lcom/alipay/mobile/nebulacore/api/NebulaService;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
