.class public Lcom/alipay/pushsdk/push/connection/i;
.super Lcom/alipay/pushsdk/push/connection/a;
.source "PushConnection.java"


# static fields
.field private static final n:Ljava/lang/String;


# instance fields
.field protected j:Ljava/net/Socket;

.field k:Ljava/lang/String;

.field l:Lcom/alipay/pushsdk/push/connection/f;

.field m:Lcom/alipay/pushsdk/push/connection/d;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:I

.field private s:Ljava/util/Timer;

.field private t:I

.field private u:J

.field private v:Ljava/lang/String;

.field private w:Landroid/content/Context;

.field private x:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alipay/pushsdk/push/connection/i;

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/connection/a;-><init>(Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;)V

    .line 39
    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->k:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->o:Ljava/lang/String;

    .line 41
    iput-boolean v2, p0, Lcom/alipay/pushsdk/push/connection/i;->p:Z

    .line 42
    sget v0, Lcom/alipay/pushsdk/push/e/b;->a:I

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/i;->q:I

    .line 44
    iput v2, p0, Lcom/alipay/pushsdk/push/connection/i;->r:I

    .line 49
    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lcom/alipay/pushsdk/push/connection/i;->t:I

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alipay/pushsdk/push/connection/i;->u:J

    .line 53
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->v:Ljava/lang/String;

    .line 512
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->x:Ljava/lang/Object;

    .line 69
    iput-object p2, p0, Lcom/alipay/pushsdk/push/connection/i;->w:Landroid/content/Context;

    .line 70
    return-void
.end method

.method static synthetic a(Lcom/alipay/pushsdk/push/connection/i;)I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/alipay/pushsdk/push/connection/i;->t:I

    return v0
.end method

.method private c(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 226
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket()... isConnected="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/i;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/i;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Have not connected to server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :catch_0
    move-exception v0

    .line 237
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 238
    sget-object v1, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v1, v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_1
    :goto_0
    return-void

    .line 243
    :cond_2
    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket()... writer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 245
    const-string/jumbo v2, ", reader="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v6, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_3
    invoke-static {v4}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendPacket()... packet.id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/alipay/pushsdk/push/e/a;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v4, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v0, p1}, Lcom/alipay/pushsdk/push/connection/f;->a(Lcom/alipay/pushsdk/push/e/a;)V

    goto :goto_0
.end method

.method static synthetic l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .prologue
    .line 99
    iput p1, p0, Lcom/alipay/pushsdk/push/connection/i;->q:I

    .line 100
    return-void
.end method

.method protected final a(JI)V
    .locals 5

    .prologue
    .line 524
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 530
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/i;->j()V

    .line 532
    :cond_1
    iput p3, p0, Lcom/alipay/pushsdk/push/connection/i;->t:I

    .line 533
    iput-wide p1, p0, Lcom/alipay/pushsdk/push/connection/i;->u:J

    .line 536
    iget-wide v0, p0, Lcom/alipay/pushsdk/push/connection/i;->u:J

    invoke-static {v0, v1}, Lcom/alipay/pushsdk/push/connection/k;->a(J)V

    .line 538
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 539
    :try_start_0
    new-instance v0, Ljava/util/Timer;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    .line 541
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    new-instance v2, Lcom/alipay/pushsdk/push/connection/j;

    invoke-direct {v2, p0}, Lcom/alipay/pushsdk/push/connection/j;-><init>(Lcom/alipay/pushsdk/push/connection/i;)V

    .line 542
    invoke-static {}, Lcom/alipay/pushsdk/push/connection/k;->b()I

    move-result v3

    int-to-long v3, v3

    .line 541
    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 538
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public a(Lcom/alipay/pushsdk/push/b/a;)V
    .locals 11

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 500
    :try_start_0
    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->i:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->c()Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    move-result-object v2

    sget-object v4, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;->required:Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration$SecurityMode;

    if-ne v4, v2, :cond_7

    move v2, v1

    :goto_0
    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->b()I

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    sget-object v7, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "PushConnection_connectUsingConfiguration:host="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v6, 0x3

    sget-object v7, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "PushConnection_connectUsingConfiguration:host="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " port="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/m;->e()J
    :try_end_0
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v6

    :try_start_1
    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f()Ljavax/net/SocketFactory;

    move-result-object v8

    if-nez v8, :cond_8

    const/4 v2, 0x3

    sget-object v3, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v8, "connectUsingConfiguration socketFactory null, use direct."

    invoke-static {v2, v3, v8}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v4, v5}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    :goto_1
    new-instance v8, Lcom/alipay/mobile/common/logging/api/monitor/Performance;

    invoke-direct {v8}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;-><init>()V

    const-string/jumbo v9, "push"

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    const-string/jumbo v9, "connect"

    invoke-virtual {v8, v9}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    const-string/jumbo v9, "conStart"

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v9, v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "socketConTime"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v6, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v3, "handShakeTime"

    const-wide/16 v6, -0x1

    const-wide/16 v9, 0x0

    cmp-long v2, v6, v9

    if-lez v2, :cond_b

    const-string/jumbo v2, "-1"

    :goto_2
    invoke-virtual {v8, v3, v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v2

    sget-object v3, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v2, v3, v8}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    sget-object v3, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v6, "connectUsingConfiguration socket is ready!"

    invoke-static {v2, v3, v6}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_c

    :goto_3
    :try_start_2
    new-instance v1, Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v1, 0x4

    :try_start_3
    invoke-static {v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v3, "initConnection Reader and Writer are created!"

    invoke-static {v1, v2, v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_2
    if-eqz v0, :cond_d

    :try_start_4
    new-instance v0, Lcom/alipay/pushsdk/push/connection/f;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/f;-><init>(Lcom/alipay/pushsdk/push/connection/i;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    new-instance v0, Lcom/alipay/pushsdk/push/connection/d;

    invoke-direct {v0, p0}, Lcom/alipay/pushsdk/push/connection/d;-><init>(Lcom/alipay/pushsdk/push/connection/i;)V

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    :goto_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/f;->b()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->b()V

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x5

    sget-object v1, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "initConnection packetReader="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", and packetWriter="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v2, "initConnection Reader and Writer are ready!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, p0}, Lcom/alipay/pushsdk/push/b/a;->a(Lcom/alipay/pushsdk/push/connection/i;)V
    :try_end_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 501
    :cond_5
    :goto_5
    const/4 v0, 0x3

    :try_start_5
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 502
    const/4 v0, 0x3

    sget-object v1, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v2, "connected successfully"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_5 .. :try_end_5} :catch_1

    .line 508
    :cond_6
    :goto_6
    return-void

    :cond_7
    move v2, v0

    .line 500
    goto/16 :goto_0

    :cond_8
    if-eqz v2, :cond_9

    const/4 v0, 0x2

    :try_start_6
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v2, "connectUsingConfiguration ssl is needed, but it can\'t be supported!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Could not connect to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v1, v0}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_7
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_7 .. :try_end_7} :catch_1

    .line 504
    :catch_1
    move-exception v0

    .line 505
    invoke-interface {p1, p0}, Lcom/alipay/pushsdk/push/b/a;->b(Lcom/alipay/pushsdk/push/connection/i;)V

    .line 506
    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->printErr(Ljava/lang/Throwable;)V

    goto :goto_6

    .line 500
    :cond_9
    :try_start_8
    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->h()Z
    :try_end_8
    .catch Ljava/net/UnknownHostException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_8 .. :try_end_8} :catch_1

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x3

    :try_start_9
    sget-object v8, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v9, "connectUsingConfiguration proxy, createSocket direct try."

    invoke-static {v2, v8, v9}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->g()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_9 .. :try_end_9} :catch_1

    move-result-wide v2

    sub-long/2addr v2, v6

    goto/16 :goto_1

    :catch_2
    move-exception v2

    const/4 v2, 0x3

    :try_start_a
    sget-object v8, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v9, "connectUsingConfiguration proxy, createSocket direct fail, proxy try."

    invoke-static {v2, v8, v9}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x3

    sget-object v8, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v9, "connectUsingConfiguration noProxy, just createSocket."

    invoke-static {v2, v8, v9}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/pushsdk/push/connection/ConnectionConfiguration;->f()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljavax/net/SocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v2

    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    goto/16 :goto_1

    :cond_b
    const-string/jumbo v2, "0"

    goto/16 :goto_2

    :cond_c
    move v0, v1

    goto/16 :goto_3

    :catch_3
    move-exception v0

    new-instance v1, Lcom/alipay/pushsdk/push/connection/PushException;

    const-string/jumbo v2, "Error establishing connection with server."

    invoke-direct {v1, v2, v0}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_a
    .catch Ljava/net/UnknownHostException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_a .. :try_end_a} :catch_1

    :catch_4
    move-exception v0

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error connecting to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v1, v0}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_b
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_b .. :try_end_b} :catch_1

    :cond_d
    :try_start_c
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/f;->a()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->a()V
    :try_end_c
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto/16 :goto_4

    :catch_5
    move-exception v0

    :try_start_d
    throw v0

    :cond_e
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v2, "connectUsingConfiguration socket is failed!"

    invoke-static {v0, v1, v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_f
    const-string/jumbo v0, "create socket is failed."

    new-instance v1, Ljava/lang/Exception;

    const-string/jumbo v2, "socket : null!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/alipay/pushsdk/push/connection/PushException;

    invoke-direct {v2, v0, v1}, Lcom/alipay/pushsdk/push/connection/PushException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_d
    .catch Ljava/net/UnknownHostException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Lcom/alipay/pushsdk/push/connection/PushException; {:try_start_d .. :try_end_d} :catch_1
.end method

.method public a(Lcom/alipay/pushsdk/push/e/a;)V
    .locals 2

    .prologue
    .line 208
    if-nez p1, :cond_0

    .line 209
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/connection/i;->c(Lcom/alipay/pushsdk/push/e/a;)V

    .line 212
    return-void
.end method

.method public a(Lcom/alipay/pushsdk/push/e/a;Z)V
    .locals 2

    .prologue
    .line 215
    invoke-static {}, Lcom/alipay/pushsdk/push/k;->a()Lcom/alipay/pushsdk/push/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    :goto_0
    return-void

    .line 219
    :cond_0
    if-nez p1, :cond_1

    .line 220
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Packet is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :cond_1
    invoke-direct {p0, p1}, Lcom/alipay/pushsdk/push/connection/i;->c(Lcom/alipay/pushsdk/push/e/a;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/alipay/pushsdk/push/connection/i;->v:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 107
    iput p1, p0, Lcom/alipay/pushsdk/push/connection/i;->r:I

    .line 108
    return-void
.end method

.method public final d()Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 84
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "isConnected()...called="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/alipay/pushsdk/push/connection/i;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 86
    const-string/jumbo v2, ", connection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/i;->p:Z

    return v0
.end method

.method public final f()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 92
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v1, "setConnected()...isConnected=true"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/i;->p:Z

    .line 96
    return-void
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/alipay/pushsdk/push/connection/i;->q:I

    return v0
.end method

.method public final h()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 185
    invoke-static {v2}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()... called!"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    if-nez v0, :cond_2

    .line 205
    :cond_1
    :goto_0
    return-void

    .line 194
    :cond_2
    invoke-static {v5}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v1, "shutdown() called..."

    invoke-static {v5, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    iput-boolean v4, p0, Lcom/alipay/pushsdk/push/connection/i;->p:Z

    iput v4, p0, Lcom/alipay/pushsdk/push/connection/i;->r:I

    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/i;->j()V

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->c()V

    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/f;->c()V

    :cond_5
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_6

    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    :goto_2
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    :cond_6
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_7

    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_3
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    :cond_7
    :try_start_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_4
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v1, "shutdown()... Done!"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/f;->d()V

    .line 197
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    .line 198
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->d()V

    .line 199
    iput-object v3, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    .line 204
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v1, "disconnect()... done!"

    invoke-static {v2, v0, v1}, Lcom/alipay/pushsdk/util/log/TraceLoggerUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public final i()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 419
    invoke-static {v3}, Lcom/alipay/pushsdk/util/log/LogUtil;->canLog(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    sget-object v0, Lcom/alipay/pushsdk/push/connection/i;->n:Ljava/lang/String;

    const-string/jumbo v1, "resetConnection()..."

    invoke-static {v3, v0, v1}, Lcom/alipay/pushsdk/util/log/LogUtil;->LogOut(ILjava/lang/String;Ljava/lang/String;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 423
    invoke-virtual {p0}, Lcom/alipay/pushsdk/push/connection/i;->j()V

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    if-eqz v0, :cond_2

    .line 431
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/f;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 434
    :goto_0
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->l:Lcom/alipay/pushsdk/push/connection/f;

    .line 436
    :cond_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    if-eqz v0, :cond_3

    .line 438
    :try_start_1
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    invoke-virtual {v0}, Lcom/alipay/pushsdk/push/connection/d;->c()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    .line 441
    :goto_1
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->m:Lcom/alipay/pushsdk/push/connection/d;

    .line 443
    :cond_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    .line 445
    :try_start_2
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 448
    :goto_2
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->f:Ljava/io/DataInputStream;

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_5

    .line 452
    :try_start_3
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 455
    :goto_3
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->g:Ljava/io/DataOutputStream;

    .line 457
    :cond_5
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    if-eqz v0, :cond_6

    .line 459
    :try_start_4
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 462
    :goto_4
    iput-object v2, p0, Lcom/alipay/pushsdk/push/connection/i;->j:Ljava/net/Socket;

    .line 465
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/pushsdk/push/connection/i;->p:Z

    .line 466
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method protected final j()V
    .locals 2

    .prologue
    .line 515
    iget-object v1, p0, Lcom/alipay/pushsdk/push/connection/i;->x:Ljava/lang/Object;

    monitor-enter v1

    .line 516
    :try_start_0
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 517
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 518
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->s:Ljava/util/Timer;

    .line 515
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final k()Landroid/content/Context;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Lcom/alipay/pushsdk/push/connection/i;->w:Landroid/content/Context;

    return-object v0
.end method
