.class public final Lcom/alipay/mobile/rome/syncsdk/service/a/c;
.super Ljava/lang/Object;
.source "ConnectTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

.field private volatile b:Z


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    .line 50
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    .line 110
    const-string/jumbo v0, "ConnectTask"

    const-string/jumbo v1, "connectByHttps"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string/jumbo v0, "ssl"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/a/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " switch:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 122
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 125
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v3

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string/jumbo v5, "CONN_SSL"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v6

    .line 127
    invoke-static {v5, v3, v0, v4, v6}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 132
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    const-string/jumbo v3, "ConnectTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "connectByHttps: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const-string/jumbo v4, "connectFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "consume:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " e:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string/jumbo v0, "EXP_LL"

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 146
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 143
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 149
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 151
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 153
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f()V

    .line 156
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    .line 158
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V

    .line 160
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isForceStopped()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->isReconnEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    .line 162
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getReconnectInterval()I

    move-result v1

    .line 161
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startDelayedConnectTimer(I)V

    goto/16 :goto_0
.end method

.method private a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V
    .locals 3

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getProtocolVersion()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(I)V

    .line 262
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnectStartTime(J)V

    .line 264
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->c()V

    .line 266
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->d()V

    .line 268
    invoke-virtual {p1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->e()V

    .line 271
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;

    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-direct {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/d/b;-><init>(Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;)V

    .line 272
    invoke-virtual {p1, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->a(Lcom/alipay/mobile/rome/syncsdk/transport/d/a;)V

    .line 274
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 277
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->onConnectSucceeded()V

    .line 280
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->sendRegisterPacket()V

    .line 281
    return-void
.end method

.method private b()V
    .locals 9

    .prologue
    .line 171
    const-string/jumbo v0, "ConnectTask"

    const-string/jumbo v1, "connectBySpdy"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v0, "spdy"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    move-result-object v0

    .line 176
    new-instance v1, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;Landroid/content/Context;)V

    .line 179
    new-instance v2, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;

    move-object v0, v1

    .line 180
    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/transport/b/a;

    .line 179
    invoke-direct {v2, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/a;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/b/a;)V

    .line 181
    invoke-static {v2}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->a(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/ISpdyCallBack;)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " switch:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 186
    :try_start_0
    invoke-direct {p0, v1}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 189
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v3

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 191
    const-string/jumbo v5, "CONN_SPDY"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 193
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v6

    .line 191
    invoke-static {v5, v3, v0, v4, v6}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string/jumbo v3, "ConnectTask"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "connectBySpdy: [ Exception="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    const-string/jumbo v4, "connectFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "consume:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v7}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getConnectStartTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " e:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v0, "EXP_SPDY"

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnSeq()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->createNetAppStatMap()Ljava/util/Map;

    move-result-object v5

    .line 207
    invoke-static {v0, v2, v3, v4, v5}, Lcom/alipay/mobile/rome/syncsdk/util/MonitorSyncLink;->monitorExp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 213
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 215
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->setConnection(Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;)V

    .line 217
    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/a;->f()V

    .line 220
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->addFailCount()V

    .line 223
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 224
    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->d()V

    .line 227
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "spdy"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isMobileNetType(Landroid/content/Context;)Z

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V

    .line 234
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v1

    .line 235
    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkConfig;->getSpdyWaitTimeout(Z)I

    move-result v0

    .line 234
    invoke-virtual {v1, v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startSpdyWaitTimer(I)V

    goto/16 :goto_0

    .line 242
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->getConnAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    const-string/jumbo v0, "switch"

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->setConnAction(Ljava/lang/String;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connectOnRunned()V

    .line 248
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/LongLinkService;->getConnManager()Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->connect()V

    goto/16 :goto_0
.end method

.method private c()Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;
    .locals 4

    .prologue
    .line 288
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->getProxy()Lorg/apache/http/HttpHost;

    move-result-object v1

    .line 291
    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    sget-object v2, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->HTTP:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v3

    .line 293
    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v1

    .line 292
    invoke-direct {v0, v2, v3, v1}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    .line 299
    :goto_0
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 300
    iget-object v2, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getPort()I

    move-result v2

    .line 302
    new-instance v3, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;

    invoke-direct {v3, v1, v2, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;-><init>(Ljava/lang/String;ILcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;)V

    .line 305
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->getLinkAddr()Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/config/LongLinkHostAddr;->getSSLFlag()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/b;->a(Z)V

    .line 307
    return-object v3

    .line 295
    :cond_0
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;->NONE:Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo;-><init>(Lcom/alipay/mobile/rome/syncsdk/transport/connection/proxy/ProxyInfo$ProxyType;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 59
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const-string/jumbo v0, "ConnectTask"

    const-string/jumbo v1, "ConnectTask run: current link is mmtp, return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string/jumbo v0, "ConnectTask"

    const-string/jumbo v1, "ConnectTask run: [ already connected ]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->getInstance()Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/rome/syncsdk/service/SyncTimerManager;->startConnectTimeOutTimer()V

    .line 72
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/config/ReconnCtrl;->AddConnSeq()V

    .line 75
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a:Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;

    invoke-virtual {v1}, Lcom/alipay/mobile/rome/syncsdk/service/ConnManager;->toInitState()V

    .line 80
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->e()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    .line 82
    const-string/jumbo v1, "ConnectTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectTask run[ transChannel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ][spdySwitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string/jumbo v1, "ssl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-boolean v0, p0, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/b/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/transport/a;->c()V

    .line 92
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b()V

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a()V

    goto :goto_0

    .line 97
    :cond_3
    const-string/jumbo v1, "spdy"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->b()V

    goto/16 :goto_0

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/rome/syncsdk/service/a/c;->a()V

    goto/16 :goto_0
.end method
