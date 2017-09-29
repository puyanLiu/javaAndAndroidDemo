.class Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;
.super Ljava/lang/Object;
.source "SpdyLongLinkConnManagerImpl.java"


# instance fields
.field private mInterval:I

.field private volatile mReconnCount:I

.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 893
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    .line 903
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mInterval:I

    .line 1144
    return-void
.end method

.method static synthetic access$1500(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)I
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    return v0
.end method

.method static synthetic access$1508(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)I
    .locals 2

    .prologue
    .line 893
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    return v0
.end method


# virtual methods
.method public clearReconnCount()V
    .locals 1

    .prologue
    .line 906
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    .line 907
    return-void
.end method

.method public connect()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 980
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v0

    .line 983
    :cond_1
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->newInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;

    move-result-object v1

    .line 985
    invoke-virtual {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/http/AndroidSpdyHttpClient;->connect()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 990
    :goto_1
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->hasLiveSpdyConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 991
    const/4 v0, 0x1

    goto :goto_0

    .line 986
    :catch_0
    move-exception v1

    .line 987
    const-string/jumbo v2, "SpdyLongLinkConnManager"

    const-string/jumbo v3, "SpdyLongLinkConnHelper connect fail."

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public hasLiveSpdyConnection()Z
    .locals 2

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->getConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;

    move-result-object v0

    .line 1002
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1003
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/Connection;->getSpdyConnection()Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;

    move-result-object v0

    .line 1004
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/internal/spdy/SpdyConnection;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1005
    const/4 v0, 0x1

    .line 1012
    :goto_0
    return v0

    .line 1007
    :cond_0
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "hasLiveSpdyConnection.  spdyConnection is null or is shutdown!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1010
    :cond_1
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "hasLiveSpdyConnection. connection disconnect."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public isMoreThanMaxRetryCount()Z
    .locals 4

    .prologue
    .line 910
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    int-to-long v0, v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getReconnectionMaxCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 911
    const/4 v0, 0x1

    .line 913
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restore()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1016
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mInterval:I

    .line 1017
    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    .line 1018
    return-void
.end method

.method public submitConnectTask()V
    .locals 6

    .prologue
    const/4 v4, 0x5

    .line 918
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "SpdyLongLinkConnHelper#enqueueConnect  start"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$300(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/transport/utils/NetworkUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "SpdyLongLinkConnHelper#enqueueConnect   network invalid. program return."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$800(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 930
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    const-string/jumbo v1, "SpdyLongLinkConnHelper#enqueueConnect. isCanWork == false "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 964
    :catch_0
    move-exception v0

    .line 965
    const-string/jumbo v1, "SpdyLongLinkConnManager"

    const-string/jumbo v2, "SpdyLongLinkConnHelper#enqueueConnect\u3002  stop submit enqueueConnect task."

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 934
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    int-to-long v0, v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getReconnectionMaxCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 935
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

    goto :goto_0

    .line 941
    :cond_2
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    if-gt v0, v4, :cond_4

    .line 942
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mInterval:I

    .line 948
    :cond_3
    :goto_1
    const-string/jumbo v0, "SpdyLongLinkConnManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SpdyLongLinkConnHelper#enqueueConnect .  mReconnCount=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] mInterval=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    new-instance v0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;)V

    .line 956
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mInterval:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 960
    iget-object v2, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->this$0:Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;->access$700(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v2

    new-instance v3, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;

    invoke-direct {v3, p0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnTimeoutCheckTask;-><init>(Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;Ljava/util/concurrent/ScheduledFuture;)V

    const-wide/16 v4, 0xa

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 962
    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper$ConnectTask;->setConnTimeoutFuture(Ljava/util/concurrent/ScheduledFuture;)V

    goto/16 :goto_0

    .line 943
    :cond_4
    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    if-le v0, v4, :cond_3

    iget v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mReconnCount:I

    int-to-long v0, v0

    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/shared/ExtTransportStrategy;->getReconnectionMaxCount()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    .line 945
    const/4 v0, 0x5

    iput v0, p0, Lcom/alipay/mobile/common/transportext/biz/spdy/longlink/SpdyLongLinkConnManagerImpl$SpdyLongLinkConnHelper;->mInterval:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
