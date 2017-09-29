.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;",
        ">;"
    }
.end annotation


# instance fields
.field private sendPingThreadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field

.field private startWaitPingResponseTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V
    .locals 0

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private ping(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;
    .locals 3

    .prologue
    .line 1636
    :try_start_0
    invoke-virtual {p1}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    .line 1641
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->ping()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1651
    return-object v0

    .line 1642
    :catch_0
    move-exception v0

    .line 1643
    const-string/jumbo v1, "SpdyLongLinkConnManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1645
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->startWaitPingResponseTask:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->startWaitPingResponseTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1647
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->startWaitPingResponseTask:Ljava/util/concurrent/ScheduledFuture;

    .line 1649
    :cond_0
    throw v0
.end method


# virtual methods
.method public call()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;
    .locals 3

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    new-instance v1, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    invoke-direct {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;-><init>()V

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1202(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    .line 1663
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->pingTime:J

    .line 1664
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    iput-object v1, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    .line 1669
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1670
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpdyPingRunnable exec fail. because connection is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1673
    :cond_2
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v1

    .line 1674
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1675
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SpdyPingRunnable exec fail. because spdyConnection is null or shutdown!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1679
    :cond_4
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$2400(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->startWaitPingResponseTask:Ljava/util/concurrent/ScheduledFuture;

    .line 1681
    invoke-direct {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->ping(Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;)Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    move-result-object v0

    .line 1684
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$2500(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;)V

    .line 1687
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v1

    iput-object v0, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->ping:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    .line 1689
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1629
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->call()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v0

    return-object v0
.end method

.method public setSendPingThreadFuture(Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1655
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyPingRunnable;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    .line 1656
    return-void
.end method
