.class final Lanetwork/channel/monitor/speed/b;
.super Ljava/lang/Object;
.source "SpeedMeter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lanetwork/channel/monitor/speed/SpeedMeter;


# direct methods
.method constructor <init>(Lanetwork/channel/monitor/speed/SpeedMeter;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->c(Lanetwork/channel/monitor/speed/SpeedMeter;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    new-instance v1, Lanetwork/channel/monitor/speed/c;

    invoke-direct {v1, p0}, Lanetwork/channel/monitor/speed/c;-><init>(Lanetwork/channel/monitor/speed/b;)V

    invoke-static {v0, v1}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 168
    iget-object v0, p0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->c(Lanetwork/channel/monitor/speed/SpeedMeter;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
