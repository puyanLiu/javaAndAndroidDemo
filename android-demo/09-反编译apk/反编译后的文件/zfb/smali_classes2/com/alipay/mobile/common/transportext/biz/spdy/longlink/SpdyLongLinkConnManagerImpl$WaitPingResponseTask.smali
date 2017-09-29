.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;)V
    .locals 0

    .prologue
    .line 819
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 820
    iput-object p2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    .line 821
    return-void
.end method

.method private reconnect()V
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 878
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 881
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getSpdyLongLinkConnHelper()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->submitConnectTask()V

    .line 882
    return-void
.end method

.method private stopThread()V
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->sendPingThreadFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :cond_0
    :goto_0
    return-void

    .line 865
    :catch_0
    move-exception v0

    .line 866
    const-string/jumbo v1, "SpdyLongLinkConnManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 829
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "WaitPingResponseTask#run.  start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->stopThread()V

    .line 835
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 836
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "WaitPingResponseTask#run.  ping\u4efb\u52a1\u5df2\u7ecf\u53d1\u751f\u53d8\u5316\u3002"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 841
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 842
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "WaitPingResponseTask#run. isCanWork==false"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 847
    :cond_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->ping:Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/Ping;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->mPingRecord:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/models/PingRecord;->responsed:Z

    if-nez v0, :cond_0

    .line 848
    :cond_3
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "WaitPingResponseTask#run.  responsed=false, execute cancelPingTask()."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->closeConnection()V

    .line 851
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$WaitPingResponseTask;->reconnect()V

    goto :goto_0
.end method
