.class Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$MyLibQuicCallback;
.super Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicCallback;
.source "QuicTestController.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$MyLibQuicCallback;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-direct {p0}, Lcom/alipay/mobile/common/transportext/biz/quic/LibQuicCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public offerLog(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 572
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$MyLibQuicCallback;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v0}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$300(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getConnType(Landroid/content/Context;)I

    move-result v0

    .line 573
    iget-object v1, p0, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController$MyLibQuicCallback;->this$0:Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;

    invoke-static {v1}, Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;->access$300(Lcom/alipay/mobile/common/transportext/biz/quic/QuicTestController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/utils/ConnectionUtil;->getNetworkType(Landroid/content/Context;)I

    move-result v1

    .line 575
    new-instance v2, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v2}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 576
    const-string/jumbo v3, "QUIC"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 577
    const-string/jumbo v3, "1.0"

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 578
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 579
    const-string/jumbo v0, "quic"

    invoke-virtual {v2, v0}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "qlog"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 583
    const-string/jumbo v0, "QUIC_PERF"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 587
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v0

    .line 585
    const-string/jumbo v1, "QuicTestController"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
