.class public Lcom/taobao/wswitch/util/EntityHelper;
.super Ljava/lang/Object;
.source "EntityHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cfg2vcfg(Lcom/taobao/wswitch/model/Config;)Lcom/taobao/wswitch/model/ValidConfig;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 218
    if-nez p0, :cond_0

    move-object v0, v2

    .line 247
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getData()Ljava/util/Map;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move-object v0, v2

    .line 223
    goto :goto_0

    .line 225
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 226
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 228
    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    new-instance v5, Lcom/taobao/wswitch/model/ValidConfigUnit;

    invoke-direct {v5, v1, v0}, Lcom/taobao/wswitch/model/ValidConfigUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-interface {v3, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 235
    :cond_4
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    .line 236
    goto :goto_0

    .line 239
    :cond_5
    new-instance v0, Lcom/taobao/wswitch/model/ValidConfig;

    invoke-direct {v0}, Lcom/taobao/wswitch/model/ValidConfig;-><init>()V

    .line 240
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ValidConfig;->setId(Ljava/lang/Long;)V

    .line 241
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ValidConfig;->setConfigName(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getRefer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ValidConfig;->setRefer(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/wswitch/model/ValidConfig;->setVersion(J)V

    .line 244
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ValidConfig;->setStatus(I)V

    .line 245
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/Config;->getLastUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/wswitch/model/ValidConfig;->setLastUpdateTime(J)V

    .line 246
    invoke-virtual {v0, v3}, Lcom/taobao/wswitch/model/ValidConfig;->setKcfgWithTimerMap(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public static config2string(Lcom/taobao/wswitch/model/Config;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    if-nez p0, :cond_0

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfigKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    const/4 v0, 0x0

    .line 165
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wswitch/business/ConfigContainer;->getmAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 160
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-static {p2}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getConfigKeyValueDetailByJson(Ljava/lang/String;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfigUnit;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 264
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 265
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v4

    .line 308
    :goto_0
    return-object v0

    .line 268
    :cond_0
    invoke-static {p0}, Lcom/taobao/wswitch/util/EntityHelper;->string2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 270
    if-nez v2, :cond_1

    .line 271
    const/4 v0, 0x0

    goto :goto_0

    .line 273
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v4

    .line 274
    goto :goto_0

    .line 276
    :cond_2
    const-string/jumbo v0, "extCfgAttrs"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 278
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 280
    :try_start_0
    new-instance v3, Lcom/taobao/wswitch/util/EntityHelper$2;

    invoke-direct {v3}, Lcom/taobao/wswitch/util/EntityHelper$2;-><init>()V

    const/4 v5, 0x0

    new-array v5, v5, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v3, v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 289
    :goto_1
    const-string/jumbo v0, "extCfgAttrs"

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    .line 292
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 295
    new-instance v6, Lcom/taobao/wswitch/model/ValidConfigUnit;

    invoke-direct {v6, v0, v1}, Lcom/taobao/wswitch/model/ValidConfigUnit;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 299
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v7, 0x3

    if-ge v2, v7, :cond_6

    .line 300
    :cond_4
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string/jumbo v3, "ConfigContainer"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "config ext content to Map action fail!extContent:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ",detail:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v3, v1

    goto :goto_1

    .line 303
    :cond_6
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Lcom/taobao/wswitch/model/ValidConfigUnit;->setRestoreValue(Ljava/lang/String;)V

    .line 304
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/taobao/wswitch/util/EntityHelper;->string2Long(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/taobao/wswitch/model/ValidConfigUnit;->setStartTime(Ljava/lang/Long;)V

    .line 305
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/taobao/wswitch/util/EntityHelper;->string2Long(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/taobao/wswitch/model/ValidConfigUnit;->setStopTime(Ljava/lang/Long;)V

    .line 306
    invoke-interface {v4, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_7
    move-object v0, v4

    .line 308
    goto/16 :goto_0
.end method

.method public static getConfigNameByKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :cond_1
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 144
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 147
    const/4 v0, 0x1

    aget-object v0, v1, v0

    goto :goto_0
.end method

.method public static getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 126
    invoke-static {p1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 130
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/wswitch/business/ConfigContainer;->getmAppKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getIActionNameByAppKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 336
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    const-string/jumbo v0, "com.taobao.taobao.config.update.notify"

    .line 339
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com.taobao.taobao.config.update.notify_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIActionNameByGroupName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "com.taobao.taobao.config.update.notify_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMtopResultDetail(Lmtopsdk/mtop/domain/BaseOutDo;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 95
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v2, "mtop result is null!"

    invoke-static {v0, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 109
    :goto_0
    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Lmtopsdk/mtop/domain/BaseOutDo;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    const-string/jumbo v0, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "mtop data result is null,api is:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmtopsdk/mtop/domain/BaseOutDo;->getApi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 101
    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->string2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    :cond_2
    const-string/jumbo v0, "ConfigContainer"

    const-string/jumbo v2, "mtop data result map is null,api is:"

    invoke-static {v0, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 107
    goto :goto_0

    .line 109
    :cond_3
    const-string/jumbo v1, "result"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public static isDefaultDecryptionNeeded(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 180
    if-gtz p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v0

    .line 183
    :cond_1
    and-int/lit8 v1, p0, 0x2

    .line 184
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 185
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isForceUpdateNeeded(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 191
    if-gtz p0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return v0

    .line 194
    :cond_1
    and-int/lit8 v1, p0, 0x4

    .line 195
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 196
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isReceiptedNeeded(I)Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 169
    if-gtz p0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    and-int/lit8 v2, p0, 0x1

    .line 173
    if-ne v2, v1, :cond_0

    move v0, v1

    .line 174
    goto :goto_0
.end method

.method public static isXcmdGroupEntityLegal(Lcom/taobao/wswitch/model/XcmdGroupEntity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 312
    if-nez p0, :cond_1

    .line 327
    :cond_0
    :goto_0
    return v0

    .line 315
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getR()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 321
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 327
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static result2CfgFileList(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/ConfigFile;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    :goto_0
    return-object v0

    .line 117
    :cond_0
    :try_start_0
    const-class v1, Lcom/taobao/wswitch/model/ConfigFile;

    invoke-static {p0, v1}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 118
    :catch_0
    move-exception v1

    .line 119
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mtop result to ConfigFile list error,result:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",detail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static string2Config(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 54
    :goto_0
    return-object v0

    .line 49
    :cond_0
    :try_start_0
    const-class v0, Lcom/taobao/wswitch/model/Config;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/Config;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "content to Config error,content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 54
    goto :goto_0
.end method

.method private static string2Long(Ljava/lang/String;)Ljava/lang/Long;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 260
    :goto_0
    return-object v0

    .line 255
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 257
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "string to Long value fail! value:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",detail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static string2Map(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 41
    :goto_0
    return-object v0

    .line 35
    :cond_0
    :try_start_0
    new-instance v0, Lcom/taobao/wswitch/util/EntityHelper$1;

    invoke-direct {v0}, Lcom/taobao/wswitch/util/EntityHelper$1;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "string value to map action fail! content:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ",detail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static string2ValidConfig(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {p0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 76
    :goto_0
    return-object v0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/taobao/wswitch/util/EntityHelper;->string2Map(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 63
    goto :goto_0

    .line 65
    :cond_2
    const-string/jumbo v2, "kcfgWithTimerMap"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 66
    invoke-static {p0}, Lcom/taobao/wswitch/util/EntityHelper;->string2Config(Ljava/lang/String;)Lcom/taobao/wswitch/model/Config;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/taobao/wswitch/util/EntityHelper;->cfg2vcfg(Lcom/taobao/wswitch/model/Config;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_3
    :try_start_0
    const-class v0, Lcom/taobao/wswitch/model/ValidConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/ValidConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    .line 72
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "content to ValidConfig error,content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 76
    goto :goto_0
.end method

.method public static toLong(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 351
    if-nez p0, :cond_0

    .line 366
    :goto_0
    return-object p1

    .line 354
    :cond_0
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 355
    check-cast p0, Ljava/lang/Long;

    move-object p1, p0

    goto :goto_0

    .line 356
    :cond_1
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 357
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 358
    :cond_2
    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_3

    .line 359
    check-cast p0, Ljava/lang/Short;

    invoke-virtual {p0}, Ljava/lang/Short;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 360
    :cond_3
    instance-of v0, p0, Ljava/lang/Byte;

    if-eqz v0, :cond_4

    .line 361
    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    .line 364
    :cond_4
    :try_start_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static vcfg2cfg(Lcom/taobao/wswitch/model/ValidConfig;)Lcom/taobao/wswitch/model/Config;
    .locals 3

    .prologue
    .line 202
    if-nez p0, :cond_0

    .line 203
    const/4 v0, 0x0

    .line 214
    :goto_0
    return-object v0

    .line 205
    :cond_0
    new-instance v0, Lcom/taobao/wswitch/model/Config;

    invoke-direct {v0}, Lcom/taobao/wswitch/model/Config;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/Config;->setConfigName(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->selectAllValues()Ljava/util/Map;

    move-result-object v1

    .line 208
    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/Config;->setData(Ljava/util/Map;)V

    .line 209
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/Config;->setId(Ljava/lang/Long;)V

    .line 210
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getLastUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/wswitch/model/Config;->setLastUpdateTime(J)V

    .line 211
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getRefer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/Config;->setRefer(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/Config;->setStatus(I)V

    .line 213
    invoke-virtual {p0}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/taobao/wswitch/model/Config;->setVersion(J)V

    goto :goto_0
.end method

.method public static vconfig2string(Lcom/taobao/wswitch/model/ValidConfig;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
