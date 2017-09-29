.class public Lanetwork/channel/monitor/speed/SpeedMeter;
.super Ljava/lang/Object;
.source "SpeedMeter.java"


# static fields
.field private static a:Lanetwork/channel/monitor/speed/SpeedMeter;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lanetwork/channel/task/Task;

.field private d:Lanetwork/channel/monitor/speed/d;

.field private e:Lanetwork/channel/monitor/INetworkStatusListener;

.field private f:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->b:Landroid/content/Context;

    .line 60
    :cond_0
    new-instance v0, Lanetwork/channel/monitor/speed/d;

    iget-object v1, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanetwork/channel/monitor/speed/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    .line 61
    new-instance v0, Lanetwork/channel/monitor/speed/a;

    invoke-direct {v0, p0}, Lanetwork/channel/monitor/speed/a;-><init>(Lanetwork/channel/monitor/speed/SpeedMeter;)V

    iput-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->e:Lanetwork/channel/monitor/INetworkStatusListener;

    .line 82
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->e:Lanetwork/channel/monitor/INetworkStatusListener;

    invoke-static {v0}, Lanetwork/channel/monitor/Monitor;->a(Lanetwork/channel/monitor/INetworkStatusListener;)V

    .line 83
    return-void
.end method

.method static synthetic a(Lanetwork/channel/monitor/speed/SpeedMeter;Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Ljava/lang/String;)J
    .locals 7

    .prologue
    const-wide/16 v0, -0x1

    .line 183
    const-string/jumbo v2, "ANet.SpeedMeter"

    const-string/jumbo v3, "[startNetworkMeterForUrl]"

    invoke-static {v2, v3}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 186
    new-instance v4, Lanetwork/channel/degrade/DegradableNetwork;

    iget-object v5, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->b:Landroid/content/Context;

    invoke-direct {v4, v5}, Lanetwork/channel/degrade/DegradableNetwork;-><init>(Landroid/content/Context;)V

    .line 187
    new-instance v5, Lanetwork/channel/entity/RequestImpl;

    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lanetwork/channel/entity/RequestImpl;-><init>(Ljava/net/URL;)V

    .line 188
    iget-object v6, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->b:Landroid/content/Context;

    invoke-interface {v4, v5}, Lanetwork/channel/Network;->a(Lanetwork/channel/Request;)Lanetwork/channel/Response;

    move-result-object v4

    .line 189
    if-nez v4, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-wide v0

    .line 192
    :cond_1
    invoke-interface {v4}, Lanetwork/channel/Response;->a()I

    move-result v5

    if-lez v5, :cond_0

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v2, v5, v2

    .line 196
    invoke-interface {v4}, Lanetwork/channel/Response;->e()Lanetwork/channel/statist/StatisticData;

    move-result-object v5

    if-nez v5, :cond_2

    move-wide v0, v2

    .line 197
    goto :goto_0

    .line 199
    :cond_2
    invoke-interface {v4}, Lanetwork/channel/Response;->e()Lanetwork/channel/statist/StatisticData;

    move-result-object v2

    iget-wide v0, v2, Lanetwork/channel/statist/StatisticData;->l:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lanetwork/channel/monitor/speed/SpeedMeter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->f:Landroid/os/AsyncTask;

    return-object p1
.end method

.method public static a()Lanetwork/channel/monitor/speed/SpeedMeter;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lanetwork/channel/monitor/speed/SpeedMeter;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    return-object v0
.end method

.method static synthetic a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 37
    const-class v1, Lanetwork/channel/monitor/speed/SpeedMeter;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/monitor/speed/SpeedMeter;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-direct {v0, p0}, Lanetwork/channel/monitor/speed/SpeedMeter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lanetwork/channel/monitor/speed/SpeedMeter;->a:Lanetwork/channel/monitor/speed/SpeedMeter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic b(Lanetwork/channel/monitor/speed/SpeedMeter;)V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/d;->j()V

    return-void
.end method

.method static synthetic c(Lanetwork/channel/monitor/speed/SpeedMeter;)Landroid/os/AsyncTask;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->f:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic d(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/task/Task;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->c:Lanetwork/channel/task/Task;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 4

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "ANet.SpeedMeter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "[startNetworkMeter]"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/d;->h()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 104
    :cond_1
    :try_start_1
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-static {}, Lanetwork/channel/http/NetworkStatusHelper;->a()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Lanetwork/channel/monitor/speed/d;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V

    .line 105
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->c:Lanetwork/channel/task/Task;

    if-eqz v0, :cond_2

    .line 109
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->c:Lanetwork/channel/task/Task;

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 111
    :cond_2
    new-instance v0, Lanetwork/channel/monitor/speed/b;

    invoke-direct {v0, p0}, Lanetwork/channel/monitor/speed/b;-><init>(Lanetwork/channel/monitor/speed/SpeedMeter;)V

    .line 171
    const-string/jumbo v1, "ANet.SpeedMeter"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mSpeedModel.getMeterDelayTime():"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v3}, Lanetwork/channel/monitor/speed/d;->e()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v1, Lanetwork/channel/task/Task;

    const/4 v2, 0x1

    iget-object v3, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->d:Lanetwork/channel/monitor/speed/d;

    invoke-virtual {v3}, Lanetwork/channel/monitor/speed/d;->e()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lanetwork/channel/task/Task;-><init>(Ljava/lang/Runnable;ZI)V

    iput-object v1, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->c:Lanetwork/channel/task/Task;

    .line 173
    iget-object v0, p0, Lanetwork/channel/monitor/speed/SpeedMeter;->c:Lanetwork/channel/task/Task;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lanetwork/channel/task/DelayTaskMgr;->a(Lanetwork/channel/task/Task;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
