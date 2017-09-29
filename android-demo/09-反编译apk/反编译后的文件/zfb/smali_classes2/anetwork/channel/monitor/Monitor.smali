.class public Lanetwork/channel/monitor/Monitor;
.super Ljava/lang/Object;
.source "Monitor.java"


# static fields
.field static a:Lanetwork/channel/monitor/MonitorDelegate;


# direct methods
.method public static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 36
    const-class v1, Lanetwork/channel/monitor/Monitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanetwork/channel/monitor/Monitor;->a:Lanetwork/channel/monitor/MonitorDelegate;

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lanetwork/channel/monitor/MonitorDelegate;->a()Lanetwork/channel/monitor/MonitorDelegate;

    move-result-object v0

    .line 39
    sput-object v0, Lanetwork/channel/monitor/Monitor;->a:Lanetwork/channel/monitor/MonitorDelegate;

    invoke-virtual {v0, p0}, Lanetwork/channel/monitor/MonitorDelegate;->a(Landroid/content/Context;)V

    .line 40
    invoke-static {p0}, Lanetwork/channel/http/NetworkStatusHelper;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    :cond_0
    monitor-exit v1

    return-void

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 1

    .prologue
    .line 128
    sget-object v0, Lanetwork/channel/monitor/Monitor;->a:Lanetwork/channel/monitor/MonitorDelegate;

    if-eqz v0, :cond_0

    .line 129
    sget-object v0, Lanetwork/channel/monitor/Monitor;->a:Lanetwork/channel/monitor/MonitorDelegate;

    invoke-virtual {v0, p0}, Lanetwork/channel/monitor/MonitorDelegate;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V

    .line 131
    :cond_0
    return-void
.end method

.method public static a(Lanetwork/channel/monitor/INetworkStatusListener;)V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lanetwork/channel/monitor/Monitor;->a:Lanetwork/channel/monitor/MonitorDelegate;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lanetwork/channel/monitor/Monitor;->a:Lanetwork/channel/monitor/MonitorDelegate;

    invoke-virtual {v0, p0}, Lanetwork/channel/monitor/MonitorDelegate;->a(Lanetwork/channel/monitor/INetworkStatusListener;)V

    .line 119
    :cond_0
    return-void
.end method
