.class public Lcom/alipay/mobile/common/logging/LogContextImpl;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/logging/api/LogContext;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/InheritableThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/InheritableThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/alipay/mobile/common/logging/api/LogEvent;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/mobile/common/logging/ContextInfo;

.field private i:Lcom/alipay/mobile/common/logging/c;

.field private j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

.field private k:Lcom/alipay/mobile/common/logging/d;

.field private l:J

.field private m:J

.field private n:J

.field private o:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "http://mdap-1-64.test.alipay.net"

    sput-object v0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "http://mdap.alipaylog.com"

    sput-object v0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/lang/InheritableThreadLocal;

    invoke-direct {v0}, Ljava/lang/InheritableThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/InheritableThreadLocal;

    .line 66
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Ljava/util/concurrent/BlockingQueue;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:J

    .line 74
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:J

    .line 75
    iput-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    .line 670
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Map;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/alibaba/motu/CrashCombineUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/CrashCombineUtils$FlatComparator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/CrashFilterUtils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/ImpHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/NativeCrashHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alibaba/motu/NativeExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/behavor/Behavor$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/Performance$Builder;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/LogCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/http/HttpClient;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/impl/TraceLogEvent;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/common/logging/EventCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/LoggingSPCache;->a(Landroid/content/Context;)V

    .line 111
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Landroid/content/Context;)V

    .line 112
    invoke-static {p1}, Lcom/alipay/mobile/common/logging/util/HybridEncryption;->a(Landroid/content/Context;)V

    .line 114
    new-instance v0, Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-direct {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    .line 116
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-static {p1, v0}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    .line 118
    new-instance v0, Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    .line 119
    new-instance v0, Lcom/alipay/mobile/common/logging/d;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-direct {v0, p1, v1}, Lcom/alipay/mobile/common/logging/d;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/logging/ContextInfo;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Lcom/alipay/mobile/common/logging/d;

    .line 120
    return-void
.end method

.method private a(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 292
    if-eqz p1, :cond_0

    .line 293
    monitor-enter p1

    .line 294
    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 295
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/InheritableThreadLocal;->set(Ljava/lang/Object;)V

    .line 299
    return-object v0

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;)Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic a(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "dumpLogToSD fail:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "alipay"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private static a(Ljava/lang/Integer;)Z
    .locals 2

    .prologue
    .line 309
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/appender/AppenderManager;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    return-object v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 673
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 677
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->o:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyUpload:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 680
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "upload"

    const/4 v2, 0x0

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :cond_1
    monitor-exit p0

    return-void

    .line 673
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/alipay/mobile/common/logging/LogContextImpl;)Lcom/alipay/mobile/common/logging/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Lcom/alipay/mobile/common/logging/d;

    return-object v0
.end method

.method private c()Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 304
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 305
    return-object v0
.end method

.method private declared-synchronized d()Lcom/alipay/mobile/common/logging/c;
    .locals 1

    .prologue
    .line 351
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Lcom/alipay/mobile/common/logging/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()Lcom/alipay/mobile/common/logging/ContextInfo;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getLocalParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    :cond_0
    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 11

    .prologue
    const-wide/16 v9, 0x5

    const-wide/16 v7, 0x0

    .line 764
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 767
    if-eqz p1, :cond_1

    .line 768
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b()J

    move-result-wide v2

    .line 769
    invoke-static {}, Lcom/alibaba/motu/CrashCombineUtils;->getCrashTime()J

    move-result-wide v4

    .line 770
    cmp-long v6, v4, v7

    if-lez v6, :cond_0

    cmp-long v6, v2, v7

    if-lez v6, :cond_0

    cmp-long v0, v4, v0

    if-gez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_0

    .line 772
    const-string/jumbo v0, "background"

    .line 792
    :goto_0
    return-object v0

    .line 774
    :cond_0
    const-string/jumbo v0, "unkown"

    goto :goto_0

    .line 779
    :cond_1
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_2

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    sub-long v2, v0, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 781
    const-string/jumbo v0, "background"

    goto :goto_0

    .line 785
    :cond_2
    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_3

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:J

    cmp-long v2, v2, v7

    if-lez v2, :cond_3

    iget-wide v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->l:J

    sub-long/2addr v0, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 787
    const-string/jumbo v0, "background"

    goto :goto_0

    .line 792
    :cond_3
    const-string/jumbo v0, "foreground"

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/alipay/mobile/common/logging/c;)V
    .locals 1

    .prologue
    .line 355
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->i:Lcom/alipay/mobile/common/logging/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    monitor-exit p0

    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    .locals 3

    .prologue
    .line 319
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    if-nez v0, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 323
    :cond_1
    invoke-virtual {p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;->getLevel()Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->OFF:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->isGreaterOrEqual(Lcom/alipay/mobile/common/logging/api/LogEvent$Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->d()Lcom/alipay/mobile/common/logging/c;

    move-result-object v0

    if-nez v0, :cond_3

    .line 328
    monitor-enter p0

    .line 329
    :try_start_0
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->d()Lcom/alipay/mobile/common/logging/c;

    move-result-object v0

    if-nez v0, :cond_2

    .line 330
    new-instance v0, Lcom/alipay/mobile/common/logging/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alipay/mobile/common/logging/c;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;B)V

    .line 331
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/c;->setDaemon(Z)V

    .line 332
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/c;->setName(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/c;->start()V

    .line 335
    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Lcom/alipay/mobile/common/logging/c;)V

    .line 337
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 342
    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "add log event to queue fail"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "AppendWorker add:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Lcom/alipay/mobile/common/logging/appender/AppenderManager;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    return-object v0
.end method

.method public flush(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    if-eqz p2, :cond_0

    .line 227
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "flush"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v1, v2, v4, v3, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 239
    :goto_0
    return-void

    .line 233
    :cond_0
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "flush"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v4, v2, p1}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0
.end method

.method public flush(Z)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Ljava/lang/String;Z)V

    .line 222
    return-void
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 444
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->a:Ljava/lang/ThreadLocal;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 177
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 178
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 180
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogHost()Ljava/lang/String;
    .locals 4

    .prologue
    .line 741
    const/4 v0, 0x0

    .line 743
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 744
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    .line 745
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "logging.gateway"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 752
    :cond_0
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    if-eqz v1, :cond_1

    .line 753
    const-string/jumbo v0, "dev"

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 754
    sget-object v0, Lcom/alipay/mobile/common/logging/LogContextImpl;->b:Ljava/lang/String;

    .line 759
    :cond_1
    :goto_1
    return-object v0

    .line 747
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 756
    :cond_2
    sget-object v0, Lcom/alipay/mobile/common/logging/LogContextImpl;->c:Ljava/lang/String;

    goto :goto_1
.end method

.method public getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProductVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReleaseType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public notifyClientEvent(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "notifyClientEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 469
    const-string/jumbo v0, "viewSwitch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 470
    check-cast p2, Ljava/lang/String;

    .line 471
    if-eqz p2, :cond_0

    const-string/jumbo v0, "viewID"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    const-string/jumbo v0, "refViewID"

    const-string/jumbo v1, "viewID"

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const-string/jumbo v0, "viewID"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    const-string/jumbo v0, "pageSerial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/ContextInfo;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 479
    :cond_1
    const-string/jumbo v0, "subappStart"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 480
    check-cast p2, Ljava/lang/String;

    .line 481
    const-string/jumbo v0, "appID"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 484
    const-string/jumbo v1, "startApp"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 486
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    goto :goto_0

    .line 494
    :cond_2
    const-string/jumbo v0, "subappResume"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 495
    check-cast p2, Ljava/lang/String;

    .line 496
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "appID"

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getContextParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string/jumbo v0, "appID"

    invoke-virtual {p0, v0, p2}, Lcom/alipay/mobile/common/logging/LogContextImpl;->putContextParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    :cond_3
    const-string/jumbo v0, "gotoForeground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 504
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    .line 507
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "gotoBackground"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 510
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "refreshSession"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 513
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "timeout"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 516
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 517
    const-string/jumbo v1, "reportActive"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 518
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 525
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_4
    const-string/jumbo v0, "gotoBackground"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    .line 534
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "gotoBackground"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    iget-wide v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 537
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Z)V

    .line 540
    const-string/jumbo v0, "dev"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "test"

    invoke-virtual {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->getReleaseType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 541
    :cond_5
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_6
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 548
    :cond_7
    const-string/jumbo v0, "clientEventLaunch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 550
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->m:J

    .line 553
    new-instance v0, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v1, "refreshSession"

    sget-object v2, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 556
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "boot"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 559
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 560
    const-string/jumbo v1, "reportActive"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 561
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 568
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 572
    :cond_8
    const-string/jumbo v0, "clientQuit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 574
    invoke-virtual {p0, v5}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Z)V

    .line 577
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 581
    :cond_9
    const-string/jumbo v0, "userLogin"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 582
    check-cast p2, Ljava/lang/String;

    .line 583
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/ContextInfo;->i(Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/ContextInfo;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 588
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 592
    :cond_a
    new-instance v0, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    .line 593
    const-string/jumbo v1, "login"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v0, p2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    .line 596
    new-instance v1, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v2, "alivereport"

    sget-object v3, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v4, Lcom/alipay/mobile/common/logging/render/BehavorRender;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    const-string/jumbo v5, "event"

    invoke-virtual {v4, v5, v0}, Lcom/alipay/mobile/common/logging/render/BehavorRender;->a(Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v6, v3, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->appendLogEvent(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 603
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 608
    :cond_b
    const-string/jumbo v0, "bugReport"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 610
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    const-string/jumbo v1, "feedback"

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->b(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p0, v6}, Lcom/alipay/mobile/common/logging/LogContextImpl;->upload(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 617
    :cond_c
    const-string/jumbo v0, "dumpLogToSD"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 618
    check-cast p2, Ljava/lang/String;

    .line 619
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/common/logging/b;

    invoke-direct {v1, p0, p2}, Lcom/alipay/mobile/common/logging/b;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    const-string/jumbo v2, "dumpLogToSD"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method public putContextParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 125
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "putContextParam:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-void
.end method

.method public putLocalParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "putLocalParam:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 162
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 163
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 165
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 166
    :cond_0
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 167
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 169
    :cond_2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeContextParam(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 138
    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    return-void
.end method

.method public removeLocalParam(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 186
    if-eqz p1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->f:Ljava/lang/InheritableThreadLocal;

    invoke-virtual {v0}, Ljava/lang/InheritableThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 188
    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->c()Ljava/lang/Integer;

    move-result-object v1

    .line 193
    invoke-static {v1}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 194
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 195
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 197
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->a(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->f(Ljava/lang/String;)V

    .line 393
    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->g(Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public setProductId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->d(Ljava/lang/String;)V

    .line 381
    return-void
.end method

.method public setProductVersion(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->e(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method public setReleaseCode(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->c(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public setReleaseType(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->b(Ljava/lang/String;)V

    .line 361
    return-void
.end method

.method public setSourceId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->h(Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 409
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->h:Lcom/alipay/mobile/common/logging/ContextInfo;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/ContextInfo;->i(Ljava/lang/String;)V

    .line 410
    return-void
.end method

.method public setupExceptionHandler(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;I)V
    .locals 1

    .prologue
    .line 459
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->b()V

    .line 460
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a(Lcom/alipay/mobile/common/logging/api/UncaughtExceptionCallback;)V

    .line 461
    return-void
.end method

.method public takedownExceptionHandler()V
    .locals 1

    .prologue
    .line 454
    invoke-static {}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->a()Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/impl/StatisticalExceptionHandler;->c()V

    .line 455
    return-void
.end method

.method public traceNativeCrash(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9

    .prologue
    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "traceNativeCrash, filePath:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", isBoot:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 692
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    const-string/jumbo v2, "com.alipay.mobile.logmonitor.ClientMonitorWakeupReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".monitor.command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 695
    const-string/jumbo v1, "action"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".monitor.action.TRACE_NATIVE_CRASH"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 696
    const-string/jumbo v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 697
    const-string/jumbo v1, "callStack"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 698
    const-string/jumbo v1, "isBoot"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 699
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    if-eqz p3, :cond_3

    .line 706
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/motu/CrashCombineUtils;->getLatestTombAndDelOld(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 712
    :goto_1
    if-eqz p3, :cond_2

    if-eqz v0, :cond_0

    .line 716
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "traceNativeCrash:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 717
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/alibaba/motu/CrashFilterUtils;->isFilterCrash(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 718
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "crash"

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v6, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8, p3}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V

    .line 731
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/logging/LogContextImpl;->flush(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 708
    :cond_3
    :try_start_1
    invoke-static {p1, p2}, Lcom/alibaba/motu/CrashCombineUtils;->UserTrackReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 709
    invoke-static {p1}, Lcom/alibaba/motu/CrashCombineUtils;->deleteFileByPath(Ljava/lang/String;)V

    goto :goto_1

    .line 724
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->j:Lcom/alipay/mobile/common/logging/appender/AppenderManager;

    new-instance v2, Lcom/alipay/mobile/common/logging/api/LogEvent;

    const-string/jumbo v3, "crash"

    const/4 v4, 0x0

    sget-object v5, Lcom/alipay/mobile/common/logging/api/LogEvent$Level;->ERROR:Lcom/alipay/mobile/common/logging/api/LogEvent$Level;

    new-instance v6, Lcom/alipay/mobile/common/logging/render/ExceptionRender;

    invoke-direct {v6, p0}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;)V

    sget-object v7, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CRASH:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v0, v8, p3}, Lcom/alipay/mobile/common/logging/render/ExceptionRender;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/LogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/mobile/common/logging/api/LogEvent$Level;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/common/logging/appender/AppenderManager;->a(Lcom/alipay/mobile/common/logging/api/LogEvent;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public updateLogStrategyCfg(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 284
    invoke-static {}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->a()Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/strategy/LogStrategyManager;->c(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public upload(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 244
    iget-object v1, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 246
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    const-string/jumbo v3, "com.alipay.mobile.logmonitor.ClientMonitorService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".monitor.action.upload.mdaplog"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    const-string/jumbo v2, "logCategory"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->d:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 258
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 260
    const-string/jumbo v1, "start service to upload fail"

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 262
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/alipay/mobile/common/logging/a;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/common/logging/a;-><init>(Lcom/alipay/mobile/common/logging/LogContextImpl;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 271
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")start upload service, isSucecess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->a(Ljava/lang/String;)V

    .line 280
    :goto_1
    return-void

    .line 254
    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/alipay/mobile/common/logging/util/LoggingUtil;->c(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 275
    :cond_2
    if-nez p1, :cond_3

    .line 276
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Lcom/alipay/mobile/common/logging/d;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/logging/d;->a()V

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/common/logging/LogContextImpl;->k:Lcom/alipay/mobile/common/logging/d;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/logging/d;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
