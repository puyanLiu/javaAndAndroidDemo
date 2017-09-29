.class public final Lcom/alipay/mobile/quinox/classloader/c;
.super Ljava/lang/Object;
.source "InitExecutor.java"


# static fields
.field private static final a:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private c:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

.field private d:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

.field private e:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/d;

    invoke-direct {v0}, Lcom/alipay/mobile/quinox/classloader/d;-><init>()V

    sput-object v0, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;Lcom/alipay/mobile/quinox/bundle/BundlesManager;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    sget-object v1, Lcom/alipay/mobile/quinox/classloader/c;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/concurrent/ExecutorService;

    .line 47
    iput-object p1, p0, Lcom/alipay/mobile/quinox/classloader/c;->c:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/quinox/classloader/c;->d:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    .line 49
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    .line 50
    return-void
.end method

.method static synthetic a(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->c:Lcom/alipay/mobile/quinox/classloader/BootstrapClassLoader;

    return-object v0
.end method

.method static synthetic b(Lcom/alipay/mobile/quinox/classloader/c;)Lcom/alipay/mobile/quinox/bundle/BundlesManager;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->d:Lcom/alipay/mobile/quinox/bundle/BundlesManager;

    return-object v0
.end method

.method static synthetic c(Lcom/alipay/mobile/quinox/classloader/c;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alipay/mobile/quinox/bundle/a;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 3

    .prologue
    .line 90
    if-eqz p1, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 97
    :cond_0
    :try_start_0
    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createBundleClassLoaderSync() -> bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/alipay/mobile/quinox/classloader/e;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/quinox/classloader/e;-><init>(Lcom/alipay/mobile/quinox/classloader/c;Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-virtual {v0}, Lcom/alipay/mobile/quinox/classloader/e;->a()Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-string/jumbo v1, "InitExecutor"

    invoke-static {v1, v0}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    .line 132
    if-nez v0, :cond_0

    move-object v0, v1

    .line 141
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/quinox/classloader/BundleClassLoader;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    const-string/jumbo v2, "InitExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create BundleClassLoader error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    move-object v0, v1

    .line 141
    goto :goto_0

    .line 138
    :catch_1
    move-exception v0

    .line 139
    const-string/jumbo v2, "InitExecutor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "create BundleClassLoader error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/alipay/mobile/quinox/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public final b(Lcom/alipay/mobile/quinox/bundle/a;)V
    .locals 3

    .prologue
    .line 111
    if-nez p1, :cond_1

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "InitExecutor"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "createBundleClassLoaderAsync() -> bundle: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/quinox/utils/TraceLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/quinox/classloader/c;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/alipay/mobile/quinox/classloader/e;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/quinox/classloader/e;-><init>(Lcom/alipay/mobile/quinox/classloader/c;Lcom/alipay/mobile/quinox/bundle/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/alipay/mobile/quinox/classloader/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/alipay/mobile/quinox/bundle/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
