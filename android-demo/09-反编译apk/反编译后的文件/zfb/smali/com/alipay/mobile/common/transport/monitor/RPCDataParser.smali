.class public Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;
.super Ljava/lang/Object;
.source "RPCDataParser.java"


# static fields
.field public static final BOUND_SYMBOL:Ljava/lang/String; = ","

.field public static final PLACE_HOLDER:Ljava/lang/String; = "-"

.field public static final TIME_MS:Ljava/lang/String; = "ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/monitor/DataContainer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 247
    invoke-interface {p2, p1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 251
    const/4 v1, 0x1

    if-ne v1, p3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    return-void
.end method

.method static buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/common/transport/monitor/DataContainer;

    .line 116
    if-nez v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v6, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;

    invoke-direct {v6}, Lcom/alipay/mobile/common/transport/monitor/TransportPerformance;-><init>()V

    .line 123
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 124
    const-string/jumbo v1, "RPC"

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    .line 128
    :goto_1
    const-string/jumbo v1, "1.0"

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam1(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/alipay/mobile/common/transport/context/TransportContext;->getNetType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam2(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v6, p2}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setParam3(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "DNS_TIME"

    invoke-static {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 132
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "TCP_TIME"

    invoke-static {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 133
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "SSL_TIME"

    invoke-static {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 134
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "DATA_TIME"

    invoke-static {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 135
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "ALL_TIME"

    invoke-static {v1, v2, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 136
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "REQ_SIZE"

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 137
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "RES_SIZE"

    invoke-static {v1, v2, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 138
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "UUID"

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->rpcUUID:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 141
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "API"

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_2
    const-string/jumbo v1, "ERROR"

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 149
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "RESULT"

    const-string/jumbo v5, "T"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :try_start_0
    const-string/jumbo v5, "REQ_SIZE"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    :cond_1
    :goto_3
    :try_start_1
    const-string/jumbo v5, "RES_SIZE"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    add-double/2addr v1, v7

    :cond_2
    :goto_4
    cmpl-double v5, v1, v9

    if-lez v5, :cond_a

    :try_start_2
    const-string/jumbo v5, "ALL_TIME"

    invoke-interface {v0, v5}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v7

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_9

    move v1, v3

    .line 155
    :goto_5
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "ERROR"

    invoke-static {v2, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 157
    const-string/jumbo v2, "DOWN"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 159
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "EXT1"

    const-string/jumbo v7, "F"

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :goto_6
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "ATLS_DOWN"

    invoke-static {v2, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 165
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "STALLED_TIME"

    invoke-static {v2, v5, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 166
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "SENT_TIME"

    invoke-static {v2, v5, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 167
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "WAIT_TIME"

    invoke-static {v2, v5, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 168
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "PROXY"

    invoke-static {v2, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 169
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "TARGET_HOST"

    invoke-static {v2, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 170
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "R_COOKIE"

    invoke-static {v2, v5, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 171
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "READ_TIME"

    invoke-static {v2, v5, v0, v4}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 172
    const-string/jumbo v2, "RETRY"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 173
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "RETRY"

    const-string/jumbo v5, "T"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_3
    const-string/jumbo v2, "ORIGHC"

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/transport/monitor/DataContainer;->getDataItem(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "T"

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 176
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "ORIGHC"

    const-string/jumbo v5, "T"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_4
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v4, "TAG"

    invoke-static {v2, v4, v0, v3}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->a(Ljava/util/Map;Ljava/lang/String;Lcom/alipay/mobile/common/transport/monitor/DataContainer;Z)V

    .line 186
    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    .line 187
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getMonitorLogger()Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;->MONITORPOINT_NETWORK:Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/monitor/MonitorLogger;->performance(Lcom/alipay/mobile/common/logging/api/monitor/PerformanceID;Lcom/alipay/mobile/common/logging/api/monitor/Performance;)V

    .line 191
    :cond_6
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 192
    const-string/jumbo v0, "RPC_PERF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 126
    :cond_7
    const-string/jumbo v1, "RSRC"

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->setSubType(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_8
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "URL"

    iget-object v5, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->url:Ljava/lang/String;

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 150
    :catch_0
    move-exception v5

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "RPCDataParser"

    invoke-static {v7, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    :catch_1
    move-exception v5

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "RPCDataParser"

    invoke-static {v7, v5}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_9
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v7, v9

    div-double/2addr v1, v7

    double-to-float v1, v1

    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "BW"

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_a
    move v1, v3

    goto/16 :goto_5

    :catch_2
    move-exception v1

    invoke-static {}, Lcom/alipay/mobile/common/transport/utils/TransportEnvUtil;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isDebugger(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string/jumbo v2, "RPCDataParser"

    invoke-static {v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->printError(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    move v1, v3

    goto/16 :goto_5

    .line 152
    :cond_c
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "RESULT"

    const-string/jumbo v5, "F"

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v4

    .line 153
    goto/16 :goto_5

    .line 161
    :cond_d
    invoke-virtual {v6}, Lcom/alipay/mobile/common/logging/api/monitor/Performance;->getExtPramas()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v5, "EXT1"

    const-string/jumbo v7, "T"

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    .line 195
    :cond_e
    const-string/jumbo v0, "RSRC_PERF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static isLogUp(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 96
    const/4 v1, 0x0

    .line 98
    iget v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    if-lez v2, :cond_1

    .line 99
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 100
    iget v3, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 101
    if-nez v2, :cond_2

    .line 108
    :cond_0
    :goto_0
    return v0

    .line 104
    :cond_1
    iget v2, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->logRandom:I

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static final monitorLog(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 44
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->dcList:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    :try_start_0
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->parserContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    const-string/jumbo v1, "RPCDataParser"

    const-string/jumbo v2, "RPC\u76d1\u63a7\u65e5\u5fd7\u7edf\u8ba1\u5f02\u5e38"

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parserContext(Lcom/alipay/mobile/common/transport/context/TransportContext;)V
    .locals 3

    .prologue
    .line 66
    invoke-static {p0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->isLogUp(Lcom/alipay/mobile/common/transport/context/TransportContext;)Z

    move-result v1

    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/common/transport/context/TransportContext;->api:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    const-string/jumbo v0, "https"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    :try_start_0
    const-string/jumbo v0, "spdy"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    const-string/jumbo v0, "mrpc"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    const-string/jumbo v0, "https"

    invoke-static {p0, v1, v0}, Lcom/alipay/mobile/common/transport/monitor/RPCDataParser;->buildAndWriteLog(Lcom/alipay/mobile/common/transport/context/TransportContext;ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "RPCDataParser"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v2, "RPCDataParser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_2
    move-exception v0

    const-string/jumbo v2, "RPCDataParser"

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
