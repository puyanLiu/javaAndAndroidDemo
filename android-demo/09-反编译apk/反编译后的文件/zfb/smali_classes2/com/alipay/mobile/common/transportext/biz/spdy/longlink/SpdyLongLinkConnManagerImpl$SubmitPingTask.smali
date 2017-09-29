.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V
    .locals 0

    .prologue
    .line 744
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 748
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->run(Z)V

    .line 749
    return-void
.end method

.method public run(Z)V
    .locals 6

    .prologue
    const-wide/16 v0, 0x1

    .line 752
    const-string/jumbo v2, "SpdyLongLinkConnManager"

    const-string/jumbo v3, "SubmitPingTask#run. start"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 756
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "SubmitPingTask#run. Network invalid !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    :goto_0
    return-void

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 761
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "SubmitPingTask#run. isCanWork == false!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 765
    :cond_1
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    monitor-enter v2

    .line 767
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$400(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-eqz v3, :cond_2

    .line 768
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 772
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 771
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$900(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 772
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$100(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$002(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;J)J

    .line 779
    if-nez p1, :cond_3

    .line 781
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getPingInterval(Landroid/content/Context;)J

    move-result-wide v2

    .line 783
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_4

    .line 788
    :cond_3
    :goto_1
    const-string/jumbo v2, "SpdyLongLinkConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SubmitPingTask#run. submit schedule, interval:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :try_start_2
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v4}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1100(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$PingTask;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v0, v1, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1002(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 799
    :goto_2
    const-string/jumbo v2, "SpdyLongLinkConnManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "SubmitPingTask#run.  scheduling  heartbeat task ,  interval="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    :catch_0
    move-exception v2

    .line 795
    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SubmitPingTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 796
    const-string/jumbo v3, "SpdyLongLinkConnManager"

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    move-wide v0, v2

    goto :goto_1
.end method
