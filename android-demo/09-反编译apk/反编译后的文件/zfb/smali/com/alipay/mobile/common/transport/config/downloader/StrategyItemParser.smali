.class public Lcom/alipay/mobile/common/transport/config/downloader/StrategyItemParser;
.super Ljava/lang/Object;
.source "StrategyItemParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HTTP_DNS_StrategyItemParser"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateStrategyReq(Lcom/alipay/mobile/common/transport/config/downloader/StrategyRequest;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 33
    if-nez p0, :cond_0

    .line 34
    const-string/jumbo v1, "HTTP_DNS_StrategyItemParser"

    const-string/jumbo v2, "request \u4e3anull"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :goto_0
    return-object v0

    .line 39
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 40
    const-string/jumbo v2, "HTTP_DNS_StrategyItemParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8bf7\u6c42\u4f53: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 41
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    const-string/jumbo v1, "HTTP_DNS_StrategyItemParser"

    const-string/jumbo v2, "Json\u8f6c\u6362\u5f02\u5e38"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getUtdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    invoke-static {p0}, Lcom/alipay/mobile/common/info/DeviceInfo;->createInstance(Landroid/content/Context;)Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDnsContent(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyItemParser;->parseStrategyContent(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;->getDns()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parseStrategyContent(Ljava/lang/String;)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyItemParser;->parseStrategyContent(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseStrategyContent(Ljava/lang/String;Z)Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;
    .locals 20

    .prologue
    .line 56
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 58
    if-nez p0, :cond_0

    .line 59
    const-string/jumbo v2, "HTTP_DNS_StrategyItemParser"

    const-string/jumbo v3, "result is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v2, 0x0

    .line 165
    :goto_0
    return-object v2

    .line 62
    :cond_0
    const-string/jumbo v2, "HTTP_DNS_StrategyItemParser"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 66
    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v9

    .line 67
    if-nez v9, :cond_1

    .line 68
    const-string/jumbo v2, "HTTP_DNS_StrategyItemParser"

    const-string/jumbo v3, "jsonResult is null"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v2, 0x0

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v2, "code"

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 77
    const-string/jumbo v2, "dns"

    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v12

    .line 80
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 81
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 84
    :cond_3
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    invoke-virtual {v12}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v5, v2, :cond_8

    .line 86
    invoke-virtual {v12, v5}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 87
    const-string/jumbo v3, "domain"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 88
    const-string/jumbo v3, "ttl"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 90
    const-string/jumbo v3, "ips"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v16

    .line 92
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 93
    :cond_4
    invoke-static {}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getInstance()Lcom/alipay/mobile/common/transport/httpdns/HttpDns;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns;->getHosts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 84
    :cond_5
    :goto_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_1

    .line 97
    :cond_6
    const-string/jumbo v3, ""

    .line 101
    new-instance v17, Ljava/util/ArrayList;

    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 103
    const/4 v2, 0x0

    move v4, v2

    :goto_3
    invoke-virtual/range {v16 .. v16}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_7

    .line 104
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v18

    .line 105
    const-string/jumbo v2, "ip"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    const-string/jumbo v19, "port"

    invoke-virtual/range {v18 .. v19}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v18

    .line 108
    new-instance v19, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;-><init>(Ljava/lang/String;I)V

    .line 110
    invoke-static {v2}, Lcom/alipay/mobile/common/transport/httpdns/DnsUtil;->isLogicIP(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 111
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 103
    :goto_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move-object v3, v2

    goto :goto_3

    .line 119
    :cond_7
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 120
    const-wide/16 v18, 0x3e8

    mul-long v14, v14, v18

    add-long/2addr v14, v7

    .line 125
    new-instance v4, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;

    invoke-direct {v4, v3, v14, v15}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;-><init>(Ljava/lang/String;J)V

    .line 128
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;

    invoke-virtual {v4, v2}, Lcom/alipay/mobile/common/transport/httpdns/HttpDns$HttpdnsIP;->setIpEntries([Lcom/alipay/mobile/common/transport/httpdns/HttpdnsIPEntry;)V

    .line 130
    invoke-interface {v6, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 159
    :catch_0
    move-exception v2

    .line 161
    const-string/jumbo v3, "HTTP_DNS_StrategyItemParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseStrategyContent ,JSONException "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 142
    :cond_8
    const/4 v2, 0x0

    .line 147
    if-nez p1, :cond_a

    .line 149
    :try_start_1
    const-string/jumbo v3, "conf"

    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    .line 151
    if-eqz v3, :cond_9

    .line 152
    const-string/jumbo v2, "android_network_core"

    invoke-virtual {v3, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    :cond_9
    const-string/jumbo v3, "HTTP_DNS_StrategyItemParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ANC Config Str "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v2

    .line 156
    :goto_5
    new-instance v2, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;

    invoke-direct {v2, v10, v11, v6, v3}, Lcom/alipay/mobile/common/transport/config/downloader/StrategyResponse;-><init>(JLjava/util/Map;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 163
    :catch_1
    move-exception v2

    .line 164
    const-string/jumbo v3, "HTTP_DNS_StrategyItemParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "parseStrategyContent ,Exception  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move-object v3, v2

    goto :goto_5

    :cond_b
    move-object v2, v3

    goto/16 :goto_4
.end method
