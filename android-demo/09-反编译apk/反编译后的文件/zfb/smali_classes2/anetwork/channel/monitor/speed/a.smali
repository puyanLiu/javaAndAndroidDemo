.class final Lanetwork/channel/monitor/speed/a;
.super Ljava/lang/Object;
.source "SpeedMeter.java"

# interfaces
.implements Lanetwork/channel/monitor/INetworkStatusListener;


# instance fields
.field final synthetic a:Lanetwork/channel/monitor/speed/SpeedMeter;


# direct methods
.method constructor <init>(Lanetwork/channel/monitor/speed/SpeedMeter;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lanetwork/channel/monitor/speed/a;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNetworkStatusChanged(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V
    .locals 2

    .prologue
    .line 64
    invoke-static {}, Lanetwork/channel/monitor/speed/SpeedMeter;->a()Lanetwork/channel/monitor/speed/SpeedMeter;

    move-result-object v0

    .line 65
    iget-object v1, p0, Lanetwork/channel/monitor/speed/a;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v1}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lanetwork/channel/monitor/speed/a;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v1}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v1

    invoke-virtual {v1, p1}, Lanetwork/channel/monitor/speed/d;->a(Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;)V

    .line 68
    :cond_0
    invoke-static {}, Lmtopsdk/xstate/XState;->h()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 71
    :cond_2
    if-eqz v0, :cond_1

    .line 72
    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->b(Lanetwork/channel/monitor/speed/SpeedMeter;)V

    .line 73
    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->b()V

    goto :goto_0
.end method
