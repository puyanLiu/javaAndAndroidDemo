.class public Lcom/taobao/wswitch/net/request/XcmdSyncRequest;
.super Landroid/os/AsyncTask;
.source "XcmdSyncRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final xcmdResEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/wswitch/model/XcmdGroupEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    .line 38
    return-void
.end method

.method private removeRequestRecord()V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 118
    :cond_0
    return-void

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/XcmdGroupEntity;

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/taobao/wswitch/util/ConfigStatusUtil;->dequeue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 42
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-object v9

    .line 45
    :cond_1
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 46
    iget-object v0, p0, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->xcmdResEntities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/wswitch/model/XcmdGroupEntity;

    .line 47
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getS()I

    move-result v1

    .line 49
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getR()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "SyncXcommandFromCdn"

    invoke-static {v4, v5}, Lcom/taobao/wswitch/util/CdnResourceUtil;->syncCdnResource(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    if-nez v4, :cond_3

    .line 53
    const-string/jumbo v1, "CDN_FILE_DOWNLOAD_FAILED"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->doReceipt(Lcom/taobao/wswitch/model/XcmdGroupEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_3
    invoke-static {v4}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 58
    invoke-static {v1}, Lcom/taobao/wswitch/util/EntityHelper;->isDefaultDecryptionNeeded(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    const-string/jumbo v1, "ConfigContainer"

    const-string/jumbo v5, "invoke security to decryption"

    invoke-static {v1, v5}, Lcom/taobao/wswitch/util/LogUtil;->Logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_4
    invoke-static {v4}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigKeyValueDetailByJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 68
    if-nez v4, :cond_5

    .line 69
    const-string/jumbo v1, "ConfigContainer"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "content map is empty!groupName:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getR()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/taobao/wswitch/util/LogUtil;->Loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v1, "CDN_FILE_PARSE_FAILED"

    invoke-static {v0, v1}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->doReceipt(Lcom/taobao/wswitch/model/XcmdGroupEntity;Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_5
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v1

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/taobao/wswitch/business/ConfigContainer;->getValidConfigByGroupName(Ljava/lang/String;)Lcom/taobao/wswitch/model/ValidConfig;

    move-result-object v1

    .line 80
    if-nez v1, :cond_7

    .line 81
    new-instance v1, Lcom/taobao/wswitch/model/ValidConfig;

    invoke-direct {v1}, Lcom/taobao/wswitch/model/ValidConfig;-><init>()V

    .line 82
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getG()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/taobao/wswitch/model/ValidConfig;->setConfigName(Ljava/lang/String;)V

    .line 86
    :cond_6
    :goto_2
    invoke-static {v0, v9}, Lcom/taobao/wswitch/net/request/ConfigReceiptRequest;->doReceipt(Lcom/taobao/wswitch/model/XcmdGroupEntity;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v4}, Lcom/taobao/wswitch/model/ValidConfig;->setKcfgWithTimerMap(Ljava/util/Map;)V

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/taobao/wswitch/model/ValidConfig;->setLastUpdateTime(J)V

    .line 94
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/taobao/wswitch/model/ValidConfig;->setVersion(J)V

    .line 95
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getS()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/taobao/wswitch/model/ValidConfig;->setStatus(I)V

    .line 96
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getI()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/taobao/wswitch/model/ValidConfig;->setId(Ljava/lang/Long;)V

    .line 97
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getConfigName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/taobao/wswitch/util/EntityHelper;->getConfigNameKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/taobao/wswitch/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 99
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 85
    :cond_7
    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getI()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getI()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getId()Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-nez v5, :cond_6

    :cond_8
    invoke-virtual {v1}, Lcom/taobao/wswitch/model/ValidConfig;->getVersion()J

    move-result-wide v5

    invoke-virtual {v0}, Lcom/taobao/wswitch/model/XcmdGroupEntity;->getV()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    goto :goto_2

    .line 103
    :cond_9
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 104
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taobao/wswitch/business/ConfigContainer;->setConfigs(Ljava/util/Map;)V

    .line 105
    invoke-static {}, Lcom/taobao/wswitch/business/ConfigContainer;->getInstance()Lcom/taobao/wswitch/business/ConfigContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/taobao/wswitch/business/ConfigContainer;->saveConfigs2disk(Ljava/util/Map;)V

    .line 107
    :cond_a
    invoke-direct {p0}, Lcom/taobao/wswitch/net/request/XcmdSyncRequest;->removeRequestRecord()V

    goto/16 :goto_0
.end method
