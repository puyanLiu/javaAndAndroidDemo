.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mConnTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)V
    .locals 0

    .prologue
    .line 1031
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1032
    return-void
.end method

.method private innerConnect()Z
    .locals 4

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1110
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->hasLiveSpdyConnection()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "innerConnect\u3002hasLiveSpdyConnection is true."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1112
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x1

    .line 1132
    :goto_0
    return v0

    .line 1114
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->closeConnection()V

    .line 1118
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getReconnectionMaxCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 1119
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1120
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ConnectTask#run \u91cd\u8fde\u6b21\u6570\u8d85\u9650\u3002 mReconnCount > "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getReconnectionMaxCount()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", return."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1125
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    const/4 v0, 0x0

    goto :goto_0

    .line 1128
    :cond_2
    :try_start_2
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "start connect !"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->access$1508(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)I

    .line 1130
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->connect()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    .line 1132
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1900(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1040
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1044
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run network invalid. program return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1104
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run. isCanWork==false."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1056
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->hasLiveSpdyConnection()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1400(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 1058
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run \u8fde\u63a5\u5df2\u7ecf\u5b58\u5728\uff0c\u65e0\u9700\u5efa\u8fde!! "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    const-string/jumbo v1, "SpdyLongLinkConnManager"

    const-string/jumbo v2, "ConnectTask#run Exception "

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1062
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->innerConnect()Z

    move-result v0

    .line 1064
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v1, v1, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1065
    const-string/jumbo v1, "SpdyLongLinkConnManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ConnectTask#run.  reconnect count = ["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-static {v3}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_3
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->mConnTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_4

    .line 1072
    :try_start_2
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->mConnTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 1073
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->mConnTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1077
    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    .line 1078
    :try_start_3
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run \u91cd\u8fde\u6210\u529f\uff0c\u51c6\u5907\u53d1\u8d77\u5fc3\u8df3\u3002"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1080
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1600(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    .line 1081
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->restore()V

    goto/16 :goto_0

    .line 1083
    :cond_5
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run \u91cd\u8fde\u5931\u8d25."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1085
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1700(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$AppVisibleReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$AppVisibleReceiver;->isAppVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$1800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$ScreenReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$ScreenReceiver;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1088
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run \u91cd\u65b0\u53d1\u8d77\u91cd\u8fde\u8bf7\u6c42."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getSpdyLongLinkConnHelper()Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->submitConnectTask()V

    goto/16 :goto_0

    .line 1092
    :cond_6
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run \u624b\u673a\u706d\u5c4f\u6216\u8005\u94b1\u5305\u538b\u540e\u53f0\uff0c\u4e0d\u518d\u53d1\u8d77\u91cd\u8fde."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    :goto_2
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->restore()V

    .line 1099
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->this$1:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;

    iget-object v0, v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$200(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V

    goto/16 :goto_0

    .line 1095
    :cond_7
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "ConnectTask#run \u7f51\u7edc\u65e0\u6cd5\u8fde\u63a5\uff0c\u4e0d\u518d\u53d1\u8d77\u91cd\u8fde."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public setConnTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->mConnTimeoutFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 1138
    return-void
.end method
