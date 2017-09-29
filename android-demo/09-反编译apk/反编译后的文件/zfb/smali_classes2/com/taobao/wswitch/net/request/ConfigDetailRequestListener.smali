.class Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;
.super Lmtopsdk/mtop/common/DefaultMtopCallback;
.source "ConfigDetaiInitRequest.java"


# instance fields
.field private loopTime:I

.field private requestGroupNames:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 126
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lmtopsdk/mtop/common/DefaultMtopCallback;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->requestGroupNames:[Ljava/lang/String;

    .line 121
    iput p2, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->loopTime:I

    .line 122
    return-void
.end method

.method private configsUpdate(Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/wswitch/model/ValidConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->requestGroupNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->requestGroupNames:[Ljava/lang/String;

    array-length v0, v0

    if-gtz v0, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/wswitch/business/ConfigContainer;->getUpdatedConfigs(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 218
    if-nez v0, :cond_4

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 226
    :cond_2
    :goto_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 229
    iget-object v4, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->requestGroupNames:[Ljava/lang/String;

    array-length v5, v4

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_5

    aget-object v6, v4, v0

    .line 230
    invoke-static {v6}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 231
    const/4 v7, 0x0

    invoke-static {v7, v6}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v7}, Lcom/taobao/wswitch/util/StringUtils;->isBlank(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 235
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    .line 238
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/taobao/wswitch/business/ConfigContainer;->getValidConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v6

    .line 241
    if-eqz v6, :cond_3

    .line 242
    invoke-virtual {v6, v2, v3}, Lcom/taobao/wswitch/model/ValidConfig;->setLastUpdateTime(J)V

    .line 245
    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 221
    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 222
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/taobao/wswitch/business/ConfigContainer;->setConfigs(Ljava/util/Map;)V

    goto :goto_1

    .line 247
    :cond_5
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/business/ConfigContainer;->saveConfigs2disk(Ljava/util/Map;)V

    goto :goto_0
.end method

.method private getConfigByConfigFile(Lcom/taobao/wswitch/model/ConfigFile;)Lcom/taobao/wswitch/model/ValidConfig;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 251
    if-nez p1, :cond_0

    .line 293
    :goto_0
    return-object v3

    .line 255
    :cond_0
    new-instance v0, Lcom/taobao/wswitch/model/ValidConfig;

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getRefer()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getVersion()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getStatus()I

    move-result v7

    invoke-direct/range {v0 .. v7}, Lcom/taobao/wswitch/model/ValidConfig;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;JI)V

    .line 257
    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getSyncPeriod()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ValidConfig;->setSyncPeriod(Ljava/lang/Long;)V

    .line 259
    :try_start_0
    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getRefer()Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getData()Ljava/lang/String;

    move-result-object v1

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getStatus()I

    move-result v2

    .line 275
    invoke-static {v2}, Lcom/taobao/wswitch/util/EntityHelper;->isDefaultDecryptionNeeded(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    const-string/jumbo v2, "ConfigContainer"

    const-string/jumbo v4, "invoke security to decryption"

    invoke-static {v2, v4}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_2
    invoke-static {v1}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigKeyValueDetailByJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 281
    if-nez v1, :cond_4

    .line 282
    const-string/jumbo v0, "CDN_FILE_PARSE_FAILED"

    invoke-static {p1, v0}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->doReceipt(Lcom/taobao/wswitch/model/ConfigFile;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    const-string/jumbo v1, "ConfigContainer"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getConfigByConfigFile failed,"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ",cfgName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 264
    :cond_3
    :try_start_1
    const-string/jumbo v2, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "get content from cdn:cfgName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/taobao/wswitch/model/ConfigFile;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ";refer:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string/jumbo v2, "SyncReferFromCdn"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/CdnResourceUtil;->syncCdnResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 267
    if-nez v1, :cond_1

    .line 268
    const-string/jumbo v0, "CDN_FILE_DOWNLOAD_FAILED"

    invoke-static {p1, v0}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->doReceipt(Lcom/taobao/wswitch/model/ConfigFile;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 285
    :cond_4
    invoke-virtual {v0, v1}, Lcom/taobao/wswitch/model/ValidConfig;->setKcfgWithTimerMap(Ljava/util/Map;)V

    .line 287
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->doReceipt(Lcom/taobao/wswitch/model/ConfigFile;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v0

    .line 293
    goto/16 :goto_0
.end method


# virtual methods
.method public onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V
    .locals 13

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-super {p0, p1, p2}, Lmtopsdk/mtop/common/DefaultMtopCallback;->onFinished(Lmtopsdk/mtop/common/MtopFinishEvent;Ljava/lang/Object;)V

    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    if-nez v1, :cond_2

    .line 132
    :cond_0
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "invalid MtopFinishEvent or MtopResponse "

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_1
    :goto_0
    return-void

    .line 135
    :cond_2
    invoke-virtual {p1}, Lmtopsdk/mtop/common/MtopFinishEvent;->getMtopResponse()Lmtopsdk/mtop/domain/MtopResponse;

    move-result-object v1

    .line 137
    const-string/jumbo v2, "ConfigContainer"

    const-string/jumbo v3, "init config action on data arrive"

    invoke-static {v2, v3}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->requestGroupNames:[Ljava/lang/String;

    invoke-static {v4, v2, v4}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->dequeue(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    if-nez v1, :cond_3

    .line 140
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v2, "init config request result is null!"

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->isApiSuccess()Z

    move-result v2

    if-nez v2, :cond_7

    .line 144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "::"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    const-string/jumbo v3, "Page_ConfigCenter"

    const/16 v4, 0x7531

    const-string/jumbo v5, "SyncConfigsFromApi"

    invoke-static {v3, v4, v5, v2}, Lcom/taobao/wswitch/util/UserTrackUtil;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v1}, Lmtopsdk/mtop/domain/MtopResponse;->getRetCode()Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string/jumbo v3, "init config request fail,detail\uff1a"

    .line 151
    const-string/jumbo v4, "MC_BIZ_UNREGISTER"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "configToken is unregistered or has missed!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 153
    iget v3, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->loopTime:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->loopTime:I

    .line 154
    iget v3, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->loopTime:I

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 157
    const-string/jumbo v3, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "synConfigTokenRequest retry,loopTime:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->loopTime:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v3, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->requestGroupNames:[Ljava/lang/String;

    iget v4, p0, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->loopTime:I

    invoke-static {v3, v4}, Lcom/taobao/wswitch/net/request/ConfigTokenRequest;->synConfigTokenRequest([Ljava/lang/String;I)V

    .line 166
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; retError:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string/jumbo v2, "ConfigContainer"

    invoke-static {v2, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 159
    :cond_4
    const-string/jumbo v4, "MC_BIZ_NORESULTS"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "there is no available result matched on server side!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 161
    :cond_5
    const-string/jumbo v4, "MC_BIZ_EXCEPTION"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "there is something exception on server!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 164
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "unKnown error occured on server!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 171
    :cond_7
    :try_start_0
    const-class v2, Lcom/taobao/wswitch/model/ConfigMtopResponse;

    invoke-static {v1, v2}, Lmtopsdk/mtop/util/MtopConvert;->mtopResponseToOutputDO(Lmtopsdk/mtop/domain/MtopResponse;Ljava/lang/Class;)Lmtopsdk/mtop/domain/BaseOutDo;

    move-result-object v1

    .line 172
    invoke-static {v1}, Lcom/taobao/wswitch/util/EntityHelper;->getMtopResultDetail(Lmtopsdk/mtop/domain/BaseOutDo;)Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 175
    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 177
    invoke-direct {p0, v7}, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->configsUpdate(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    const-string/jumbo v2, "ConfigContainer"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_8
    :try_start_1
    const-string/jumbo v2, "ConfigContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "mtop result content:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-static {v1}, Lcom/taobao/wswitch/util/EntityHelper;->result2CfgFileList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 183
    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 185
    :cond_9
    invoke-direct {p0, v7}, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->configsUpdate(Ljava/util/Map;)V

    goto/16 :goto_0

    .line 189
    :cond_a
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_b
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/taobao/wswitch/model/ConfigFile;

    move-object v6, v0

    .line 190
    invoke-direct {p0, v6}, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->getConfigByConfigFile(Lcom/taobao/wswitch/model/ConfigFile;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v9

    .line 191
    if-eqz v9, :cond_b

    .line 192
    const/4 v1, 0x0

    invoke-virtual {v9}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 196
    invoke-interface {v7, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string/jumbo v1, "Page_ConfigCenter"

    const/16 v2, 0x714d

    const-string/jumbo v3, "SyncConfigsFromApi"

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "group="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ";version:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v9}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ";data="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcom/taobao/wswitch/model/ConfigFile;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Lcom/taobao/wswitch/util/UserTrackUtil;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 206
    :cond_c
    invoke-direct {p0, v7}, Lcom/taobao/wswitch/net/request/ConfigDetailRequestListener;->configsUpdate(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
