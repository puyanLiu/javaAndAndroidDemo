.class Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;
.super Landroid/content/BroadcastReceiver;
.source "NetworkManager.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 70
    if-nez p2, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "monitor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onReceive at: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", Intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "context onreceive :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-static {v0, p1}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->access$100(Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;Landroid/content/Context;)I

    move-result v0

    .line 78
    if-ne v0, v6, :cond_0

    .line 80
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "NetworkManager#onReceive \u7f51\u7edc\u53d8\u5316"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    iget-boolean v0, v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->neverReceive:Z

    if-eqz v0, :cond_2

    .line 82
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "NetworkManager#onReceive Ignore first receive!"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->neverReceive:Z

    goto :goto_0

    .line 88
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getInstance()Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;->HTTPDNS_REQUEST_STRONG_INTERVAL:Lcom/alipay/mobile/common/transport/config/TransportConfigureItem;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/transport/config/TransportConfigureManager;->getLongValue(Lcom/alipay/mobile/common/utils/config/fmk/ConfigureItem;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager$1;->this$0:Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->getNetworkInformation()Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string/jumbo v2, "HTTP_DNS_NetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "netInfo-->"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",time-->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v2

    iget-object v2, v2, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->lastNetinfoUpdate:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 97
    if-eqz v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_3

    .line 98
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "\u7f51\u7edc1-\u65e0\u7f51-\u7f51\u7edc1\u60c5\u51b5\uff0c\u4e14\u95f4\u9694\u5c0f\u4e8e5\u5206\u949f\uff0c\u4e0d\u8fdb\u884cdns\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "HTTP_DNS_NetManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "httpdns exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    :cond_3
    sget v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    int-to-long v0, v0

    const-wide/16 v2, 0xa

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 106
    sget-wide v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeBegin:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_5

    .line 107
    sput v6, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeBegin:J

    .line 109
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "set changeCount 1"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "httpdns network change, changeCount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/alipay/mobile/common/transport/httpdns/NetworkManager;->changeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "\u7f51\u7edc\u5207\u6362\uff0c\u53d1\u9001\u5f3a\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->delayRequestStrong(I)V

    goto/16 :goto_0

    .line 112
    :cond_5
    const-string/jumbo v0, "HTTP_DNS_NetManager"

    const-string/jumbo v1, "exceeds changeCount 10"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
