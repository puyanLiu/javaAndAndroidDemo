.class public Lanetwork/channel/monitor/MonitorDelegate;
.super Ljava/lang/Object;
.source "MonitorDelegate.java"


# static fields
.field private static a:Lanetwork/channel/monitor/MonitorDelegate;

.field private static b:Lanetwork/channel/monitor/NetworkQuality;

.field private static c:Lanetwork/channel/monitor/NetworkQuality;


# instance fields
.field private d:Landroid/content/Context;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lanetwork/channel/monitor/INetworkStatusListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Lanetwork/channel/monitor/NetworkQuality;

    sget-object v1, Lanetwork/channel/entity/ConnTypeEnum;->HTTP:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-direct {v0, v1}, Lanetwork/channel/monitor/NetworkQuality;-><init>(Lanetwork/channel/entity/ConnTypeEnum;)V

    sput-object v0, Lanetwork/channel/monitor/MonitorDelegate;->b:Lanetwork/channel/monitor/NetworkQuality;

    .line 21
    new-instance v0, Lanetwork/channel/monitor/NetworkQuality;

    sget-object v1, Lanetwork/channel/entity/ConnTypeEnum;->SPDY:Lanetwork/channel/entity/ConnTypeEnum;

    invoke-direct {v0, v1}, Lanetwork/channel/monitor/NetworkQuality;-><init>(Lanetwork/channel/entity/ConnTypeEnum;)V

    sput-object v0, Lanetwork/channel/monitor/MonitorDelegate;->c:Lanetwork/channel/monitor/NetworkQuality;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lanetwork/channel/monitor/MonitorDelegate;->e:Ljava/util/List;

    .line 37
    return-void
.end method

.method public static declared-synchronized a()Lanetwork/channel/monitor/MonitorDelegate;
    .locals 2

    .prologue
    .line 30
    const-class v1, Lanetwork/channel/monitor/MonitorDelegate;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/monitor/MonitorDelegate;->a:Lanetwork/channel/monitor/MonitorDelegate;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lanetwork/channel/monitor/MonitorDelegate;

    invoke-direct {v0}, Lanetwork/channel/monitor/MonitorDelegate;-><init>()V

    sput-object v0, Lanetwork/channel/monitor/MonitorDelegate;->a:Lanetwork/channel/monitor/MonitorDelegate;

    .line 33
    :cond_0
    sget-object v0, Lanetwork/channel/monitor/MonitorDelegate;->a:Lanetwork/channel/monitor/MonitorDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    iput-object p1, p0, Lanetwork/channel/monitor/MonitorDelegate;->d:Landroid/content/Context;

    .line 26
    iget-object v0, p0, Lanetwork/channel/monitor/MonitorDelegate;->d:Landroid/content/Context;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public final a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 3

    .prologue
    .line 96
    iget-object v1, p0, Lanetwork/channel/monitor/MonitorDelegate;->e:Ljava/util/List;

    monitor-enter v1

    .line 97
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/monitor/MonitorDelegate;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lanetwork/channel/monitor/INetworkStatusListener;

    .line 98
    invoke-interface {v0, p1}, Lanetwork/channel/monitor/INetworkStatusListener;->onNetworkStatusChanged(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final a(Lanetwork/channel/monitor/INetworkStatusListener;)V
    .locals 2

    .prologue
    .line 78
    if-nez p1, :cond_0

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lanetwork/channel/monitor/MonitorDelegate;->e:Ljava/util/List;

    monitor-enter v1

    .line 82
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/monitor/MonitorDelegate;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
