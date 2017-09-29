.class final Lanetwork/channel/monitor/speed/c;
.super Landroid/os/AsyncTask;
.source "SpeedMeter.java"


# annotations
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


# instance fields
.field final synthetic a:Lanetwork/channel/monitor/speed/b;


# direct methods
.method constructor <init>(Lanetwork/channel/monitor/speed/b;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 131
    const-string/jumbo v0, "ANet.SpeedMeter"

    const-string/jumbo v1, "[doInBackground]"

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lmtopsdk/xstate/XState;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->d(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/task/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->d(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/task/Task;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/task/Task;->a()V

    .line 165
    :cond_0
    :goto_0
    return-object v6

    .line 138
    :cond_1
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->d(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/task/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->d(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/task/Task;

    move-result-object v0

    iget-boolean v0, v0, Lanetwork/channel/task/Task;->d:Z

    if-nez v0, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v1, v1, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/monitor/speed/d;->b(J)V

    .line 144
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v1, v1, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/monitor/speed/d;->a(J)V

    .line 145
    const-string/jumbo v0, "ANet.SpeedMeter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSpeedModel. Speed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string/jumbo v0, "ANet.SpeedMeter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSpeedModel. Speed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->a()Lanetwork/channel/monitor/speed/NetworkSpeed;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " network status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->i()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/d;->c()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v0

    invoke-virtual {v0}, Lanetwork/channel/monitor/speed/d;->d()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    .line 148
    :cond_2
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v1, v1, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/monitor/speed/d;->b(J)V

    .line 149
    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v0

    iget-object v1, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v1, v1, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lanetwork/channel/monitor/speed/d;->a(J)V

    .line 150
    const-string/jumbo v0, "ANet.SpeedMeter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSpeedModel. Retry Speed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v0, "ANet.SpeedMeter"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mSpeedModel. Retry Speed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->a()Lanetwork/channel/monitor/speed/NetworkSpeed;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " network status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->i()Lanetwork/channel/http/NetworkStatusHelper$NetworkStatus;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmtopsdk/common/util/TBSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    :cond_3
    :try_start_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 155
    const-string/jumbo v0, "mtopSpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->d()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string/jumbo v0, "cdnSpeed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v2, v2, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v2}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v2

    invoke-virtual {v2}, Lanetwork/channel/monitor/speed/d;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string/jumbo v0, "Page_NetworkSpeed"

    const v1, 0xfe5e

    const-string/jumbo v2, "network_type"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v4, v4, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v4}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;)Lanetwork/channel/monitor/speed/d;

    move-result-object v4

    invoke-virtual {v4}, Lanetwork/channel/monitor/speed/d;->a()Lanetwork/channel/monitor/speed/NetworkSpeed;

    move-result-object v4

    invoke-virtual {v4}, Lanetwork/channel/monitor/speed/NetworkSpeed;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-static/range {v0 .. v5}, Lmtopsdk/common/ut/util/UTAdapterUtil;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 162
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lanetwork/channel/monitor/speed/c;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 118
    check-cast p1, Ljava/lang/Void;

    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    invoke-static {v0}, Lanetwork/channel/monitor/speed/SpeedMeter;->c(Lanetwork/channel/monitor/speed/SpeedMeter;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lanetwork/channel/monitor/speed/c;->a:Lanetwork/channel/monitor/speed/b;

    iget-object v0, v0, Lanetwork/channel/monitor/speed/b;->a:Lanetwork/channel/monitor/speed/SpeedMeter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lanetwork/channel/monitor/speed/SpeedMeter;->a(Lanetwork/channel/monitor/speed/SpeedMeter;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    :cond_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
